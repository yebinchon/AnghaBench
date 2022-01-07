; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_blockwise.c_cf_blockwise_acc_pad.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_blockwise.c_cf_blockwise_acc_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_blockwise_acc_pad(i32* %0, i64* %1, i64 %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i64* %1, i64** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %19 = load i64, i64* %16, align 8
  switch i64 %19, label %44 [
    i64 0, label %20
    i64 1, label %21
    i64 2, label %31
  ]

20:                                               ; preds = %9
  br label %81

21:                                               ; preds = %9
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %13, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* %13, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i32, i32* %17, align 4
  %29 = load i8*, i8** %18, align 8
  %30 = call i32 @cf_blockwise_accumulate(i32* %25, i64* %26, i64 %27, i32* %13, i32 1, i32 %28, i8* %29)
  br label %81

31:                                               ; preds = %9
  %32 = load i32*, i32** %10, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i8*, i8** %18, align 8
  %37 = call i32 @cf_blockwise_accumulate(i32* %32, i64* %33, i64 %34, i32* %13, i32 1, i32 %35, i8* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i8*, i8** %18, align 8
  %43 = call i32 @cf_blockwise_accumulate(i32* %38, i64* %39, i64 %40, i32* %15, i32 1, i32 %41, i8* %42)
  br label %81

44:                                               ; preds = %9
  %45 = load i32*, i32** %10, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load i8*, i8** %18, align 8
  %50 = call i32 @cf_blockwise_accumulate(i32* %45, i64* %46, i64 %47, i32* %13, i32 1, i32 %48, i8* %49)
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %44
  %55 = load i32*, i32** %10, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i64, i64* %16, align 8
  %60 = sub i64 %59, 2
  %61 = load i32, i32* %17, align 4
  %62 = load i8*, i8** %18, align 8
  %63 = call i32 @cf_blockwise_acc_byte(i32* %55, i64* %56, i64 %57, i32 %58, i64 %60, i32 %61, i8* %62)
  %64 = load i32*, i32** %10, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load i8*, i8** %18, align 8
  %69 = call i32 @cf_blockwise_accumulate(i32* %64, i64* %65, i64 %66, i32* %15, i32 1, i32 %67, i8* %68)
  br label %80

70:                                               ; preds = %44
  %71 = load i32*, i32** %10, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i64, i64* %16, align 8
  %76 = sub i64 %75, 1
  %77 = load i32, i32* %17, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = call i32 @cf_blockwise_acc_byte(i32* %71, i64* %72, i64 %73, i32 %74, i64 %76, i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %70, %54
  br label %81

81:                                               ; preds = %80, %31, %21, %20
  ret void
}

declare dso_local i32 @cf_blockwise_accumulate(i32*, i64*, i64, i32*, i32, i32, i8*) #1

declare dso_local i32 @cf_blockwise_acc_byte(i32*, i64*, i64, i32, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
