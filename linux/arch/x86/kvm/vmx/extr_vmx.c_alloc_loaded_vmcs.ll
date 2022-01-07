; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_alloc_loaded_vmcs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_alloc_loaded_vmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.loaded_vmcs = type { i32, i64*, i64, i64, i64, i32* }
%struct.hv_enlightened_vmcs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CONFIG_HYPERV = common dso_local global i32 0, align 4
@enable_evmcs = common dso_local global i32 0, align 4
@ms_hyperv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@HV_X64_NESTED_MSR_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_loaded_vmcs(%struct.loaded_vmcs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loaded_vmcs*, align 8
  %4 = alloca %struct.hv_enlightened_vmcs*, align 8
  store %struct.loaded_vmcs* %0, %struct.loaded_vmcs** %3, align 8
  %5 = call i64 @alloc_vmcs(i32 0)
  %6 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %7 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %6, i32 0, i32 4
  store i64 %5, i64* %7, align 8
  %8 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %9 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %17 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  %18 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %19 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %21 = call i32 @loaded_vmcs_init(%struct.loaded_vmcs* %20)
  %22 = call i64 (...) @cpu_has_vmx_msr_bitmap()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %15
  %25 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %26 = call i64 @__get_free_page(i32 %25)
  %27 = inttoptr i64 %26 to i64*
  %28 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %29 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %28, i32 0, i32 1
  store i64* %27, i64** %29, align 8
  %30 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %31 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %68

35:                                               ; preds = %24
  %36 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %37 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i32 @memset(i64* %38, i32 255, i32 %39)
  %41 = load i32, i32* @CONFIG_HYPERV, align 4
  %42 = call i64 @IS_ENABLED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = call i64 @static_branch_unlikely(i32* @enable_evmcs)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ms_hyperv, i32 0, i32 0), align 4
  %49 = load i32, i32* @HV_X64_NESTED_MSR_BITMAP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %54 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.hv_enlightened_vmcs*
  store %struct.hv_enlightened_vmcs* %56, %struct.hv_enlightened_vmcs** %4, align 8
  %57 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %4, align 8
  %58 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %47, %44, %35
  br label %61

61:                                               ; preds = %60, %15
  %62 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %63 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %62, i32 0, i32 2
  %64 = call i32 @memset(i64* %63, i32 0, i32 4)
  %65 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %66 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %65, i32 0, i32 3
  %67 = call i32 @memset(i64* %66, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %73

68:                                               ; preds = %34
  %69 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %3, align 8
  %70 = call i32 @free_loaded_vmcs(%struct.loaded_vmcs* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %61, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @alloc_vmcs(i32) #1

declare dso_local i32 @loaded_vmcs_init(%struct.loaded_vmcs*) #1

declare dso_local i64 @cpu_has_vmx_msr_bitmap(...) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @free_loaded_vmcs(%struct.loaded_vmcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
