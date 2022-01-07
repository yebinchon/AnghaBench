; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_io_open.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_io_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*, i8*, i32, i32**)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32**)* @ijkio_cache_io_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ijkio_cache_io_open(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %11, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_13__*, i8*, i32, i32**)*, i32 (%struct.TYPE_13__*, i8*, i32, i32**)** %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32**, i32*** %9, align 8
  %28 = call i32 %21(%struct.TYPE_13__* %24, i8* %25, i32 %26, i32** %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %60

33:                                               ; preds = %4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = call i32 @ijkio_cache_ffurl_size(%struct.TYPE_11__* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %42, %33
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = call i32 @call_inject_statistic(%struct.TYPE_11__* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %31
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @ijkio_cache_ffurl_size(%struct.TYPE_11__*) #1

declare dso_local i32 @call_inject_statistic(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
