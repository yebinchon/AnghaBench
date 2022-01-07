; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_BrotliStoreMetaBlockTrivial.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_BrotliStoreMetaBlockTrivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@BROTLI_NUM_LITERAL_SYMBOLS = common dso_local global i32 0, align 4
@BROTLI_NUM_COMMAND_SYMBOLS = common dso_local global i32 0, align 4
@SIMPLE_DISTANCE_ALPHABET_SIZE = common dso_local global i32 0, align 4
@HuffmanTree = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@MAX_HUFFMAN_TREE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliStoreMetaBlockTrivial(i32* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32* %6, i64 %7, i64* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_10__, align 4
  %22 = alloca %struct.TYPE_12__, align 4
  %23 = alloca %struct.TYPE_11__, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64* %8, i64** %19, align 8
  store i32* %9, i32** %20, align 8
  %32 = load i32, i32* @BROTLI_NUM_LITERAL_SYMBOLS, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %24, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %25, align 8
  %36 = load i32, i32* @BROTLI_NUM_LITERAL_SYMBOLS, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %26, align 8
  %39 = load i32, i32* @BROTLI_NUM_COMMAND_SYMBOLS, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %27, align 8
  %42 = load i32, i32* @BROTLI_NUM_COMMAND_SYMBOLS, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %28, align 8
  %45 = load i32, i32* @SIMPLE_DISTANCE_ALPHABET_SIZE, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %29, align 8
  %48 = load i32, i32* @SIMPLE_DISTANCE_ALPHABET_SIZE, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %30, align 8
  %51 = load i32, i32* @HuffmanTree, align 4
  %52 = load i32, i32* @tree, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64*, i64** %19, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = call i32 @StoreCompressedMetaBlockHeader(i64 %54, i64 %55, i64* %56, i32* %57)
  %59 = call i32 @HistogramClearLiteral(%struct.TYPE_10__* %21)
  %60 = call i32 @HistogramClearCommand(%struct.TYPE_12__* %22)
  %61 = call i32 @HistogramClearDistance(%struct.TYPE_11__* %23)
  %62 = load i32*, i32** %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = load i64, i64* %18, align 8
  %67 = call i32 @BuildHistograms(i32* %62, i64 %63, i64 %64, i32* %65, i64 %66, %struct.TYPE_10__* %21, %struct.TYPE_12__* %22, %struct.TYPE_11__* %23)
  %68 = load i64*, i64** %19, align 8
  %69 = load i32*, i32** %20, align 8
  %70 = call i32 @BrotliWriteBits(i32 13, i32 0, i64* %68, i32* %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* @HuffmanTree, align 4
  %73 = load i32, i32* @MAX_HUFFMAN_TREE_SIZE, align 4
  %74 = call i32 @BROTLI_ALLOC(i32* %71, i32 %72, i32 %73)
  store i32 %74, i32* @tree, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = call i64 @BROTLI_IS_OOM(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %10
  store i32 1, i32* %31, align 4
  br label %119

79:                                               ; preds = %10
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BROTLI_NUM_LITERAL_SYMBOLS, align 4
  %83 = load i32, i32* @tree, align 4
  %84 = load i64*, i64** %19, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = call i32 @BuildAndStoreHuffmanTree(i32 %81, i32 %82, i32 %83, i32* %35, i32* %38, i64* %84, i32* %85)
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BROTLI_NUM_COMMAND_SYMBOLS, align 4
  %90 = load i32, i32* @tree, align 4
  %91 = load i64*, i64** %19, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = call i32 @BuildAndStoreHuffmanTree(i32 %88, i32 %89, i32 %90, i32* %41, i32* %44, i64* %91, i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SIMPLE_DISTANCE_ALPHABET_SIZE, align 4
  %97 = load i32, i32* @tree, align 4
  %98 = load i64*, i64** %19, align 8
  %99 = load i32*, i32** %20, align 8
  %100 = call i32 @BuildAndStoreHuffmanTree(i32 %95, i32 %96, i32 %97, i32* %47, i32* %50, i64* %98, i32* %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* @tree, align 4
  %103 = call i32 @BROTLI_FREE(i32* %101, i32 %102)
  %104 = load i32*, i32** %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = load i64, i64* %18, align 8
  %109 = load i64*, i64** %19, align 8
  %110 = load i32*, i32** %20, align 8
  %111 = call i32 @StoreDataWithHuffmanCodes(i32* %104, i64 %105, i64 %106, i32* %107, i64 %108, i32* %35, i32* %38, i32* %41, i32* %44, i32* %47, i32* %50, i64* %109, i32* %110)
  %112 = load i64, i64* %16, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %79
  %115 = load i64*, i64** %19, align 8
  %116 = load i32*, i32** %20, align 8
  %117 = call i32 @JumpToByteBoundary(i64* %115, i32* %116)
  br label %118

118:                                              ; preds = %114, %79
  store i32 0, i32* %31, align 4
  br label %119

119:                                              ; preds = %118, %78
  %120 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %31, align 4
  switch i32 %121, label %123 [
    i32 0, label %122
    i32 1, label %122
  ]

122:                                              ; preds = %119, %119
  ret void

123:                                              ; preds = %119
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StoreCompressedMetaBlockHeader(i64, i64, i64*, i32*) #2

declare dso_local i32 @HistogramClearLiteral(%struct.TYPE_10__*) #2

declare dso_local i32 @HistogramClearCommand(%struct.TYPE_12__*) #2

declare dso_local i32 @HistogramClearDistance(%struct.TYPE_11__*) #2

declare dso_local i32 @BuildHistograms(i32*, i64, i64, i32*, i64, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_11__*) #2

declare dso_local i32 @BrotliWriteBits(i32, i32, i64*, i32*) #2

declare dso_local i32 @BROTLI_ALLOC(i32*, i32, i32) #2

declare dso_local i64 @BROTLI_IS_OOM(i32*) #2

declare dso_local i32 @BuildAndStoreHuffmanTree(i32, i32, i32, i32*, i32*, i64*, i32*) #2

declare dso_local i32 @BROTLI_FREE(i32*, i32) #2

declare dso_local i32 @StoreDataWithHuffmanCodes(i32*, i64, i64, i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*) #2

declare dso_local i32 @JumpToByteBoundary(i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
