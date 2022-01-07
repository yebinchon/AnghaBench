; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_process_active.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_process_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32, i32, i32, i32, %struct.evcallback_list*, %struct.TYPE_2__ }
%struct.evcallback_list = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timeval = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*)* @event_process_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_process_active(%struct.event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  %3 = alloca %struct.evcallback_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  store %struct.evcallback_list* null, %struct.evcallback_list** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.event_base*, %struct.event_base** %2, align 8
  %11 = getelementptr inbounds %struct.event_base, %struct.event_base* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.event_base*, %struct.event_base** %2, align 8
  %14 = getelementptr inbounds %struct.event_base, %struct.event_base* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.event_base*, %struct.event_base** %2, align 8
  %17 = getelementptr inbounds %struct.event_base, %struct.event_base* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.event_base*, %struct.event_base** %2, align 8
  %23 = call i32 @update_time_cache(%struct.event_base* %22)
  %24 = load %struct.event_base*, %struct.event_base** %2, align 8
  %25 = call i32 @gettime(%struct.event_base* %24, %struct.timeval* %7)
  %26 = load %struct.event_base*, %struct.event_base** %2, align 8
  %27 = getelementptr inbounds %struct.event_base, %struct.event_base* %26, i32 0, i32 5
  %28 = call i32 @evutil_timeradd(%struct.TYPE_2__* %27, %struct.timeval* %7, %struct.timeval* %7)
  store %struct.timeval* %7, %struct.timeval** %6, align 8
  br label %30

29:                                               ; preds = %1
  store %struct.timeval* null, %struct.timeval** %6, align 8
  br label %30

30:                                               ; preds = %29, %21
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %81, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.event_base*, %struct.event_base** %2, align 8
  %34 = getelementptr inbounds %struct.event_base, %struct.event_base* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %31
  %38 = load %struct.event_base*, %struct.event_base** %2, align 8
  %39 = getelementptr inbounds %struct.event_base, %struct.event_base* %38, i32 0, i32 4
  %40 = load %struct.evcallback_list*, %struct.evcallback_list** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.evcallback_list, %struct.evcallback_list* %40, i64 %42
  %44 = call i32* @TAILQ_FIRST(%struct.evcallback_list* %43)
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %80

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.event_base*, %struct.event_base** %2, align 8
  %49 = getelementptr inbounds %struct.event_base, %struct.event_base* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.event_base*, %struct.event_base** %2, align 8
  %51 = getelementptr inbounds %struct.event_base, %struct.event_base* %50, i32 0, i32 4
  %52 = load %struct.evcallback_list*, %struct.evcallback_list** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.evcallback_list, %struct.evcallback_list* %52, i64 %54
  store %struct.evcallback_list* %55, %struct.evcallback_list** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.event_base*, %struct.event_base** %2, align 8
  %61 = load %struct.evcallback_list*, %struct.evcallback_list** %3, align 8
  %62 = load i32, i32* @INT_MAX, align 4
  %63 = call i32 @event_process_active_single_queue(%struct.event_base* %60, %struct.evcallback_list* %61, i32 %62, %struct.timeval* null)
  store i32 %63, i32* %5, align 4
  br label %70

64:                                               ; preds = %46
  %65 = load %struct.event_base*, %struct.event_base** %2, align 8
  %66 = load %struct.evcallback_list*, %struct.evcallback_list** %3, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.timeval*, %struct.timeval** %6, align 8
  %69 = call i32 @event_process_active_single_queue(%struct.event_base* %65, %struct.evcallback_list* %66, i32 %67, %struct.timeval* %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %85

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %84

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %37
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %31

84:                                               ; preds = %77, %31
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.event_base*, %struct.event_base** %2, align 8
  %87 = getelementptr inbounds %struct.event_base, %struct.event_base* %86, i32 0, i32 3
  store i32 -1, i32* %87, align 4
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @update_time_cache(%struct.event_base*) #1

declare dso_local i32 @gettime(%struct.event_base*, %struct.timeval*) #1

declare dso_local i32 @evutil_timeradd(%struct.TYPE_2__*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32* @TAILQ_FIRST(%struct.evcallback_list*) #1

declare dso_local i32 @event_process_active_single_queue(%struct.event_base*, %struct.evcallback_list*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
