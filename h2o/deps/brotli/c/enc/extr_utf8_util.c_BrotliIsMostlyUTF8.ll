; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_utf8_util.c_BrotliIsMostlyUTF8.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_utf8_util.c_BrotliIsMostlyUTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrotliIsMostlyUTF8(i32* %0, i64 %1, i64 %2, i64 %3, double %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store double %4, double* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %40, %5
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %12, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* %8, align 8
  %25 = and i64 %23, %24
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %12, align 8
  %29 = sub i64 %27, %28
  %30 = call i64 @BrotliParseAsUTF8(i32* %13, i32* %26, i64 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %12, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 1114112
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %36, %19
  br label %15

41:                                               ; preds = %15
  %42 = load i64, i64* %11, align 8
  %43 = uitofp i64 %42 to double
  %44 = load double, double* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = uitofp i64 %45 to double
  %47 = fmul double %44, %46
  %48 = fcmp ogt double %43, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @TO_BROTLI_BOOL(i32 %49)
  ret i32 %50
}

declare dso_local i64 @BrotliParseAsUTF8(i32*, i32*, i64) #1

declare dso_local i32 @TO_BROTLI_BOOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
