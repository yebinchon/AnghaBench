; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/dec/extr_state.c_BrotliDecoderStateInitWithCustomAllocators.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/dec/extr_state.c_BrotliDecoderStateInitWithCustomAllocators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i64, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i32*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i32, i64 }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32*, i32* }

@DefaultAllocFunc = common dso_local global i64 0, align 8
@DefaultFreeFunc = common dso_local global i32 0, align 4
@BROTLI_STATE_UNINITED = common dso_local global i32 0, align 4
@BROTLI_STATE_METABLOCK_HEADER_NONE = common dso_local global i32 0, align 4
@BROTLI_STATE_TREE_GROUP_NONE = common dso_local global i32 0, align 4
@BROTLI_STATE_CONTEXT_MAP_NONE = common dso_local global i32 0, align 4
@BROTLI_STATE_UNCOMPRESSED_NONE = common dso_local global i32 0, align 4
@BROTLI_STATE_HUFFMAN_NONE = common dso_local global i32 0, align 4
@BROTLI_STATE_DECODE_UINT8_NONE = common dso_local global i32 0, align 4
@BROTLI_STATE_READ_BLOCK_LENGTH_NONE = common dso_local global i32 0, align 4
@BROTLI_HUFFMAN_MAX_CODE_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliDecoderStateInitWithCustomAllocators(%struct.TYPE_9__* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = load i64, i64* @DefaultAllocFunc, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 45
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* @DefaultFreeFunc, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 44
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 43
  store i8* null, i8** %19, align 8
  br label %30

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 45
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 44
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 43
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %20, %11
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 42
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 41
  %35 = call i32 @BrotliInitBitReader(i32* %34)
  %36 = load i32, i32* @BROTLI_STATE_UNINITED, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 40
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @BROTLI_STATE_METABLOCK_HEADER_NONE, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 39
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @BROTLI_STATE_TREE_GROUP_NONE, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 38
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @BROTLI_STATE_CONTEXT_MAP_NONE, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 37
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @BROTLI_STATE_UNCOMPRESSED_NONE, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 36
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @BROTLI_STATE_HUFFMAN_NONE, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 35
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @BROTLI_STATE_DECODE_UINT8_NONE, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 34
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @BROTLI_STATE_READ_BLOCK_LENGTH_NONE, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 33
  store i32 %57, i32* %59, align 4
  %60 = call i32 (...) @BrotliGetDictionary()
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 32
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 31
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 30
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 29
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 28
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 27
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 6
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  store i32* null, i32** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 26
  store i32* null, i32** %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 25
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 24
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 23
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 22
  store i32* null, i32** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 21
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 20
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 19
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 18
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 17
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 16
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 16
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 15
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 14
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 14
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 13
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 12
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 11
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 10
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 9
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 8
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 16, i32* %132, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 15, i32* %136, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  store i32 11, i32* %140, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  store i32 4, i32* %144, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 7
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 6
  store i32* null, i32** %148, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  store i32* null, i32** %150, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @BROTLI_HUFFMAN_MAX_CODE_LENGTH, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  store i32* %157, i32** %159, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  store i32 63, i32* %161, align 8
  ret void
}

declare dso_local i32 @BrotliInitBitReader(i32*) #1

declare dso_local i32 @BrotliGetDictionary(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
