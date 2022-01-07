; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzReadAndDecodePackedStreams.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzReadAndDecodePackedStreams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@SZ_ERROR_ARCHIVE = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_11__*, i64, i64, %struct.TYPE_10__*, i32)* @SzReadAndDecodePackedStreams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SzReadAndDecodePackedStreams(i32* %0, i32* %1, %struct.TYPE_11__* %2, i64 %3, i64 %4, %struct.TYPE_10__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @SzReadStreamsInfo(%struct.TYPE_10__* %22, i32* %23, i64 %24, i32* null, i32 0, i64* %16, i32* %18, i32 %25)
  %27 = call i32 @RINOK(i32 %26)
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %16, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %16, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %36, i32* %8, align 4
  br label %116

37:                                               ; preds = %7
  store i64 0, i64* %17, align 8
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i64, i64* %17, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = load i64, i64* %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %46
  %48 = call i32 @Buf_Init(%struct.TYPE_11__* %47)
  br label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %17, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %17, align 8
  br label %38

52:                                               ; preds = %38
  store i64 0, i64* %17, align 8
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i64, i64* %17, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = load i64, i64* %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %61
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %19, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %64 = load i64, i64* %17, align 8
  %65 = call i64 @SzAr_GetFolderUnpackSize(%struct.TYPE_10__* %63, i64 %64)
  store i64 %65, i64* %20, align 8
  %66 = load i64, i64* %20, align 8
  %67 = load i64, i64* %20, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %70, i32* %8, align 4
  br label %116

71:                                               ; preds = %59
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @Buf_Create(%struct.TYPE_11__* %72, i64 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %78, i32* %8, align 4
  br label %116

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %17, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %17, align 8
  br label %53

83:                                               ; preds = %53
  store i64 0, i64* %17, align 8
  br label %84

84:                                               ; preds = %111, %83
  %85 = load i64, i64* %17, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %84
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %92 = load i64, i64* %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %92
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %21, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i64, i64* %16, align 8
  %96 = call i32 @LookInStream_SeekTo(i32* %94, i64 %95)
  %97 = call i32 @RINOK(i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %99 = load i64, i64* %17, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @SzAr_DecodeFolder(%struct.TYPE_10__* %98, i64 %99, i32* %100, i64 %101, i32 %104, i32 %107, i32 %108)
  %110 = call i32 @RINOK(i32 %109)
  br label %111

111:                                              ; preds = %90
  %112 = load i64, i64* %17, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %17, align 8
  br label %84

114:                                              ; preds = %84
  %115 = load i32, i32* @SZ_OK, align 4
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %114, %77, %69, %35
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @SzReadStreamsInfo(%struct.TYPE_10__*, i32*, i64, i32*, i32, i64*, i32*, i32) #1

declare dso_local i32 @Buf_Init(%struct.TYPE_11__*) #1

declare dso_local i64 @SzAr_GetFolderUnpackSize(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @Buf_Create(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @LookInStream_SeekTo(i32*, i64) #1

declare dso_local i32 @SzAr_DecodeFolder(%struct.TYPE_10__*, i64, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
