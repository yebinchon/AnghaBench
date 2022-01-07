; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_update_hv_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_update_hv_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@VMX_PREEMPTION_TIMER_VALUE = common dso_local global i32 0, align 4
@cpu_preemption_timer_multi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_update_hv_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_update_hv_timer(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %3, align 8
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %9 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @VMX_PREEMPTION_TIMER_VALUE, align 4
  %14 = call i32 @vmcs_write32(i32 %13, i32 0)
  %15 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %21 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = call i32 (...) @rdtsc()
  store i32 %25, i32* %4, align 4
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %27 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %33 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @cpu_preemption_timer_multi, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* @VMX_PREEMPTION_TIMER_VALUE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @vmcs_write32(i32 %41, i32 %42)
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %63

48:                                               ; preds = %19
  %49 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %50 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @VMX_PREEMPTION_TIMER_VALUE, align 4
  %57 = call i32 @vmcs_write32(i32 %56, i32 -1)
  %58 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %59 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %48
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63, %12
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @rdtsc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
