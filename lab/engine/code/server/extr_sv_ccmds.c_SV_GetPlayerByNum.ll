; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_GetPlayerByNum.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_GetPlayerByNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@com_sv_running = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"No player specified.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad slot number: %s\0A\00", align 1
@sv_maxclients = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Bad client slot: %i\0A\00", align 1
@svs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Client %i is not active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @SV_GetPlayerByNum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @SV_GetPlayerByNum() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_sv_running, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %76

11:                                               ; preds = %0
  %12 = call i32 (...) @Cmd_Argc()
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %76

16:                                               ; preds = %11
  %17 = call i8* @Cmd_Argv(i32 1)
  store i8* %17, i8** %5, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %45, %16
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp slt i32 %31, 48
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sgt i32 %39, 57
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %25
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %76

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %18

48:                                               ; preds = %18
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @atoi(i8* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sv_maxclients, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %76

62:                                               ; preds = %53
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 0), align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %2, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %76

74:                                               ; preds = %62
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %1, align 8
  br label %76

76:                                               ; preds = %74, %71, %59, %41, %14, %10
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %77
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
