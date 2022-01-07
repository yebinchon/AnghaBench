; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent_mmap.c_extent_alloc_mmap.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent_mmap.c_extent_alloc_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @extent_alloc_mmap(i8* %0, i64 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32, i32* @PAGE, align 4
  %16 = call i64 @ALIGNMENT_CEILING(i64 %14, i32 %15)
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i8* @pages_map(i8* %20, i64 %21, i64 %22, i32* %23)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %40

28:                                               ; preds = %5
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32*, i32** %10, align 8
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %6, align 8
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i8*, i8** %6, align 8
  ret i8* %41
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i32) #1

declare dso_local i8* @pages_map(i8*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
