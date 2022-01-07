; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_domain_setup_mon_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c_domain_setup_mon_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32 }
%struct.rdt_domain = type { i32, i8*, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cqm_handle_limbo = common dso_local global i32 0, align 4
@mbm_handle_overflow = common dso_local global i32 0, align 4
@MBM_OVERFLOW_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdt_resource*, %struct.rdt_domain*)* @domain_setup_mon_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_setup_mon_state(%struct.rdt_resource* %0, %struct.rdt_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdt_resource*, align 8
  %5 = alloca %struct.rdt_domain*, align 8
  %6 = alloca i64, align 8
  store %struct.rdt_resource* %0, %struct.rdt_resource** %4, align 8
  store %struct.rdt_domain* %1, %struct.rdt_domain** %5, align 8
  %7 = call i64 (...) @is_llc_occupancy_enabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %11 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @bitmap_zalloc(i32 %12, i32 %13)
  %15 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %16 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %18 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %9
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %93

24:                                               ; preds = %9
  %25 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %26 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %25, i32 0, i32 4
  %27 = load i32, i32* @cqm_handle_limbo, align 4
  %28 = call i32 @INIT_DELAYED_WORK(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = call i64 (...) @is_mbm_total_enabled()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  store i64 1, i64* %6, align 8
  %33 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %34 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i32 %35, i64 %36, i32 %37)
  %39 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %40 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %42 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %32
  %46 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %47 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bitmap_free(i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %93

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %29
  %54 = call i64 (...) @is_mbm_local_enabled()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  store i64 1, i64* %6, align 8
  %57 = load %struct.rdt_resource*, %struct.rdt_resource** %4, align 8
  %58 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kcalloc(i32 %59, i64 %60, i32 %61)
  %63 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %64 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %66 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %56
  %70 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %71 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bitmap_free(i32 %72)
  %74 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %75 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @kfree(i8* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %93

80:                                               ; preds = %56
  br label %81

81:                                               ; preds = %80, %53
  %82 = call i64 (...) @is_mbm_enabled()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %86 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %85, i32 0, i32 0
  %87 = load i32, i32* @mbm_handle_overflow, align 4
  %88 = call i32 @INIT_DELAYED_WORK(i32* %86, i32 %87)
  %89 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %90 = load i32, i32* @MBM_OVERFLOW_INTERVAL, align 4
  %91 = call i32 @mbm_setup_overflow_handler(%struct.rdt_domain* %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %81
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %69, %45, %21
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @is_llc_occupancy_enabled(...) #1

declare dso_local i32 @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @is_mbm_total_enabled(...) #1

declare dso_local i8* @kcalloc(i32, i64, i32) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i64 @is_mbm_local_enabled(...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @is_mbm_enabled(...) #1

declare dso_local i32 @mbm_setup_overflow_handler(%struct.rdt_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
