; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_metablock.c_BrotliBuildMetaBlockGreedy.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_metablock.c_BrotliBuildMetaBlockGreedy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliBuildMetaBlockGreedy(i32* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i64 %7, i32* %8, i32* %9, i64 %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i64 %7, i64* %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i64 %10, i64* %23, align 8
  store i32* %11, i32** %24, align 8
  %25 = load i64, i64* %20, align 8
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %39

27:                                               ; preds = %12
  %28 = load i32*, i32** %13, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %16, align 8
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %19, align 4
  %35 = load i32*, i32** %22, align 8
  %36 = load i64, i64* %23, align 8
  %37 = load i32*, i32** %24, align 8
  %38 = call i32 @BrotliBuildMetaBlockGreedyInternal(i32* %28, i32* %29, i64 %30, i64 %31, i32 %32, i32 %33, i32 %34, i64 1, i32* null, i32* %35, i64 %36, i32* %37)
  br label %53

39:                                               ; preds = %12
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %19, align 4
  %47 = load i64, i64* %20, align 8
  %48 = load i32*, i32** %21, align 8
  %49 = load i32*, i32** %22, align 8
  %50 = load i64, i64* %23, align 8
  %51 = load i32*, i32** %24, align 8
  %52 = call i32 @BrotliBuildMetaBlockGreedyInternal(i32* %40, i32* %41, i64 %42, i64 %43, i32 %44, i32 %45, i32 %46, i64 %47, i32* %48, i32* %49, i64 %50, i32* %51)
  br label %53

53:                                               ; preds = %39, %27
  ret void
}

declare dso_local i32 @BrotliBuildMetaBlockGreedyInternal(i32*, i32*, i64, i64, i32, i32, i32, i64, i32*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
