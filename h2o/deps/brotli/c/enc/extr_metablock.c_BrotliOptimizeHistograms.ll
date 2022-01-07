; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_metablock.c_BrotliOptimizeHistograms.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_metablock.c_BrotliOptimizeHistograms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BROTLI_NUM_COMMAND_SYMBOLS = common dso_local global i32 0, align 4
@BROTLI_NUM_DISTANCE_SHORT_CODES = common dso_local global i64 0, align 8
@BROTLI_MAX_DISTANCE_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliOptimizeHistograms(i64 %0, i64 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %11 = load i32, i32* @BROTLI_NUM_COMMAND_SYMBOLS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %30, %3
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BrotliOptimizeHuffmanCountsForRle(i64 256, i32 %28, i32* %14)
  br label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %10, align 8
  br label %15

33:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i32, i32* @BROTLI_NUM_COMMAND_SYMBOLS, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BrotliOptimizeHuffmanCountsForRle(i64 %42, i32 %49, i32* %14)
  br label %51

51:                                               ; preds = %40
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %34

54:                                               ; preds = %34
  %55 = load i64, i64* @BROTLI_NUM_DISTANCE_SHORT_CODES, align 8
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %55, %56
  %58 = load i32, i32* @BROTLI_MAX_DISTANCE_BITS, align 4
  %59 = mul nsw i32 2, %58
  %60 = load i64, i64* %5, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %59, %61
  %63 = sext i32 %62 to i64
  %64 = add i64 %57, %63
  store i64 %64, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %81, %54
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BrotliOptimizeHuffmanCountsForRle(i64 %72, i32 %79, i32* %14)
  br label %81

81:                                               ; preds = %71
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %65

84:                                               ; preds = %65
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BrotliOptimizeHuffmanCountsForRle(i64, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
