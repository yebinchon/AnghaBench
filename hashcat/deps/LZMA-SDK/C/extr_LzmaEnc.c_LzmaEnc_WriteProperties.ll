; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_WriteProperties.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_WriteProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@LZMA_PROPS_SIZE = common dso_local global i64 0, align 8
@SZ_ERROR_PARAM = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_WriteProperties(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LZMA_PROPS_SIZE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %22, i32* %4, align 4
  br label %102

23:                                               ; preds = %3
  %24 = load i64, i64* @LZMA_PROPS_SIZE, align 8
  %25 = load i64*, i64** %7, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = mul nsw i32 %33, 9
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 4194304
  br i1 %43, label %44, label %57

44:                                               ; preds = %23
  store i32 1048575, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 -1, %46
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %49, %44
  br label %82

57:                                               ; preds = %23
  store i32 11, i32* %9, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp ule i32 %59, 30
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 2, %63
  %65 = icmp sle i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 2, %67
  store i32 %68, i32* %10, align 4
  br label %81

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 3, %71
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 3, %75
  store i32 %76, i32* %10, align 4
  br label %81

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %58

81:                                               ; preds = %74, %66, %58
  br label %82

82:                                               ; preds = %81, %56
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %97, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp ult i32 %84, 4
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = mul i32 8, %88
  %90 = ashr i32 %87, %89
  %91 = sext i32 %90 to i64
  %92 = load i64*, i64** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add i32 1, %93
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  store i64 %91, i64* %96, align 8
  br label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %83

100:                                              ; preds = %83
  %101 = load i32, i32* @SZ_OK, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %21
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
