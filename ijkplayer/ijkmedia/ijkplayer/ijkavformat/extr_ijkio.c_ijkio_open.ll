; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkio.c_ijkio_open.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkio.c_ijkio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"ijkio:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32**)* @ijkio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ijkio_open(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  store i32 -1, i32* %11, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %4
  store i32 -1, i32* %5, align 4
  br label %54

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %12, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @av_strstart(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i32* null, i32** %13, align 8
  %36 = load i32**, i32*** %9, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ijkio_copy_options(i32** %13, i32* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ijkio_manager_io_open(%struct.TYPE_8__* %42, i8* %43, i32 %44, i32** %13)
  store i32 %45, i32* %11, align 4
  %46 = call i32 @ijk_av_dict_free(i32** %13)
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %25
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %51 = call i32 @ijkio_manager_io_close(%struct.TYPE_8__* %50)
  br label %52

52:                                               ; preds = %49, %25
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %24
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i32 @ijkio_copy_options(i32**, i32*) #1

declare dso_local i32 @ijkio_manager_io_open(%struct.TYPE_8__*, i8*, i32, i32**) #1

declare dso_local i32 @ijk_av_dict_free(i32**) #1

declare dso_local i32 @ijkio_manager_io_close(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
