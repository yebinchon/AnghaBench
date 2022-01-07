; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_cf_curve25519_mul.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_cf_curve25519_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_curve25519_mul(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [10 x i32], align 16
  %8 = alloca [10 x i32], align 16
  %9 = alloca [11 x i32], align 16
  %10 = alloca [10 x i32], align 16
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %25, %3
  %14 = load i32, i32* %12, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  br label %13

28:                                               ; preds = %13
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = and i32 %30, 248
  store i32 %31, i32* %29, align 16
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 31
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, 64
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @fexpand(i32* %38, i32* %39)
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %42 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 0
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %45 = call i32 @cmult(i32* %41, i32* %42, i32* %43, i32* %44)
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %47 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 0
  %48 = call i32 @crecip(i32* %46, i32* %47)
  %49 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 0
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %52 = call i32 @fmul(i32* %49, i32* %50, i32* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 0
  %55 = call i32 @fcontract(i32* %53, i32* %54)
  ret void
}

declare dso_local i32 @fexpand(i32*, i32*) #1

declare dso_local i32 @cmult(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @crecip(i32*, i32*) #1

declare dso_local i32 @fmul(i32*, i32*, i32*) #1

declare dso_local i32 @fcontract(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
