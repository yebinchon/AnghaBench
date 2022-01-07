; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-gpci.c_h_gpci_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-gpci.c_h_gpci_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"config2 set when reserved\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"length invalid\0A\00", align 1
@HGPCI_MAX_DATA_BYTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"request outside of buffer: %zu > %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gpci hcall failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @h_gpci_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h_gpci_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %19
  %30 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %31 = call i64 @has_branch_stack(%struct.perf_event* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %85

36:                                               ; preds = %29
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = call i32 @event_get_length(%struct.perf_event* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 8
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %36
  %45 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %41
  %49 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %50 = call i64 @event_get_offset(%struct.perf_event* %49)
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i64, i64* @HGPCI_MAX_DATA_BYTES, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %58 = call i64 @event_get_offset(%struct.perf_event* %57)
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %58, %60
  %62 = load i64, i64* @HGPCI_MAX_DATA_BYTES, align 8
  %63 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %61, i64 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %85

66:                                               ; preds = %48
  %67 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %68 = call i32 @event_get_request(%struct.perf_event* %67)
  %69 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %70 = call i32 @event_get_starting_index(%struct.perf_event* %69)
  %71 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %72 = call i32 @event_get_secondary_index(%struct.perf_event* %71)
  %73 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %74 = call i32 @event_get_counter_info_version(%struct.perf_event* %73)
  %75 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %76 = call i64 @event_get_offset(%struct.perf_event* %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @single_gpci_request(i32 %68, i32 %70, i32 %72, i32 %74, i64 %76, i32 %77, i32* %4)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %80, %56, %44, %33, %25, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @event_get_length(%struct.perf_event*) #1

declare dso_local i64 @event_get_offset(%struct.perf_event*) #1

declare dso_local i64 @single_gpci_request(i32, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @event_get_request(%struct.perf_event*) #1

declare dso_local i32 @event_get_starting_index(%struct.perf_event*) #1

declare dso_local i32 @event_get_secondary_index(%struct.perf_event*) #1

declare dso_local i32 @event_get_counter_info_version(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
