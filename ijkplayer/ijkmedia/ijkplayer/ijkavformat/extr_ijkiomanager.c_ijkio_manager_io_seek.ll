; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiomanager.c_ijkio_manager_io_seek.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiomanager.c_ijkio_manager_io_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_9__*, i64, i32)*, i64 (%struct.TYPE_9__*)* }

@IJKURL_PAUSED = common dso_local global i64 0, align 8
@IJKURL_STARTED = common dso_local global i64 0, align 8
@IJKAVSEEK_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ijkio_manager_io_seek(%struct.TYPE_10__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 -1, i64* %8, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %4, align 8
  br label %81

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.TYPE_9__* @ijk_map_get(i32 %17, i64 %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %9, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %79

24:                                               ; preds = %14
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %79

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64 (%struct.TYPE_9__*, i64, i32)*, i64 (%struct.TYPE_9__*, i64, i32)** %33, align 8
  %35 = icmp ne i64 (%struct.TYPE_9__*, i64, i32)* %34, null
  br i1 %35, label %36, label %79

36:                                               ; preds = %29
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IJKURL_PAUSED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64 (%struct.TYPE_9__*)*, i64 (%struct.TYPE_9__*)** %46, align 8
  %48 = icmp ne i64 (%struct.TYPE_9__*)* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64 (%struct.TYPE_9__*)*, i64 (%struct.TYPE_9__*)** %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = call i64 %54(%struct.TYPE_9__* %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %4, align 8
  br label %81

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i64, i64* @IJKURL_STARTED, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %36
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64 (%struct.TYPE_9__*, i64, i32)*, i64 (%struct.TYPE_9__*, i64, i32)** %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @IJKAVSEEK_FORCE, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = call i64 %71(%struct.TYPE_9__* %72, i64 %73, i32 %77)
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %66, %29, %24, %14
  %80 = load i64, i64* %8, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %79, %59, %12
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local %struct.TYPE_9__* @ijk_map_get(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
