; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcaches_create.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcaches_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_4__* }

@tcaches_mtx = common dso_local global i32 0, align 4
@tcaches_avail = common dso_local global %struct.TYPE_4__* null, align 8
@tcaches = common dso_local global %struct.TYPE_4__* null, align 8
@tcaches_past = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcaches_create(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @tsd_tsdn(i32* %8)
  %10 = call i32 @tsdn_witness_tsdp_get(i32 %9)
  %11 = call i32 @witness_assert_depth(i32 %10, i32 0)
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @tcaches_create_prep(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @tcache_create_explicit(i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %60

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @tsd_tsdn(i32* %23)
  %25 = call i32 @malloc_mutex_lock(i32 %24, i32* @tcaches_mtx)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcaches_avail, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcaches_avail, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %7, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcaches_avail, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** @tcaches_avail, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcaches, align 8
  %38 = ptrtoint %struct.TYPE_4__* %36 to i64
  %39 = ptrtoint %struct.TYPE_4__* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 16
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  br label %56

44:                                               ; preds = %22
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcaches, align 8
  %46 = load i64, i64* @tcaches_past, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %7, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load i64, i64* @tcaches_past, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i64, i64* @tcaches_past, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* @tcaches_past, align 8
  br label %56

56:                                               ; preds = %44, %28
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @tsd_tsdn(i32* %57)
  %59 = call i32 @malloc_mutex_unlock(i32 %58, i32* @tcaches_mtx)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %21, %15
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @tsd_tsdn(i32* %61)
  %63 = call i32 @tsdn_witness_tsdp_get(i32 %62)
  %64 = call i32 @witness_assert_depth(i32 %63, i32 0)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @witness_assert_depth(i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i64 @tcaches_create_prep(i32*) #1

declare dso_local i32* @tcache_create_explicit(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
