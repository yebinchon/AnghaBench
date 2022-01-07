; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_Think_SetupTrainTargets.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_Think_SetupTrainTargets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@targetname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"func_train at %s with an unfound target\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Train corner at %s without a target\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Train corner at %s without a target path_corner\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"path_corner\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Think_SetupTrainTargets(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load i32, i32* @targetname, align 4
  %7 = call i32 @FOFS(i32 %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @G_Find(%struct.TYPE_9__* null, i32 %7, i32 %10)
  %12 = bitcast i8* %11 to %struct.TYPE_9__*
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vtos(i32 %23)
  %25 = call i32 @G_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %86

26:                                               ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %3, align 8
  br label %30

30:                                               ; preds = %81, %26
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = icmp ne %struct.TYPE_9__* %31, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %5, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @vtos(i32 %48)
  %50 = call i32 @G_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %86

51:                                               ; preds = %39
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %52

52:                                               ; preds = %71, %51
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load i32, i32* @targetname, align 4
  %55 = call i32 @FOFS(i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @G_Find(%struct.TYPE_9__* %53, i32 %55, i32 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %4, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = icmp ne %struct.TYPE_9__* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %52
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vtos(i32 %67)
  %69 = call i32 @G_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %86

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @strcmp(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %52, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %80, align 8
  br label %81

81:                                               ; preds = %77
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %3, align 8
  br label %30

83:                                               ; preds = %30
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = call i32 @Reached_Train(%struct.TYPE_9__* %84)
  br label %86

86:                                               ; preds = %83, %63, %44, %19
  ret void
}

declare dso_local i8* @G_Find(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @FOFS(i32) #1

declare dso_local i32 @G_Printf(i8*, i32) #1

declare dso_local i32 @vtos(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @Reached_Train(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
