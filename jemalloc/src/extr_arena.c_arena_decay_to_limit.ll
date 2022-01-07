; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_decay_to_limit.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_decay_to_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_4__*, i32*, i32, i64, i64, i32)* @arena_decay_to_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_decay_to_limit(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32* %3, i32 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @tsdn_witness_tsdp_get(i32* %21)
  %23 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %24 = call i32 @witness_assert_depth_to_rank(i32 %22, i32 %23, i32 1)
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @malloc_mutex_assert_owner(i32* %25, i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %8
  %34 = load i64, i64* %15, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %8
  br label %75

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = call i32 @malloc_mutex_unlock(i32* %40, i32* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @extent_hooks_get(i32* %44)
  store i32* %45, i32** %17, align 8
  %46 = call i32 @extent_list_init(i32* %18)
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i64 @arena_stash_decayed(i32* %47, i32* %48, i32** %17, i32* %49, i64 %50, i64 %51, i32* %18)
  store i64 %52, i64* %19, align 8
  %53 = load i64, i64* %19, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %37
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i64 @arena_decay_stashed(i32* %56, i32* %57, i32** %17, %struct.TYPE_4__* %58, i32* %59, i32 %60, i32* %18, i32 %61)
  store i64 %62, i64* %20, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %19, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  br label %68

68:                                               ; preds = %55, %37
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = call i32 @malloc_mutex_lock(i32* %69, i32* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %36
  ret void
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @malloc_mutex_assert_owner(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32* @extent_hooks_get(i32*) #1

declare dso_local i32 @extent_list_init(i32*) #1

declare dso_local i64 @arena_stash_decayed(i32*, i32*, i32**, i32*, i64, i64, i32*) #1

declare dso_local i64 @arena_decay_stashed(i32*, i32*, i32**, %struct.TYPE_4__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
