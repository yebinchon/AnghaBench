; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_merge_default.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_merge_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maps_coalesce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i32, i32)* @extent_merge_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_merge_default(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* @maps_coalesce, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %7
  %22 = call i32* (...) @tsdn_fetch()
  store i32* %22, i32** %16, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32* @iealloc(i32* %23, i8* %24)
  store i32* %25, i32** %17, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32* @iealloc(i32* %26, i8* %27)
  store i32* %28, i32** %18, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = load i32*, i32** %18, align 8
  %31 = call i64 @extent_head_no_merge(i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %39

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %7
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @extent_merge_default_impl(i8* %36, i8* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %33
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32* @tsdn_fetch(...) #1

declare dso_local i32* @iealloc(i32*, i8*) #1

declare dso_local i64 @extent_head_no_merge(i32*, i32*) #1

declare dso_local i32 @extent_merge_default_impl(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
