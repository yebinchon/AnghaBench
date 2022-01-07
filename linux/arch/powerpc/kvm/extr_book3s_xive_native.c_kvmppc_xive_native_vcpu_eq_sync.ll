; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_vcpu_eq_sync.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_vcpu_eq_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.kvmppc_xive_vcpu* }
%struct.kvmppc_xive_vcpu = type { %struct.xive_q* }
%struct.xive_q = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@KVMPPC_XIVE_Q_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvmppc_xive_native_vcpu_eq_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_xive_native_vcpu_eq_sync(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_xive_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xive_q*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %10, align 8
  store %struct.kvmppc_xive_vcpu* %11, %struct.kvmppc_xive_vcpu** %4, align 8
  %12 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %4, align 8
  %13 = icmp ne %struct.kvmppc_xive_vcpu* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %54, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @KVMPPC_XIVE_Q_COUNT, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %23, i32 0, i32 0
  %25 = load %struct.xive_q*, %struct.xive_q** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %25, i64 %27
  store %struct.xive_q* %28, %struct.xive_q** %7, align 8
  %29 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %30 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %54

34:                                               ; preds = %22
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @srcu_read_lock(i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %44 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gpa_to_gfn(i32 %45)
  %47 = call i32 @mark_page_dirty(%struct.TYPE_4__* %42, i32 %46)
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @srcu_read_unlock(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %34, %33
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %18

57:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @mark_page_dirty(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @gpa_to_gfn(i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
