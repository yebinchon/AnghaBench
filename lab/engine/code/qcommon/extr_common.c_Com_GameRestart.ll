; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_GameRestart.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_GameRestart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i64 }

@com_gameRestarting = common dso_local global i8* null, align 8
@com_fullyInitialized = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@com_cl_running = common dso_local global %struct.TYPE_4__* null, align 8
@com_gameClientRestarting = common dso_local global i8* null, align 8
@com_sv_running = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Game directory changed\00", align 1
@qfalse = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_GameRestart(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** @com_gameRestarting, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* @com_fullyInitialized, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %7
  %11 = load i8*, i8** @qtrue, align 8
  store i8* %11, i8** @com_gameRestarting, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_cl_running, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @com_gameClientRestarting, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_sv_running, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @SV_Shutdown(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %10
  %22 = load i8*, i8** @com_gameClientRestarting, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** @qfalse, align 8
  %29 = call i32 @CL_Disconnect(i8* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* %4, align 8
  %32 = load i8*, i8** @qfalse, align 8
  %33 = call i32 @CL_Shutdown(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @FS_Restart(i32 %35)
  %37 = load i8*, i8** @qtrue, align 8
  %38 = call i32 @Cvar_Restart(i8* %37)
  %39 = call i32 (...) @Com_ExecuteCfg()
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 (...) @NET_Restart_f()
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i8*, i8** @com_gameClientRestarting, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = call i32 (...) @CL_Init()
  %49 = load i8*, i8** @qfalse, align 8
  %50 = call i32 @CL_StartHunkUsers(i8* %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i8*, i8** @qfalse, align 8
  store i8* %52, i8** @com_gameRestarting, align 8
  %53 = load i8*, i8** @qfalse, align 8
  store i8* %53, i8** @com_gameClientRestarting, align 8
  br label %54

54:                                               ; preds = %51, %7, %2
  ret void
}

declare dso_local i32 @SV_Shutdown(i8*) #1

declare dso_local i32 @CL_Disconnect(i8*) #1

declare dso_local i32 @CL_Shutdown(i8*, i64, i8*) #1

declare dso_local i32 @FS_Restart(i32) #1

declare dso_local i32 @Cvar_Restart(i8*) #1

declare dso_local i32 @Com_ExecuteCfg(...) #1

declare dso_local i32 @NET_Restart_f(...) #1

declare dso_local i32 @CL_Init(...) #1

declare dso_local i32 @CL_StartHunkUsers(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
