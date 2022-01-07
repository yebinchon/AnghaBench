; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_blockwise.c_cf_blockwise_acc_byte.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_blockwise.c_cf_blockwise_acc_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_blockwise_acc_byte(i32* %0, i64* %1, i64 %2, i32 %3, i64 %4, i32 (i8*, i32*)* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32 (i8*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 (i8*, i32*)* %5, i32 (i8*, i32*)** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %63, %7
  %19 = load i64, i64* %12, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %18
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %16, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %16, align 8
  %27 = sub i64 %25, %26
  %28 = call i64 @MIN(i64 %24, i64 %27)
  store i64 %28, i64* %17, align 8
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %21
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %16, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %17, align 8
  %37 = call i32 @memset(i32* %34, i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %31, %21
  %39 = load i64, i64* %16, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %15, align 4
  br label %46

46:                                               ; preds = %45, %41, %38
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* %17, align 8
  %49 = add i64 %47, %48
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %13, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 %53(i8* %54, i32* %55)
  %57 = load i64*, i64** %9, align 8
  store i64 0, i64* %57, align 8
  br label %63

58:                                               ; preds = %46
  %59 = load i64, i64* %17, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %59
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* %12, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %12, align 8
  br label %18

67:                                               ; preds = %18
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
