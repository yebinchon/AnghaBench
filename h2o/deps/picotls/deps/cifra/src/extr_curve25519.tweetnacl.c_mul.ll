; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_mul.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mul(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [31 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %16, %3
  %11 = load i64, i64* %8, align 8
  %12 = icmp ult i64 %11, 31
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 %14
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %8, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %8, align 8
  br label %10

19:                                               ; preds = %10
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %21, 16
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %25, 16
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %31, %35
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %36
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %27
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %24

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %20

50:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i64, i64* %8, align 8
  %53 = icmp ult i64 %52, 15
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 16
  %57 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 38, %58
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %54
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %51

67:                                               ; preds = %51
  store i64 0, i64* %8, align 8
  br label %68

68:                                               ; preds = %78, %67
  %69 = load i64, i64* %8, align 8
  %70 = icmp ult i64 %69, 16
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds [31 x i32], [31 x i32]* %7, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %68

81:                                               ; preds = %68
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @car25519(i32* %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @car25519(i32* %84)
  ret void
}

declare dso_local i32 @car25519(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
