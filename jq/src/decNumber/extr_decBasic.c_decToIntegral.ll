; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decToIntegral.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decToIntegral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@DECCOMBEXP = common dso_local global i64* null, align 8
@DECBIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_5__*, i32, i32)* @decToIntegral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decToIntegral(i32* %0, i32* %1, %struct.TYPE_5__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @DFWORD(i32* %17, i32 0)
  store i32 %18, i32* %13, align 4
  %19 = load i64*, i64** @DECCOMBEXP, align 8
  %20 = load i32, i32* %13, align 4
  %21 = ashr i32 %20, 26
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @EXPISSPECIAL(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %5
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @DFISNAN(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = call i32* @decNaNs(i32* %33, i32* %34, i32* null, %struct.TYPE_5__* %35)
  store i32* %36, i32** %6, align 8
  br label %80

37:                                               ; preds = %28
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @decInfinity(i32* %38, i32* %39)
  store i32* %40, i32** %6, align 8
  br label %80

41:                                               ; preds = %5
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @GETECON(i32* %42)
  %44 = load i64, i64* @DECBIAS, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32* @decCanonical(i32* %51, i32* %52)
  store i32* %53, i32** %6, align 8
  br label %80

54:                                               ; preds = %41
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = call i32 @decFloatZero(i32* %16)
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = call i32 @decFloatQuantize(i32* %65, i32* %66, i32* %16, %struct.TYPE_5__* %67)
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %54
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %54
  %79 = load i32*, i32** %7, align 8
  store i32* %79, i32** %6, align 8
  br label %80

80:                                               ; preds = %78, %50, %37, %32
  %81 = load i32*, i32** %6, align 8
  ret i32* %81
}

declare dso_local i32 @DFWORD(i32*, i32) #1

declare dso_local i64 @EXPISSPECIAL(i64) #1

declare dso_local i64 @DFISNAN(i32*) #1

declare dso_local i32* @decNaNs(i32*, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32* @decInfinity(i32*, i32*) #1

declare dso_local i64 @GETECON(i32*) #1

declare dso_local i32* @decCanonical(i32*, i32*) #1

declare dso_local i32 @decFloatZero(i32*) #1

declare dso_local i32 @decFloatQuantize(i32*, i32*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
