; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_ConditionalRestart.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_ConditionalRestart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }
%struct.TYPE_4__ = type { i64* }

@fs_gamedirvar = common dso_local global %struct.TYPE_3__* null, align 8
@lastValidGame = common dso_local global i64* null, align 8
@com_basegame = common dso_local global %struct.TYPE_4__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@fs_checksumFeed = common dso_local global i32 0, align 4
@fs_numServerPaks = common dso_local global i64 0, align 8
@fs_reordered = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FS_ConditionalRestart(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs_gamedirvar, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %2
  %11 = load i64*, i64** @lastValidGame, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs_gamedirvar, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = call i64 @FS_FilenameCompare(i64* %11, i64* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %10
  %18 = load i64*, i64** @lastValidGame, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs_gamedirvar, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_basegame, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = call i64 @FS_FilenameCompare(i64* %24, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %21, %17
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs_gamedirvar, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load i64*, i64** @lastValidGame, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_basegame, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = call i64 @FS_FilenameCompare(i64* %37, i64* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36, %30
  %44 = load i32, i32* %4, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @Com_GameRestart(i32 %44, i64 %45)
  %47 = load i64, i64* @qtrue, align 8
  store i64 %47, i64* %3, align 8
  br label %71

48:                                               ; preds = %36, %21, %10
  %49 = load i64, i64* @qfalse, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs_gamedirvar, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @fs_checksumFeed, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @FS_Restart(i32 %58)
  br label %69

60:                                               ; preds = %53
  %61 = load i64, i64* @fs_numServerPaks, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* @fs_reordered, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i32 (...) @FS_ReorderPurePaks()
  br label %68

68:                                               ; preds = %66, %63, %60
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i64, i64* @qfalse, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %69, %43
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i64 @FS_FilenameCompare(i64*, i64*) #1

declare dso_local i32 @Com_GameRestart(i32, i64) #1

declare dso_local i32 @FS_Restart(i32) #1

declare dso_local i32 @FS_ReorderPurePaks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
