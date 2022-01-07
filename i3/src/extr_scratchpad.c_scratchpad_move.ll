; ModuleID = '/home/carl/AnghaBench/i3/src/extr_scratchpad.c_scratchpad_move.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_scratchpad.c_scratchpad_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_15__*, i32, i32 }

@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [102 x i8] c"'move scratchpad' used on a workspace \22%s\22. Calling it recursively on all windows on this workspace.\0A\00", align 1
@focused = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"should move con %p to __i3_scratch\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"__i3_scratch\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"This window is already on __i3_scratch.\0A\00", align 1
@SCRATCHPAD_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"This window was never used as a scratchpad before.\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"It was in floating mode before, set scratchpad state to changed.\0A\00", align 1
@SCRATCHPAD_CHANGED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [62 x i8] c"It was in tiling mode before, set scratchpad state to fresh.\0A\00", align 1
@SCRATCHPAD_FRESH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scratchpad_move(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CT_WORKSPACE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @LOG(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = call %struct.TYPE_15__* @TAILQ_FIRST(i32* %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %3, align 8
  br label %20

20:                                               ; preds = %23, %12
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = load i32, i32* @focused, align 4
  %26 = call %struct.TYPE_15__* @TAILQ_NEXT(%struct.TYPE_15__* %24, i32 %25)
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %4, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  call void @scratchpad_move(%struct.TYPE_15__* %27)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %3, align 8
  br label %20

29:                                               ; preds = %20
  br label %80

30:                                               ; preds = %1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %31)
  %33 = call %struct.TYPE_15__* @workspace_get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %5, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = call %struct.TYPE_15__* @con_get_workspace(%struct.TYPE_15__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = icmp eq %struct.TYPE_15__* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %80

40:                                               ; preds = %30
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = call i32 @con_disable_fullscreen(%struct.TYPE_15__* %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = call %struct.TYPE_15__* @con_inside_floating(%struct.TYPE_15__* %43)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %6, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = icmp eq %struct.TYPE_15__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = call i32 @floating_enable(%struct.TYPE_15__* %48, i32 0)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %2, align 8
  br label %55

53:                                               ; preds = %40
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %2, align 8
  br label %55

55:                                               ; preds = %53, %47
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = call i32 @con_move_to_workspace(%struct.TYPE_15__* %56, %struct.TYPE_15__* %57, i32 1, i32 1, i32 0)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SCRATCHPAD_NONE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %55
  %65 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = icmp eq %struct.TYPE_15__* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i64, i64* @SCRATCHPAD_CHANGED, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %79

74:                                               ; preds = %64
  %75 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %76 = load i64, i64* @SCRATCHPAD_FRESH, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %29, %38, %79, %55
  ret void
}

declare dso_local i32 @LOG(i8*, i32) #1

declare dso_local %struct.TYPE_15__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_15__* @TAILQ_NEXT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_15__* @workspace_get(i8*, i32*) #1

declare dso_local %struct.TYPE_15__* @con_get_workspace(%struct.TYPE_15__*) #1

declare dso_local i32 @con_disable_fullscreen(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @con_inside_floating(%struct.TYPE_15__*) #1

declare dso_local i32 @floating_enable(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @con_move_to_workspace(%struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
