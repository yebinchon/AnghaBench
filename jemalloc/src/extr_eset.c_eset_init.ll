; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_init.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"extents\00", align 1
@WITNESS_RANK_EXTENTS = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@SC_NPSIZES = common dso_local global i32 0, align 4
@eset_bitmap_info = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eset_init(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  %13 = load i32, i32* @WITNESS_RANK_EXTENTS, align 4
  %14 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %15 = call i64 @malloc_mutex_init(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %53

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @SC_NPSIZES, align 4
  %22 = add nsw i32 %21, 1
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @extent_heap_new(i32* %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bitmap_init(i32 %38, i32* @eset_bitmap_info, i32 1)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = call i32 @extent_list_init(i32* %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* @ATOMIC_RELAXED, align 4
  %46 = call i32 @atomic_store_zu(i32* %44, i32 0, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %35, %17
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i32 @extent_heap_new(i32*) #1

declare dso_local i32 @bitmap_init(i32, i32*, i32) #1

declare dso_local i32 @extent_list_init(i32*) #1

declare dso_local i32 @atomic_store_zu(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
