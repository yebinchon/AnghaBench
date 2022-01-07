; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_init_fake_wstream.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_init_fake_wstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32*, i32* }

@fake_wstream__write = common dso_local global i32 0, align 4
@fake_wstream__fwrite = common dso_local global i32 0, align 4
@fake_wstream__free = common dso_local global i32 0, align 4
@GIT_STREAM_WRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i64, i32)* @init_fake_wstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_fake_wstream(i32** %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @GIT_ERROR_CHECK_BLOBSIZE(i64 %12)
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %11, align 8
  %15 = call %struct.TYPE_7__* @git__calloc(i32 1, i32 72)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %16)
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32* @git__malloc(i64 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = call i32 @git__free(%struct.TYPE_7__* %33)
  store i32 -1, i32* %5, align 4
  br label %59

35:                                               ; preds = %4
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  store i32* %36, i32** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i32* @fake_wstream__write, i32** %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32* @fake_wstream__fwrite, i32** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32* @fake_wstream__free, i32** %51, align 8
  %52 = load i32, i32* @GIT_STREAM_WRONLY, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = bitcast %struct.TYPE_7__* %56 to i32*
  %58 = load i32**, i32*** %6, align 8
  store i32* %57, i32** %58, align 8
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %35, %32
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @GIT_ERROR_CHECK_BLOBSIZE(i64) #1

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local i32* @git__malloc(i64) #1

declare dso_local i32 @git__free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
