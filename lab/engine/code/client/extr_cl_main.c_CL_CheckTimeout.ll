; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_CheckTimeout.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_CheckTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@sv_paused = common dso_local global %struct.TYPE_6__* null, align 8
@clc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CA_CONNECTED = common dso_local global i64 0, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@cls = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@cl_timeout = common dso_local global %struct.TYPE_9__* null, align 8
@cl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"\0AServer connection timed out.\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_CheckTimeout() #0 {
  %1 = call i32 (...) @CL_CheckPaused()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sv_paused, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %3, %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @clc, i32 0, i32 0), align 8
  %10 = load i64, i64* @CA_CONNECTED, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @clc, i32 0, i32 0), align 8
  %14 = load i64, i64* @CA_CINEMATIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cls, i32 0, i32 0), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @clc, i32 0, i32 1), align 8
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cl_timeout, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 1000
  %24 = icmp sgt i32 %19, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cl, i32 0, i32 0), align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cl, i32 0, i32 0), align 4
  %28 = icmp sgt i32 %27, 5
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = call i32 @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @qtrue, align 4
  %32 = call i32 @CL_Disconnect(i32 %31)
  br label %35

33:                                               ; preds = %25
  br label %35

34:                                               ; preds = %16, %12, %8, %3
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cl, i32 0, i32 0), align 4
  br label %35

35:                                               ; preds = %29, %34, %33
  ret void
}

declare dso_local i32 @CL_CheckPaused(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @CL_Disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
