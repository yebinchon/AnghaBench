; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_BrotliEncoderSetParameter.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_BrotliEncoderSetParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@BROTLI_FALSE = common dso_local global i32 0, align 4
@BROTLI_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrotliEncoderSetParameter(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %13, i32* %4, align 4
  br label %67

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %65 [
    i32 130, label %16
    i32 129, label %22
    i32 131, label %28
    i32 132, label %34
    i32 133, label %40
    i32 128, label %59
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %21, i32* %4, align 4
  br label %67

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %27, i32* %4, align 4
  br label %67

28:                                               ; preds = %14
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %67

34:                                               ; preds = %14
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %39, i32* %4, align 4
  br label %67

40:                                               ; preds = %14
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %47, i32* %4, align 4
  br label %67

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @TO_BROTLI_BOOL(i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %58, i32* %4, align 4
  br label %67

59:                                               ; preds = %14
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %64, i32* %4, align 4
  br label %67

65:                                               ; preds = %14
  %66 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %59, %48, %46, %34, %28, %22, %16, %12
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @TO_BROTLI_BOOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
