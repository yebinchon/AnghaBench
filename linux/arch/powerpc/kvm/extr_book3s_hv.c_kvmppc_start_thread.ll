; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_start_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paca_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.kvmppc_vcore*, i64, %struct.kvm_vcpu* }
%struct.kvmppc_vcore = type { i32, %struct.kvm* }
%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@paca_ptrs = common dso_local global %struct.paca_struct** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvmppc_vcore*)* @kvmppc_start_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_start_thread(%struct.kvm_vcpu* %0, %struct.kvmppc_vcore* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_vcore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.paca_struct*, align 8
  %7 = alloca %struct.kvm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvmppc_vcore* %1, %struct.kvmppc_vcore** %4, align 8
  %8 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %9 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %8, i32 0, i32 1
  %10 = load %struct.kvm*, %struct.kvm** %9, align 8
  store %struct.kvm* %10, %struct.kvm** %7, align 8
  %11 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %12 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = icmp ne %struct.kvm_vcpu* %14, null
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = call i32 @hrtimer_try_to_cancel(i32* %25)
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %22, %16
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %40 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.kvm*, %struct.kvm** %7, align 8
  %50 = getelementptr inbounds %struct.kvm, %struct.kvm* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @cpumask_set_cpu(i32 %48, i32* %51)
  br label %53

53:                                               ; preds = %30, %2
  %54 = load %struct.paca_struct**, %struct.paca_struct*** @paca_ptrs, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.paca_struct*, %struct.paca_struct** %54, i64 %56
  %58 = load %struct.paca_struct*, %struct.paca_struct** %57, align 8
  store %struct.paca_struct* %58, %struct.paca_struct** %6, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = load %struct.paca_struct*, %struct.paca_struct** %6, align 8
  %61 = getelementptr inbounds %struct.paca_struct, %struct.paca_struct* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store %struct.kvm_vcpu* %59, %struct.kvm_vcpu** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %65 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = load %struct.paca_struct*, %struct.paca_struct** %6, align 8
  %69 = getelementptr inbounds %struct.paca_struct, %struct.paca_struct* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.paca_struct*, %struct.paca_struct** %6, align 8
  %72 = getelementptr inbounds %struct.paca_struct, %struct.paca_struct* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = call i32 (...) @smp_wmb()
  %75 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %76 = load %struct.paca_struct*, %struct.paca_struct** %6, align 8
  %77 = getelementptr inbounds %struct.paca_struct, %struct.paca_struct* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store %struct.kvmppc_vcore* %75, %struct.kvmppc_vcore** %78, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (...) @smp_processor_id()
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %53
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @kvmppc_ipi_thread(i32 %83)
  br label %85

85:                                               ; preds = %82, %53
  ret void
}

declare dso_local i32 @hrtimer_try_to_cancel(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @kvmppc_ipi_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
