; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_large.c_large_dalloc_prep_impl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_large.c_large_dalloc_prep_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32*, i32)* @large_dalloc_prep_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @large_dalloc_prep_impl(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = call i32 @arena_is_auto(%struct.TYPE_5__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = call i32 @malloc_mutex_lock(i32* %16, i32* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @extent_list_remove(i32* %21, i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = call i32 @malloc_mutex_unlock(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %15, %11
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @extent_addr_get(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @extent_usize_get(i32* %31)
  %33 = call i32 @large_dalloc_maybe_junk(i32 %30, i32 %32)
  br label %48

34:                                               ; preds = %4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = call i32 @arena_is_auto(%struct.TYPE_5__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call i32 @malloc_mutex_assert_owner(i32* %39, i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @extent_list_remove(i32* %44, i32* %45)
  br label %47

47:                                               ; preds = %38, %34
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @arena_extent_dalloc_large_prep(i32* %49, %struct.TYPE_5__* %50, i32* %51)
  ret void
}

declare dso_local i32 @arena_is_auto(%struct.TYPE_5__*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @extent_list_remove(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @large_dalloc_maybe_junk(i32, i32) #1

declare dso_local i32 @extent_addr_get(i32*) #1

declare dso_local i32 @extent_usize_get(i32*) #1

declare dso_local i32 @malloc_mutex_assert_owner(i32*, i32*) #1

declare dso_local i32 @arena_extent_dalloc_large_prep(i32*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
