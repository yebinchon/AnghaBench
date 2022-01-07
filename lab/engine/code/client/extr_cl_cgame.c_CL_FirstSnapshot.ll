; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_FirstSnapshot.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_FirstSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { float*, i32, i8*, i64, i8**, i32*, i32, i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_10__ = type { i64 }

@cl = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@SNAPFLAG_NOT_ACTIVE = common dso_local global i32 0, align 4
@CA_ACTIVE = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cl_activeAction = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"activeAction\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CLIENT_WINDOW_TITLE = common dso_local global i32 0, align 4
@CL_Voip_f = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@OPUS_APPLICATION_VOIP = common dso_local global i32 0, align 4
@cl_useMumble = common dso_local global %struct.TYPE_10__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_FirstSnapshot() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0, i32 0), align 8
  %2 = load i32, i32* @SNAPFLAG_NOT_ACTIVE, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %25

6:                                                ; preds = %0
  %7 = load i32, i32* @CA_ACTIVE, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 8), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0, i32 1), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0), align 8
  %10 = sub nsw i64 %8, %9
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 2), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0, i32 1), align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 1), align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0, i32 1), align 8
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 7), align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_activeAction, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_activeAction, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = call i32 @Cbuf_AddText(i64* %22)
  %24 = call i32 @Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %5, %19, %6
  ret void
}

declare dso_local i32 @Cbuf_AddText(i64*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
