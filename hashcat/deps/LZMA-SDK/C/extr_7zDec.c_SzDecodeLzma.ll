; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zDec.c_SzDecodeLzma.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zDec.c_SzDecodeLzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32* }

@SZ_OK = common dso_local global i64 0, align 8
@LZMA_FINISH_END = common dso_local global i32 0, align 4
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i64 0, align 8
@LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i32*, i32*, i64, i32)* @SzDecodeLzma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SzDecodeLzma(i32* %0, i32 %1, i64 %2, i32* %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load i64, i64* @SZ_OK, align 8
  store i64 %22, i64* %16, align 8
  %23 = call i32 @LzmaDec_Construct(%struct.TYPE_7__* %15)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @LzmaDec_AllocateProbs(%struct.TYPE_7__* %15, i32* %24, i32 %25, i32 %26)
  %28 = call i32 @RINOK(i32 %27)
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i32* %29, i32** %30, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = call i32 @LzmaDec_Init(%struct.TYPE_7__* %15)
  br label %34

34:                                               ; preds = %112, %7
  store i8* null, i8** %17, align 8
  store i64 262144, i64* %18, align 8
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %18, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32*, i32** %11, align 8
  %42 = call i64 @ILookInStream_Look(i32* %41, i8** %17, i64* %18)
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* @SZ_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %113

47:                                               ; preds = %40
  %48 = load i64, i64* %18, align 8
  store i64 %48, i64* %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %20, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* @LZMA_FINISH_END, align 4
  %55 = call i64 @LzmaDec_DecodeToDic(%struct.TYPE_7__* %15, i64 %51, i32* %53, i64* %19, i32 %54, i64* %21)
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %19, align 8
  %57 = load i64, i64* %18, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %18, align 8
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* %10, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i64, i64* @SZ_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  br label %113

66:                                               ; preds = %47
  %67 = load i64, i64* %21, align 8
  %68 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75, %70
  %79 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %79, i64* %16, align 8
  br label %80

80:                                               ; preds = %78, %75
  br label %113

81:                                               ; preds = %66
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i64, i64* %10, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i64, i64* %21, align 8
  %91 = load i64, i64* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %113

94:                                               ; preds = %89, %86, %81
  %95 = load i64, i64* %19, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i64, i64* %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %103, i64* %16, align 8
  br label %113

104:                                              ; preds = %97, %94
  %105 = load i32*, i32** %11, align 8
  %106 = load i64, i64* %19, align 8
  %107 = call i64 @ILookInStream_Skip(i32* %105, i64 %106)
  store i64 %107, i64* %16, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* @SZ_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %113

112:                                              ; preds = %104
  br label %34

113:                                              ; preds = %111, %102, %93, %80, %65, %46
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @LzmaDec_FreeProbs(%struct.TYPE_7__* %15, i32 %114)
  %116 = load i64, i64* %16, align 8
  ret i64 %116
}

declare dso_local i32 @LzmaDec_Construct(%struct.TYPE_7__*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @LzmaDec_AllocateProbs(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @LzmaDec_Init(%struct.TYPE_7__*) #1

declare dso_local i64 @ILookInStream_Look(i32*, i8**, i64*) #1

declare dso_local i64 @LzmaDec_DecodeToDic(%struct.TYPE_7__*, i64, i32*, i64*, i32, i64*) #1

declare dso_local i64 @ILookInStream_Skip(i32*, i64) #1

declare dso_local i32 @LzmaDec_FreeProbs(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
