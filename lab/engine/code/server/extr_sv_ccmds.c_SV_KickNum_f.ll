; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_KickNum_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_KickNum_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@com_sv_running = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Server is not running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Usage: %s <client number>\0A\00", align 1
@NA_LOOPBACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot kick host player\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"was kicked\00", align 1
@svs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_KickNum_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_KickNum_f() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_sv_running, align 8
  %3 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %35

8:                                                ; preds = %0
  %9 = call i32 (...) @Cmd_Argc()
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = call i32 @Cmd_Argv(i32 0)
  %13 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %35

14:                                               ; preds = %8
  %15 = call %struct.TYPE_10__* (...) @SV_GetPlayerByNum()
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %1, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %35

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NA_LOOPBACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %31 = call i32 @SV_DropClient(%struct.TYPE_10__* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 0), align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %27, %18, %11, %6
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local %struct.TYPE_10__* @SV_GetPlayerByNum(...) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
