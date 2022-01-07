; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_dalloc_bin_locked_impl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_dalloc_bin_locked_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@bin_infos = common dso_local global %struct.TYPE_13__* null, align 8
@config_fill = common dso_local global i64 0, align 8
@opt_junk_free = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_12__*, i64, i32*, i8*, i32)* @arena_dalloc_bin_locked_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_dalloc_bin_locked_impl(i32* %0, i32* %1, %struct.TYPE_12__* %2, i64 %3, i32* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = call i32* @extent_slab_data_get(i32* %18)
  store i32* %19, i32** %15, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bin_infos, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i64 %21
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %16, align 8
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %7
  %26 = load i64, i64* @config_fill, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* @opt_junk_free, align 4
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %35 = call i32 @arena_dalloc_junk_small(i8* %33, %struct.TYPE_13__* %34)
  br label %36

36:                                               ; preds = %32, %28, %25, %7
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @arena_slab_reg_dalloc(i32* %37, i32* %38, i8* %39)
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @extent_nfree_get(i32* %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = call i32 @arena_dissociate_bin_slab(i32* %49, i32* %50, %struct.TYPE_12__* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = call i32 @arena_dalloc_bin_slab(i32* %53, i32* %54, i32* %55, %struct.TYPE_12__* %56)
  br label %78

58:                                               ; preds = %36
  %59 = load i32, i32* %17, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @arena_bin_slabs_full_remove(i32* %68, %struct.TYPE_12__* %69, i32* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = call i32 @arena_bin_lower_slab(i32* %72, i32* %73, i32* %74, %struct.TYPE_12__* %75)
  br label %77

77:                                               ; preds = %67, %61, %58
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i64, i64* @config_stats, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32* @extent_slab_data_get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @arena_dalloc_junk_small(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @arena_slab_reg_dalloc(i32*, i32*, i8*) #1

declare dso_local i32 @extent_nfree_get(i32*) #1

declare dso_local i32 @arena_dissociate_bin_slab(i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @arena_dalloc_bin_slab(i32*, i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @arena_bin_slabs_full_remove(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @arena_bin_lower_slab(i32*, i32*, i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
