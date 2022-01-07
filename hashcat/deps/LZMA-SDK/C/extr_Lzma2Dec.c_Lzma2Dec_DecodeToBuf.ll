; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Dec_DecodeToBuf.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Dec_DecodeToBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }

@LZMA_FINISH_ANY = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Lzma2Dec_DecodeToBuf(%struct.TYPE_6__* %0, i32* %1, i64* %2, i32* %3, i64* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %16, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %17, align 8
  %27 = load i64*, i64** %11, align 8
  store i64 0, i64* %27, align 8
  %28 = load i64*, i64** %13, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %118, %7
  %30 = load i64, i64* %17, align 8
  store i64 %30, i64* %18, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %20, align 8
  %49 = load i32, i32* @LZMA_FINISH_ANY, align 4
  store i32 %49, i32* %21, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %20, align 8
  %55 = sub nsw i64 %53, %54
  store i64 %55, i64* %19, align 8
  %56 = load i64, i64* %19, align 8
  %57 = load i64, i64* %16, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = load i64, i64* %16, align 8
  store i64 %60, i64* %19, align 8
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %21, align 4
  br label %62

62:                                               ; preds = %59, %44
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = load i64, i64* %20, align 8
  %65 = load i64, i64* %19, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %21, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = call i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_6__* %63, i64 %66, i32* %67, i64* %18, i32 %68, i32* %69)
  store i64 %70, i64* %22, align 8
  %71 = load i64, i64* %18, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 %71
  store i32* %73, i32** %12, align 8
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %17, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64*, i64** %13, align 8
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %77
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %20, align 8
  %86 = sub nsw i64 %84, %85
  store i64 %86, i64* %19, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %20, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i64, i64* %19, align 8
  %95 = call i32 @memcpy(i32* %87, i64 %93, i64 %94)
  %96 = load i64, i64* %19, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 %96
  store i32* %98, i32** %10, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* %16, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %102
  store i64 %105, i64* %103, align 8
  %106 = load i64, i64* %22, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %62
  %109 = load i64, i64* %22, align 8
  store i64 %109, i64* %8, align 8
  br label %119

110:                                              ; preds = %62
  %111 = load i64, i64* %19, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* %16, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113, %110
  %117 = load i64, i64* @SZ_OK, align 8
  store i64 %117, i64* %8, align 8
  br label %119

118:                                              ; preds = %113
  br label %29

119:                                              ; preds = %116, %108
  %120 = load i64, i64* %8, align 8
  ret i64 %120
}

declare dso_local i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_6__*, i64, i32*, i64*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
