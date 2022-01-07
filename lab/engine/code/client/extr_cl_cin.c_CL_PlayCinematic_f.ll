; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CL_PlayCinematic_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CL_PlayCinematic_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32* }

@CIN_system = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CL_PlayCinematic_f\0A\00", align 1
@clc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"demoend.roq\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"end.roq\00", align 1
@CIN_hold = common dso_local global i32 0, align 4
@CIN_loop = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@CL_handle = common dso_local global i64 0, align 8
@cinTable = common dso_local global %struct.TYPE_4__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@FMV_PLAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_PlayCinematic_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CIN_system, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 0), align 8
  %7 = load i64, i64* @CA_CINEMATIC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @SCR_StopCinematic()
  br label %11

11:                                               ; preds = %9, %0
  %12 = call i8* @Cmd_Argv(i32 1)
  store i8* %12, i8** %1, align 8
  %13 = call i8* @Cmd_Argv(i32 2)
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 49
  br i1 %21, label %30, label %22

22:                                               ; preds = %16, %11
  %23 = load i8*, i8** %1, align 8
  %24 = call i64 @Q_stricmp(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %1, align 8
  %28 = call i64 @Q_stricmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22, %16
  %31 = load i32, i32* @CIN_hold, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i8*, i8** %2, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 50
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @CIN_loop, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %37, %34
  %48 = call i32 (...) @S_StopAllSounds()
  %49 = load i8*, i8** %1, align 8
  %50 = load i32, i32* @SCREEN_WIDTH, align 4
  %51 = load i32, i32* @SCREEN_HEIGHT, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @CIN_PlayCinematic(i8* %49, i32 0, i32 0, i32 %50, i32 %51, i32 %52)
  store i64 %53, i64* @CL_handle, align 8
  %54 = load i64, i64* @CL_handle, align 8
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %74, %56
  %58 = call i32 (...) @SCR_RunCinematic()
  br label %59

59:                                               ; preds = %57
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %61 = load i64, i64* @currentHandle, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %68 = load i64, i64* @currentHandle, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @FMV_PLAY, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %66, %59
  %75 = phi i1 [ false, %59 ], [ %73, %66 ]
  br i1 %75, label %57, label %76

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76, %47
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @SCR_StopCinematic(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i64 @CIN_PlayCinematic(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCR_RunCinematic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
