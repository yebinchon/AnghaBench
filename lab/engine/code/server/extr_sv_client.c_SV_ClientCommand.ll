; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_ClientCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_ClientCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i32 }

@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"clientCommand: %s : %i : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Client %s lost %i clientCommands\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Lost reliable commands\00", align 1
@qfalse = common dso_local global i32 0, align 4
@com_cl_running = common dso_local global %struct.TYPE_11__* null, align 8
@CS_ACTIVE = common dso_local global i64 0, align 8
@sv_floodProtect = common dso_local global %struct.TYPE_10__* null, align 8
@svs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @SV_ClientCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SV_ClientCommand(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @qtrue, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @MSG_ReadLong(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @MSG_ReadString(i32* %12)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @qtrue, align 4
  store i32 %20, i32* %3, align 4
  br label %90

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i8* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = icmp sgt i32 %28, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %21
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %38, %41
  %43 = add nsw i32 %42, 1
  %44 = call i32 @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = call i32 @SV_DropClient(%struct.TYPE_8__* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %3, align 4
  br label %90

48:                                               ; preds = %21
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @com_cl_running, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CS_ACTIVE, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sv_floodProtect, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 0), align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @qfalse, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %64, %59, %53, %48
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @svs, i32 0, i32 0), align 8
  %74 = add nsw i64 %73, 1000
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @SV_ExecuteClientCommand(%struct.TYPE_8__* %77, i8* %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @Com_sprintf(i32 %86, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* @qtrue, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %72, %34, %19
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @MSG_ReadLong(i32*) #1

declare dso_local i8* @MSG_ReadString(i32*) #1

declare dso_local i32 @Com_DPrintf(i8*, i32, i32, i8*) #1

declare dso_local i32 @Com_Printf(i8*, i32, i32) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @SV_ExecuteClientCommand(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @Com_sprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
