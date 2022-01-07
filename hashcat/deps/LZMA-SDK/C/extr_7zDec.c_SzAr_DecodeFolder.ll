; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zDec.c_SzAr_DecodeFolder.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zDec.c_SzAr_DecodeFolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i64*, i64*, %struct.TYPE_13__, i64*, i64, i32*, i32* }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32* }

@SZ_OK = common dso_local global i64 0, align 8
@SZ_ERROR_FAIL = common dso_local global i64 0, align 8
@SZ_ERROR_CRC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SzAr_DecodeFolder(%struct.TYPE_12__* %0, i64 %1, i32* %2, i32 %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [3 x i32*], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %24, i64 %31
  store i32* %32, i32** %19, align 8
  %33 = load i32*, i32** %19, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %41, %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = call i64 @SzGetNextFolderItem(%struct.TYPE_10__* %17, %struct.TYPE_11__* %18)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* @SZ_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %7
  %55 = load i64, i64* %16, align 8
  store i64 %55, i64* %8, align 8
  br label %150

56:                                               ; preds = %7
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %62, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %60
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @SzAr_GetFolderUnpackSize(%struct.TYPE_12__* %72, i64 %73)
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70, %60, %56
  %77 = load i64, i64* @SZ_ERROR_FAIL, align 8
  store i64 %77, i64* %8, align 8
  br label %150

78:                                               ; preds = %70
  %79 = bitcast [3 x i32*]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %79, i8 0, i64 24, i1 false)
  %80 = load i32*, i32** %19, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %93, %99
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** %13, align 8
  %104 = load i64, i64* %14, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %15, align 4
  %107 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 0
  %108 = call i64 @SzFolder_Decode2(%struct.TYPE_10__* %17, i32* %80, i32* %90, i64 %100, i32* %101, i32 %102, i32* %103, i32 %105, i32 %106, i32** %107)
  store i64 %108, i64* %16, align 8
  store i32 0, i32* %20, align 4
  br label %109

109:                                              ; preds = %119, %78
  %110 = load i32, i32* %20, align 4
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %20, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @ISzAlloc_Free(i32 %113, i32* %117)
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %20, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %20, align 4
  br label %109

122:                                              ; preds = %109
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* @SZ_OK, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %122
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load i64, i64* %10, align 8
  %130 = call i64 @SzBitWithVals_Check(%struct.TYPE_13__* %128, i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %126
  %133 = load i32*, i32** %13, align 8
  %134 = load i64, i64* %14, align 8
  %135 = call i64 @CrcCalc(i32* %133, i64 %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %135, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = load i64, i64* @SZ_ERROR_CRC, align 8
  store i64 %145, i64* %16, align 8
  br label %146

146:                                              ; preds = %144, %132
  br label %147

147:                                              ; preds = %146, %126
  br label %148

148:                                              ; preds = %147, %122
  %149 = load i64, i64* %16, align 8
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %148, %76, %54
  %151 = load i64, i64* %8, align 8
  ret i64 %151
}

declare dso_local i64 @SzGetNextFolderItem(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i64 @SzAr_GetFolderUnpackSize(%struct.TYPE_12__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @SzFolder_Decode2(%struct.TYPE_10__*, i32*, i32*, i64, i32*, i32, i32*, i32, i32, i32**) #1

declare dso_local i32 @ISzAlloc_Free(i32, i32*) #1

declare dso_local i64 @SzBitWithVals_Check(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @CrcCalc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
