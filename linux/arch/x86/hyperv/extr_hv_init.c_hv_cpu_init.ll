; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hv_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hv_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_vp_assist_page = type { i32 }
%struct.page = type { i32 }

@hv_vp_assist_page = common dso_local global %struct.hv_vp_assist_page** null, align 8
@hyperv_pcpu_input_arg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hv_vp_index = common dso_local global i64* null, align 8
@hv_max_vp_index = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@HV_X64_MSR_VP_ASSIST_PAGE_ADDRESS_SHIFT = common dso_local global i64 0, align 8
@HV_X64_MSR_VP_ASSIST_PAGE_ENABLE = common dso_local global i64 0, align 8
@HV_X64_MSR_VP_ASSIST_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hv_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_cpu_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.hv_vp_assist_page**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load %struct.hv_vp_assist_page**, %struct.hv_vp_assist_page*** @hv_vp_assist_page, align 8
  %10 = call i64 (...) @smp_processor_id()
  %11 = getelementptr inbounds %struct.hv_vp_assist_page*, %struct.hv_vp_assist_page** %9, i64 %10
  store %struct.hv_vp_assist_page** %11, %struct.hv_vp_assist_page*** %5, align 8
  %12 = load i32, i32* @hyperv_pcpu_input_arg, align 4
  %13 = call i64 @this_cpu_ptr(i32 %12)
  %14 = inttoptr i64 %13 to i8**
  store i8** %14, i8*** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.page* @alloc_page(i32 %15)
  store %struct.page* %16, %struct.page** %7, align 8
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = icmp ne %struct.page* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %74

26:                                               ; preds = %1
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call i8* @page_address(%struct.page* %27)
  %29 = load i8**, i8*** %6, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @hv_get_vp_index(i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = load i64*, i64** @hv_vp_index, align 8
  %34 = call i64 (...) @smp_processor_id()
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @hv_max_vp_index, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* @hv_max_vp_index, align 8
  br label %41

41:                                               ; preds = %39, %26
  %42 = load %struct.hv_vp_assist_page**, %struct.hv_vp_assist_page*** @hv_vp_assist_page, align 8
  %43 = icmp ne %struct.hv_vp_assist_page** %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %74

45:                                               ; preds = %41
  %46 = load %struct.hv_vp_assist_page**, %struct.hv_vp_assist_page*** %5, align 8
  %47 = load %struct.hv_vp_assist_page*, %struct.hv_vp_assist_page** %46, align 8
  %48 = icmp ne %struct.hv_vp_assist_page* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i32, i32* @__GFP_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PAGE_KERNEL, align 4
  %55 = call %struct.hv_vp_assist_page* @__vmalloc(i32 %50, i32 %53, i32 %54)
  %56 = load %struct.hv_vp_assist_page**, %struct.hv_vp_assist_page*** %5, align 8
  store %struct.hv_vp_assist_page* %55, %struct.hv_vp_assist_page** %56, align 8
  br label %57

57:                                               ; preds = %49, %45
  %58 = load %struct.hv_vp_assist_page**, %struct.hv_vp_assist_page*** %5, align 8
  %59 = load %struct.hv_vp_assist_page*, %struct.hv_vp_assist_page** %58, align 8
  %60 = icmp ne %struct.hv_vp_assist_page* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.hv_vp_assist_page**, %struct.hv_vp_assist_page*** %5, align 8
  %63 = load %struct.hv_vp_assist_page*, %struct.hv_vp_assist_page** %62, align 8
  %64 = call i64 @vmalloc_to_pfn(%struct.hv_vp_assist_page* %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @HV_X64_MSR_VP_ASSIST_PAGE_ADDRESS_SHIFT, align 8
  %67 = shl i64 %65, %66
  %68 = load i64, i64* @HV_X64_MSR_VP_ASSIST_PAGE_ENABLE, align 8
  %69 = or i64 %67, %68
  store i64 %69, i64* %8, align 8
  %70 = load i32, i32* @HV_X64_MSR_VP_ASSIST_PAGE, align 4
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @wrmsrl(i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %61, %57
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %44, %23
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @this_cpu_ptr(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @hv_get_vp_index(i64) #1

declare dso_local %struct.hv_vp_assist_page* @__vmalloc(i32, i32, i32) #1

declare dso_local i64 @vmalloc_to_pfn(%struct.hv_vp_assist_page*) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
