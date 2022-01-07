; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_blockwise.c_cf_blockwise_xor.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_blockwise.c_cf_blockwise_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_blockwise_xor(i32* %0, i64* %1, i64 %2, i8* %3, i8* %4, i64 %5, i32 (i8*, i32*)* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32 (i8*, i32*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 (i8*, i32*)* %6, i32 (i8*, i32*)** %15, align 8
  store i8* %7, i8** %16, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %17, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %18, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %8
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ult i64 %29, %30
  br label %32

32:                                               ; preds = %27, %8
  %33 = phi i1 [ false, %8 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i1 [ true, %32 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %15, align 8
  %47 = icmp ne i32 (i8*, i32*)* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %16, align 8
  %50 = icmp ne i8* %49, null
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i1 [ false, %42 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %69, %51
  %56 = load i64, i64* %14, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %55
  %59 = load i64*, i64** %10, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %15, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 %63(i8* %64, i32* %65)
  %67 = load i64, i64* %11, align 8
  %68 = load i64*, i64** %10, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %62, %58
  %70 = load i64, i64* %11, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %70, %72
  store i64 %73, i64* %19, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i64 @MIN(i64 %75, i64 %76)
  store i64 %77, i64* %20, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i64, i64* %19, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i64, i64* %20, align 8
  %84 = call i32 @xor_bb(i32* %78, i32* %79, i32* %82, i64 %83)
  %85 = load i64, i64* %20, align 8
  %86 = load i64*, i64** %10, align 8
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, %85
  store i64 %88, i64* %86, align 8
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* %14, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %20, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 %92
  store i32* %94, i32** %18, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 %95
  store i32* %97, i32** %17, align 8
  br label %55

98:                                               ; preds = %55
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @xor_bb(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
