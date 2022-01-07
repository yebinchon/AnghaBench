; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_ExecuteClientCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_ExecuteClientCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 (%struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@qfalse = common dso_local global i64 0, align 8
@ucmds = common dso_local global %struct.TYPE_9__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@sv = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@SS_GAME = common dso_local global i64 0, align 8
@CS_ACTIVE = common dso_local global i64 0, align 8
@CS_PRIMED = common dso_local global i64 0, align 8
@gvm = common dso_local global i32 0, align 4
@GAME_CLIENT_COMMAND = common dso_local global i32 0, align 4
@svs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"client text ignored for %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_ExecuteClientCommand(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @qfalse, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @Cmd_TokenizeString(i8* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ucmds, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  br label %13

13:                                               ; preds = %33, %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = call i32 @Cmd_Argv(i32 0)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @strcmp(i32 %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 %28(%struct.TYPE_10__* %29)
  %31 = load i64, i64* @qtrue, align 8
  store i64 %31, i64* %8, align 8
  br label %36

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 1
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %7, align 8
  br label %13

36:                                               ; preds = %25, %13
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sv, i32 0, i32 0), align 8
  %46 = load i64, i64* @SS_GAME, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CS_ACTIVE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CS_PRIMED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54, %48
  %61 = call i32 (...) @Cmd_Args_Sanitize()
  %62 = load i32, i32* @gvm, align 4
  %63 = load i32, i32* @GAME_CLIENT_COMMAND, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @svs, i32 0, i32 0), align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %67
  %69 = call i32 @VM_Call(i32 %62, i32 %63, %struct.TYPE_10__* %68)
  br label %70

70:                                               ; preds = %60, %54, %44, %39
  br label %81

71:                                               ; preds = %36
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @Cmd_Argv(i32 0)
  %79 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %71
  br label %81

81:                                               ; preds = %80, %70
  ret void
}

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i32 @strcmp(i32, i64) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Cmd_Args_Sanitize(...) #1

declare dso_local i32 @VM_Call(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Com_DPrintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
