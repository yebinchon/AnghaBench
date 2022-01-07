; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_hv_24x7_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_hv_24x7_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hv_perf_caps = type { i32 }

@FW_FEATURE_LPAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"not a virtualized system, not enabling\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@cur_cpu_spec = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"ppc64/power8\00", align 1
@interface_version = common dso_local global i32 0, align 4
@threads_per_core = common dso_local global i32 0, align 4
@aggregate_result_elements = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"could not obtain capabilities, not enabling, rc=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hv-page-4096\00", align 1
@hv_page_cache = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PERF_PMU_CAP_NO_INTERRUPT = common dso_local global i32 0, align 4
@h_24x7_pmu = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@event_group = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@event_desc_group = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@event_long_desc_group = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hv_24x7_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_24x7_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.hv_perf_caps, align 4
  %5 = load i32, i32* @FW_FEATURE_LPAR, align 4
  %6 = call i32 @firmware_has_feature(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %66

12:                                               ; preds = %0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_cpu_spec, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %66

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_cpu_spec, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 1, i32* @interface_version, align 4
  br label %33

28:                                               ; preds = %21
  store i32 2, i32* @interface_version, align 4
  %29 = load i32, i32* @threads_per_core, align 4
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* @aggregate_result_elements, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %27
  %34 = call i64 @hv_perf_caps_get(%struct.hv_perf_caps* %4)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i64, i64* %3, align 8
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %1, align 4
  br label %66

42:                                               ; preds = %33
  %43 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 4096, i32 4096, i32 0, i32* null)
  store i32 %43, i32* @hv_page_cache, align 4
  %44 = load i32, i32* @hv_page_cache, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %1, align 4
  br label %66

49:                                               ; preds = %42
  %50 = load i32, i32* @PERF_PMU_CAP_NO_INTERRUPT, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @h_24x7_pmu, i32 0, i32 1), align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @h_24x7_pmu, i32 0, i32 1), align 4
  %53 = call i32 @create_events_from_catalog(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @event_group, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @event_desc_group, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @event_long_desc_group, i32 0, i32 0))
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %2, align 4
  store i32 %57, i32* %1, align 4
  br label %66

58:                                               ; preds = %49
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @h_24x7_pmu, i32 0, i32 0), align 4
  %60 = call i32 @perf_pmu_register(%struct.TYPE_7__* @h_24x7_pmu, i32 %59, i32 -1)
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %2, align 4
  store i32 %64, i32* %1, align 4
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %1, align 4
  br label %66

66:                                               ; preds = %65, %63, %56, %46, %37, %17, %8
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @hv_perf_caps_get(%struct.hv_perf_caps*) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @create_events_from_catalog(i32*, i32*, i32*) #1

declare dso_local i32 @perf_pmu_register(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
