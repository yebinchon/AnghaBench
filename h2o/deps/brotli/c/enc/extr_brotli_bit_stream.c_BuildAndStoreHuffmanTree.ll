; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_BuildAndStoreHuffmanTree.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_BuildAndStoreHuffmanTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i32*, i64*, i64*, i64*, i64*)* @BuildAndStoreHuffmanTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BuildAndStoreHuffmanTree(i64* %0, i64 %1, i32* %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [4 x i64], align 16
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  store i64 0, i64* %15, align 8
  %20 = bitcast [4 x i64]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 32, i1 false)
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %21

21:                                               ; preds = %47, %7
  %22 = load i64, i64* %17, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %17, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load i64, i64* %15, align 8
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %15, align 8
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 %36
  store i64 %35, i64* %37, align 8
  br label %43

38:                                               ; preds = %31
  %39 = load i64, i64* %15, align 8
  %40 = icmp ugt i64 %39, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %50

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i64, i64* %15, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %15, align 8
  br label %46

46:                                               ; preds = %43, %25
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %17, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %17, align 8
  br label %21

50:                                               ; preds = %41, %21
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %51, 1
  store i64 %52, i64* %19, align 8
  br label %53

53:                                               ; preds = %56, %50
  %54 = load i64, i64* %19, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* %19, align 8
  %58 = lshr i64 %57, 1
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %18, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %18, align 8
  br label %53

61:                                               ; preds = %53
  %62 = load i64, i64* %15, align 8
  %63 = icmp ule i64 %62, 1
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load i64*, i64** %13, align 8
  %66 = load i64*, i64** %14, align 8
  %67 = call i32 @BrotliWriteBits(i64 4, i64 1, i64* %65, i64* %66)
  %68 = load i64, i64* %18, align 8
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %70 = load i64, i64* %69, align 16
  %71 = load i64*, i64** %13, align 8
  %72 = load i64*, i64** %14, align 8
  %73 = call i32 @BrotliWriteBits(i64 %68, i64 %70, i64* %71, i64* %72)
  %74 = load i64*, i64** %11, align 8
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %76 = load i64, i64* %75, align 16
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 0, i64* %77, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %80 = load i64, i64* %79, align 16
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 0, i64* %81, align 8
  br label %113

82:                                               ; preds = %61
  %83 = load i64*, i64** %11, align 8
  %84 = load i64, i64* %9, align 8
  %85 = mul i64 %84, 8
  %86 = call i32 @memset(i64* %83, i32 0, i64 %85)
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i64*, i64** %11, align 8
  %91 = call i32 @BrotliCreateHuffmanTree(i64* %87, i64 %88, i32 15, i32* %89, i64* %90)
  %92 = load i64*, i64** %11, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64*, i64** %12, align 8
  %95 = call i32 @BrotliConvertBitDepthsToSymbols(i64* %92, i64 %93, i64* %94)
  %96 = load i64, i64* %15, align 8
  %97 = icmp ule i64 %96, 4
  br i1 %97, label %98, label %106

98:                                               ; preds = %82
  %99 = load i64*, i64** %11, align 8
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i64*, i64** %13, align 8
  %104 = load i64*, i64** %14, align 8
  %105 = call i32 @StoreSimpleHuffmanTree(i64* %99, i64* %100, i64 %101, i64 %102, i64* %103, i64* %104)
  br label %113

106:                                              ; preds = %82
  %107 = load i64*, i64** %11, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i64*, i64** %13, align 8
  %111 = load i64*, i64** %14, align 8
  %112 = call i32 @BrotliStoreHuffmanTree(i64* %107, i64 %108, i32* %109, i64* %110, i64* %111)
  br label %113

113:                                              ; preds = %64, %106, %98
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BrotliWriteBits(i64, i64, i64*, i64*) #2

declare dso_local i32 @memset(i64*, i32, i64) #2

declare dso_local i32 @BrotliCreateHuffmanTree(i64*, i64, i32, i32*, i64*) #2

declare dso_local i32 @BrotliConvertBitDepthsToSymbols(i64*, i64, i64*) #2

declare dso_local i32 @StoreSimpleHuffmanTree(i64*, i64*, i64, i64, i64*, i64*) #2

declare dso_local i32 @BrotliStoreHuffmanTree(i64*, i64, i32*, i64*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
