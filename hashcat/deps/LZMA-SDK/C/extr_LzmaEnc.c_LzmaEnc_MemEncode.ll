; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_MemEncode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_MemEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__, i32* }

@SeqOutStreamBuf_Write = common dso_local global i32 0, align 4
@False = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@SZ_ERROR_FAIL = common dso_local global i64 0, align 8
@SZ_ERROR_OUTPUT_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LzmaEnc_MemEncode(i64 %0, i32* %1, i64* %2, i32* %3, i64 %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca %struct.TYPE_8__, align 8
  store i64 %0, i64* %11, align 8
  store i32* %1, i32** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load i64, i64* %11, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %21, align 8
  %25 = load i32, i32* @SeqOutStreamBuf_Write, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i32* %28, i32** %29, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* @False, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %41, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %19, align 4
  %47 = call i64 @LzmaEnc_MemPrepare(i64 %42, i32* %43, i64 %44, i32 0, i32 %45, i32 %46)
  store i64 %47, i64* %20, align 8
  %48 = load i64, i64* %20, align 8
  %49 = load i64, i64* @SZ_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %9
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = call i64 @LzmaEnc_Encode2(%struct.TYPE_9__* %52, i32* %53)
  store i64 %54, i64* %20, align 8
  %55 = load i64, i64* %20, align 8
  %56 = load i64, i64* @SZ_OK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i64, i64* @SZ_ERROR_FAIL, align 8
  store i64 %65, i64* %20, align 8
  br label %66

66:                                               ; preds = %64, %58, %51
  br label %67

67:                                               ; preds = %66, %9
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %13, align 8
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, %69
  store i64 %72, i64* %70, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  store i64 %77, i64* %10, align 8
  br label %80

78:                                               ; preds = %67
  %79 = load i64, i64* %20, align 8
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i64, i64* %10, align 8
  ret i64 %81
}

declare dso_local i64 @LzmaEnc_MemPrepare(i64, i32*, i64, i32, i32, i32) #1

declare dso_local i64 @LzmaEnc_Encode2(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
