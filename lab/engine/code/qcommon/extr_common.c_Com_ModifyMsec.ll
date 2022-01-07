; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_ModifyMsec.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_ModifyMsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@com_fixedtime = common dso_local global %struct.TYPE_8__* null, align 8
@com_timescale = common dso_local global %struct.TYPE_6__* null, align 8
@com_cameraMode = common dso_local global %struct.TYPE_10__* null, align 8
@com_dedicated = common dso_local global %struct.TYPE_9__* null, align 8
@com_sv_running = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Hitch warning: %i msec frame time\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_ModifyMsec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_fixedtime, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_fixedtime, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_timescale, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_timescale, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = mul nsw i32 %21, %20
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %12
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @com_cameraMode, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_timescale, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %2, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %23
  br label %35

35:                                               ; preds = %34, %17
  br label %36

36:                                               ; preds = %35, %8
  %37 = load i32, i32* %2, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_timescale, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %39, %36
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_dedicated, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_sv_running, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %2, align 4
  %57 = icmp sgt i32 %56, 500
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %55, %50
  store i32 5000, i32* %3, align 4
  br label %70

62:                                               ; preds = %45
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_sv_running, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 5000, i32* %3, align 4
  br label %69

68:                                               ; preds = %62
  store i32 200, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %3, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @Com_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
