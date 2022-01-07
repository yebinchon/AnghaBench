; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_vcpu_load_hv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_vcpu_load_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, %struct.kvmppc_vcore* }
%struct.kvmppc_vcore = type { i64, %struct.kvm_vcpu* }

@VCORE_SLEEPING = common dso_local global i64 0, align 8
@KVMPPC_VCPU_BUSY_IN_HOST = common dso_local global i64 0, align 8
@TB_NIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @kvmppc_core_vcpu_load_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_core_vcpu_load_hv(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_vcore*, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  %10 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  store %struct.kvmppc_vcore* %10, %struct.kvmppc_vcore** %5, align 8
  %11 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %12 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %11, i32 0, i32 1
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = icmp eq %struct.kvm_vcpu* %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %18 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VCORE_SLEEPING, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %24 = call i32 @kvmppc_core_end_stolen(%struct.kvmppc_vcore* %23)
  br label %25

25:                                               ; preds = %22, %16, %2
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @KVMPPC_VCPU_BUSY_IN_HOST, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %25
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TB_NIL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %37
  %45 = call i64 (...) @mftb()
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %45, %49
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %50
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load i64, i64* @TB_NIL, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %44, %37, %25
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  ret void
}

declare dso_local i32 @kvmppc_core_end_stolen(%struct.kvmppc_vcore*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mftb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
