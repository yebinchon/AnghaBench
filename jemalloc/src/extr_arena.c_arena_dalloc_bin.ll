; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_dalloc_bin.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_dalloc_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32*, i8*)* @arena_dalloc_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_dalloc_bin(i32* %0, %struct.TYPE_9__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @extent_szind_get(i32* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @extent_binshard_get(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %24
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %11, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @malloc_mutex_lock(i32* %26, i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @arena_dalloc_bin_locked_impl(i32* %30, %struct.TYPE_9__* %31, %struct.TYPE_8__* %32, i64 %33, i32* %34, i8* %35, i32 0)
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @malloc_mutex_unlock(i32* %37, i32* %39)
  ret void
}

declare dso_local i64 @extent_szind_get(i32*) #1

declare dso_local i32 @extent_binshard_get(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @arena_dalloc_bin_locked_impl(i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, i64, i32*, i8*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
