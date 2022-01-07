; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_enter_vmx_operation.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_enter_vmx_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@VMCS12_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@enable_shadow_vmcs = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4
@vmx_preemption_timer_fn = common dso_local global i32 0, align 4
@pt_mode = common dso_local global i64 0, align 8
@PT_MODE_HOST_GUEST = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @enter_vmx_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enter_vmx_operation(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %4, align 8
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %9 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = call i32 @alloc_loaded_vmcs(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %99

15:                                               ; preds = %1
  %16 = load i32, i32* @VMCS12_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %18 = call i8* @kzalloc(i32 %16, i32 %17)
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store i8* %18, i8** %21, align 8
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %23 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %94

28:                                               ; preds = %15
  %29 = load i32, i32* @VMCS12_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  %32 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %33 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store i8* %31, i8** %34, align 8
  %35 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %36 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %88

41:                                               ; preds = %28
  %42 = load i64, i64* @enable_shadow_vmcs, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = call i32 @alloc_shadow_vmcs(%struct.kvm_vcpu* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %82

49:                                               ; preds = %44, %41
  %50 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %51 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 6
  %53 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %54 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %55 = call i32 @hrtimer_init(%struct.TYPE_8__* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @vmx_preemption_timer_fn, align 4
  %57 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %58 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = call i32 (...) @allocate_vpid()
  %62 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %63 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  store i32 %61, i32* %64, align 8
  %65 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %66 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %69 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load i64, i64* @pt_mode, align 8
  %72 = load i64, i64* @PT_MODE_HOST_GUEST, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %49
  %75 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %76 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %80 = call i32 @pt_update_intercept_for_msr(%struct.vcpu_vmx* %79)
  br label %81

81:                                               ; preds = %74, %49
  store i32 0, i32* %2, align 4
  br label %102

82:                                               ; preds = %48
  %83 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %84 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @kfree(i8* %86)
  br label %88

88:                                               ; preds = %82, %40
  %89 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %90 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @kfree(i8* %92)
  br label %94

94:                                               ; preds = %88, %27
  %95 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %96 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = call i32 @free_loaded_vmcs(i32* %97)
  br label %99

99:                                               ; preds = %94, %14
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %99, %81
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @alloc_loaded_vmcs(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_shadow_vmcs(%struct.kvm_vcpu*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @allocate_vpid(...) #1

declare dso_local i32 @pt_update_intercept_for_msr(%struct.vcpu_vmx*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_loaded_vmcs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
