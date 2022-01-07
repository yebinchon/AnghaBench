; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_MapLoading.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_MapLoading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@com_dedicated = common dso_local global %struct.TYPE_6__* null, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@clc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@com_cl_running = common dso_local global %struct.TYPE_7__* null, align 8
@CA_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@cls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"nextmap\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@qtrue = common dso_local global i32 0, align 4
@CA_CHALLENGING = common dso_local global i64 0, align 8
@RETRANSMIT_TIMEOUT = common dso_local global i32 0, align 4
@NA_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_MapLoading() #0 {
  %1 = load %struct.TYPE_6__*, %struct.TYPE_6__** @com_dedicated, align 8
  %2 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i64, i64* @CA_DISCONNECTED, align 8
  store i64 %6, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 0), align 8
  %7 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %8 = call i32 @Key_SetCatcher(i32 %7)
  br label %48

9:                                                ; preds = %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_cl_running, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %48

15:                                               ; preds = %9
  %16 = call i32 (...) @Con_Close()
  %17 = call i32 @Key_SetCatcher(i32 0)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 0), align 8
  %19 = load i64, i64* @CA_CONNECTED, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 3), align 8
  %23 = call i32 @Q_stricmp(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @CA_CONNECTED, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 0), align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0), align 8
  %28 = call i32 @Com_Memset(i32* %27, i32 0, i32 8)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 5), align 8
  %30 = call i32 @Com_Memset(i32* %29, i32 0, i32 8)
  %31 = call i32 @Com_Memset(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cl, i32 0, i32 0), i32 0, i32 4)
  store i32 -9999, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 1), align 8
  %32 = call i32 (...) @SCR_UpdateScreen()
  br label %48

33:                                               ; preds = %21, %15
  %34 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @qtrue, align 4
  %36 = call i32 @CL_Disconnect(i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 3), align 8
  %38 = call i32 @Q_strncpyz(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %39 = load i64, i64* @CA_CHALLENGING, align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 0), align 8
  %40 = call i32 @Key_SetCatcher(i32 0)
  %41 = call i32 (...) @SCR_UpdateScreen()
  %42 = load i32, i32* @RETRANSMIT_TIMEOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 4), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 3), align 8
  %45 = load i32, i32* @NA_UNSPEC, align 4
  %46 = call i32 @NET_StringToAdr(i32 %44, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 2), i32 %45)
  %47 = call i32 (...) @CL_CheckForResend()
  br label %48

48:                                               ; preds = %5, %14, %33, %25
  ret void
}

declare dso_local i32 @Key_SetCatcher(i32) #1

declare dso_local i32 @Con_Close(...) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i32 @SCR_UpdateScreen(...) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @CL_Disconnect(i32) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @NET_StringToAdr(i32, i32*, i32) #1

declare dso_local i32 @CL_CheckForResend(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
