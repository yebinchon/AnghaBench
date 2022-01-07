; ModuleID = '/home/carl/AnghaBench/i3/src/extr_load_layout.c_json_start_map.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_load_layout.c_json_start_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"start of map, last_key = %s\0A\00", align 1
@last_key = common dso_local global i64 0, align 8
@parsing_swallows = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"creating new swallow\0A\00", align 1
@current_swallow = common dso_local global %struct.TYPE_12__* null, align 8
@M_DONTCHECK = common dso_local global i32 0, align 4
@json_node = common dso_local global %struct.TYPE_11__* null, align 8
@matches = common dso_local global i32 0, align 4
@swallow_is_empty = common dso_local global i32 0, align 4
@parsing_rect = common dso_local global i32 0, align 4
@parsing_deco_rect = common dso_local global i32 0, align 4
@parsing_window_rect = common dso_local global i32 0, align 4
@parsing_geometry = common dso_local global i32 0, align 4
@parsing_gaps = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"floating_nodes\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"New floating_node\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Parent is workspace = %p\0A\00", align 1
@incomplete = common dso_local global %struct.TYPE_11__* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"incomplete = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @json_start_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_start_map(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @last_key, align 8
  %6 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* @parsing_swallows, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %11 = call %struct.TYPE_12__* @smalloc(i32 4)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** @current_swallow, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current_swallow, align 8
  %13 = call i32 @match_init(%struct.TYPE_12__* %12)
  %14 = load i32, i32* @M_DONTCHECK, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current_swallow, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @json_node, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current_swallow, align 8
  %20 = load i32, i32* @matches, align 4
  %21 = call i32 @TAILQ_INSERT_TAIL(i32* %18, %struct.TYPE_12__* %19, i32 %20)
  store i32 1, i32* @swallow_is_empty, align 4
  br label %70

22:                                               ; preds = %1
  %23 = load i32, i32* @parsing_rect, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @parsing_deco_rect, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @parsing_window_rect, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %69, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @parsing_geometry, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %69, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @parsing_gaps, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @last_key, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load i64, i64* @last_key, align 8
  %42 = call i64 @strcasecmp(i64 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @json_node, align 8
  %47 = call %struct.TYPE_11__* @con_get_workspace(%struct.TYPE_11__* %46)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %3, align 8
  %48 = call %struct.TYPE_11__* @con_new_skeleton(i32* null, i32* null)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** @json_node, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @json_node, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @json_node, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_11__* %54)
  br label %64

56:                                               ; preds = %40, %37
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @json_node, align 8
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %4, align 8
  %58 = call %struct.TYPE_11__* @con_new_skeleton(i32* null, i32* null)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** @json_node, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @json_node, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @json_node, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %63, align 8
  br label %64

64:                                               ; preds = %56, %44
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @incomplete, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 1
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** @incomplete, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @incomplete, align 8
  %68 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_11__* %67)
  br label %69

69:                                               ; preds = %64, %34, %31, %28, %25, %22
  br label %70

70:                                               ; preds = %69, %9
  ret i32 1
}

declare dso_local i32 @LOG(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @smalloc(i32) #1

declare dso_local i32 @match_init(%struct.TYPE_12__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @strcasecmp(i64, i8*) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_11__* @con_get_workspace(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @con_new_skeleton(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
