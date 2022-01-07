; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_alloc_wrapper_hard.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_alloc_wrapper_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* (%struct.TYPE_5__*, i8*, i64, i64, i32*, i32*, i32)* }

@PAGE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@extent_state_active = common dso_local global i32 0, align 4
@EXTENT_NOT_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_5__**, i8*, i64, i64, i64, i32, i32, i32*, i32*)* @extent_alloc_wrapper_hard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_alloc_wrapper_hard(i32* %0, i32* %1, %struct.TYPE_5__** %2, i8* %3, i64 %4, i64 %5, i64 %6, i32 %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %28 = load i64, i64* %17, align 8
  %29 = load i64, i64* %18, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %24, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32* @extent_alloc(i32* %31, i32* %32)
  store i32* %33, i32** %25, align 8
  %34 = load i32*, i32** %25, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %11
  store i32* null, i32** %12, align 8
  br label %118

37:                                               ; preds = %11
  %38 = load i64, i64* %19, align 8
  %39 = load i32, i32* @PAGE, align 4
  %40 = call i64 @ALIGNMENT_CEILING(i64 %38, i32 %39)
  store i64 %40, i64* %27, align 8
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp eq %struct.TYPE_5__* %42, @extent_hooks_default
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = load i64, i64* %24, align 8
  %49 = load i64, i64* %27, align 8
  %50 = load i32*, i32** %22, align 8
  %51 = load i32*, i32** %23, align 8
  %52 = call i8* @extent_alloc_default_impl(i32* %45, i32* %46, i8* %47, i64 %48, i64 %49, i32* %50, i32* %51)
  store i8* %52, i8** %26, align 8
  br label %73

53:                                               ; preds = %37
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @extent_hook_pre_reentrancy(i32* %54, i32* %55)
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i8* (%struct.TYPE_5__*, i8*, i64, i64, i32*, i32*, i32)*, i8* (%struct.TYPE_5__*, i8*, i64, i64, i32*, i32*, i32)** %59, align 8
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load i64, i64* %24, align 8
  %65 = load i64, i64* %27, align 8
  %66 = load i32*, i32** %22, align 8
  %67 = load i32*, i32** %23, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @arena_ind_get(i32* %68)
  %70 = call i8* %60(%struct.TYPE_5__* %62, i8* %63, i64 %64, i64 %65, i32* %66, i32* %67, i32 %69)
  store i8* %70, i8** %26, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @extent_hook_post_reentrancy(i32* %71)
  br label %73

73:                                               ; preds = %53, %44
  %74 = load i8*, i8** %26, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32*, i32** %25, align 8
  %80 = call i32 @extent_dalloc(i32* %77, i32* %78, i32* %79)
  store i32* null, i32** %12, align 8
  br label %118

81:                                               ; preds = %73
  %82 = load i32*, i32** %25, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @arena_ind_get(i32* %83)
  %85 = load i8*, i8** %26, align 8
  %86 = load i64, i64* %24, align 8
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32*, i32** %14, align 8
  %90 = call i32 @arena_extent_sn_next(i32* %89)
  %91 = load i32, i32* @extent_state_active, align 4
  %92 = load i32*, i32** %22, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %23, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @EXTENT_NOT_HEAD, align 4
  %97 = call i32 @extent_init(i32* %82, i32 %84, i8* %85, i64 %86, i32 %87, i32 %88, i32 %90, i32 %91, i32 %93, i32 %95, i32 1, i32 %96)
  %98 = load i64, i64* %18, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %81
  %101 = load i32*, i32** %13, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i32*, i32** %25, align 8
  %104 = load i64, i64* %19, align 8
  %105 = call i32 @extent_addr_randomize(i32* %101, i32* %102, i32* %103, i64 %104)
  br label %106

106:                                              ; preds = %100, %81
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %25, align 8
  %109 = call i64 @extent_register(i32* %107, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32*, i32** %13, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %25, align 8
  %115 = call i32 @extent_dalloc(i32* %112, i32* %113, i32* %114)
  store i32* null, i32** %12, align 8
  br label %118

116:                                              ; preds = %106
  %117 = load i32*, i32** %25, align 8
  store i32* %117, i32** %12, align 8
  br label %118

118:                                              ; preds = %116, %111, %76, %36
  %119 = load i32*, i32** %12, align 8
  ret i32* %119
}

declare dso_local i32* @extent_alloc(i32*, i32*) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i32) #1

declare dso_local i8* @extent_alloc_default_impl(i32*, i32*, i8*, i64, i64, i32*, i32*) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32*, i32*) #1

declare dso_local i32 @extent_init(i32*, i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @arena_extent_sn_next(i32*) #1

declare dso_local i32 @extent_addr_randomize(i32*, i32*, i32*, i64) #1

declare dso_local i64 @extent_register(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
