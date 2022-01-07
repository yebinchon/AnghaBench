; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_AdjustTimeDelta.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_AdjustTimeDelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i8*, %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@qfalse = common dso_local global i8* null, align 8
@cl = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@clc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@RESET_TIME = common dso_local global i32 0, align 4
@cl_showTimeDelta = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"<RESET> \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<FAST> \00", align 1
@com_timescale = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%i \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_AdjustTimeDelta() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @qfalse, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 5), align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @clc, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %75

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 4, i32 0), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 0), align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %13 = sub nsw i32 %11, %12
  %14 = call i32 @abs(i32 %13) #3
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @RESET_TIME, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %7
  %19 = load i32, i32* %1, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 4, i32 0), align 8
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 1), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 4, i32 0), align 8
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 2), align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_showTimeDelta, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %18
  br label %67

29:                                               ; preds = %7
  %30 = load i32, i32* %2, align 4
  %31 = icmp sgt i32 %30, 100
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_showTimeDelta, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %40, %41
  %43 = ashr i32 %42, 1
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  br label %66

44:                                               ; preds = %29
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_timescale, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_timescale, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %65

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 3), align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** @qfalse, align 8
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 3), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %60 = sub nsw i32 %59, 2
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  br label %64

61:                                               ; preds = %54
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  br label %64

64:                                               ; preds = %61, %57
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %39
  br label %67

67:                                               ; preds = %66, %28
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_showTimeDelta, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %74 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %6, %72, %67
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
