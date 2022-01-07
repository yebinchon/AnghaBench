; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process.c_path_search_walk_ext.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process.c_path_search_walk_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 99, i32 111, i32 109, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 101, i32 120, i32 101, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i32*, i64, i32*, i64, i32)* @path_search_walk_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @path_search_walk_ext(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %15, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %7
  %20 = load i32*, i32** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = call i32* @search_path_join_test(i32* %20, i64 %21, i32* %22, i64 %23, i8* bitcast ([1 x i32]* @.str to i8*), i32 0, i32* %24, i64 %25)
  store i32* %26, i32** %16, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32*, i32** %16, align 8
  store i32* %30, i32** %8, align 8
  br label %57

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %7
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32* @search_path_join_test(i32* %33, i64 %34, i32* %35, i64 %36, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32 3, i32* %37, i64 %38)
  store i32* %39, i32** %16, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32*, i32** %16, align 8
  store i32* %43, i32** %8, align 8
  br label %57

44:                                               ; preds = %32
  %45 = load i32*, i32** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32* @search_path_join_test(i32* %45, i64 %46, i32* %47, i64 %48, i8* bitcast ([4 x i32]* @.str.2 to i8*), i32 3, i32* %49, i64 %50)
  store i32* %51, i32** %16, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32*, i32** %16, align 8
  store i32* %55, i32** %8, align 8
  br label %57

56:                                               ; preds = %44
  store i32* null, i32** %8, align 8
  br label %57

57:                                               ; preds = %56, %54, %42, %29
  %58 = load i32*, i32** %8, align 8
  ret i32* %58
}

declare dso_local i32* @search_path_join_test(i32*, i64, i32*, i64, i8*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
