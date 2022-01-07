; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzArEx_Extract.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzArEx_Extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64*, i64*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64* }

@SZ_OK = common dso_local global i64 0, align 8
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_ERROR_FAIL = common dso_local global i64 0, align 8
@SZ_ERROR_CRC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SzArEx_Extract(%struct.TYPE_4__* %0, i32* %1, i64 %2, i64* %3, i32** %4, i64* %5, i64* %6, i64* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64* %3, i64** %15, align 8
  store i32** %4, i32*** %16, align 8
  store i64* %5, i64** %17, align 8
  store i64* %6, i64** %18, align 8
  store i64* %7, i64** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %14, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %22, align 8
  %33 = load i64, i64* @SZ_OK, align 8
  store i64 %33, i64* %23, align 8
  %34 = load i64*, i64** %18, align 8
  store i64 0, i64* %34, align 8
  %35 = load i64*, i64** %19, align 8
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %22, align 8
  %37 = icmp eq i64 %36, -1
  br i1 %37, label %38, label %48

38:                                               ; preds = %10
  %39 = load i32, i32* %20, align 4
  %40 = load i32**, i32*** %16, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @ISzAlloc_Free(i32 %39, i32* %41)
  %43 = load i64, i64* %22, align 8
  %44 = load i64*, i64** %15, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32**, i32*** %16, align 8
  store i32* null, i32** %45, align 8
  %46 = load i64*, i64** %17, align 8
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* @SZ_OK, align 8
  store i64 %47, i64* %11, align 8
  br label %189

48:                                               ; preds = %10
  %49 = load i32**, i32*** %16, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i64*, i64** %15, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %22, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %115

57:                                               ; preds = %52, %48
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load i64, i64* %22, align 8
  %61 = call i64 @SzAr_GetFolderUnpackSize(i32* %59, i64 %60)
  store i64 %61, i64* %24, align 8
  %62 = load i64, i64* %24, align 8
  store i64 %62, i64* %25, align 8
  %63 = load i64, i64* %25, align 8
  %64 = load i64, i64* %24, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %67, i64* %11, align 8
  br label %189

68:                                               ; preds = %57
  %69 = load i64, i64* %22, align 8
  %70 = load i64*, i64** %15, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* %20, align 4
  %72 = load i32**, i32*** %16, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ISzAlloc_Free(i32 %71, i32* %73)
  %75 = load i32**, i32*** %16, align 8
  store i32* null, i32** %75, align 8
  %76 = load i64, i64* %23, align 8
  %77 = load i64, i64* @SZ_OK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %68
  %80 = load i64, i64* %25, align 8
  %81 = load i64*, i64** %17, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i64, i64* %25, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load i32, i32* %20, align 4
  %86 = load i64, i64* %25, align 8
  %87 = call i64 @ISzAlloc_Alloc(i32 %85, i64 %86)
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32**, i32*** %16, align 8
  store i32* %88, i32** %89, align 8
  %90 = load i32**, i32*** %16, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %94, i64* %23, align 8
  br label %95

95:                                               ; preds = %93, %84
  br label %96

96:                                               ; preds = %95, %79
  %97 = load i64, i64* %23, align 8
  %98 = load i64, i64* @SZ_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  %103 = load i64, i64* %22, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32**, i32*** %16, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %25, align 8
  %111 = load i32, i32* %21, align 4
  %112 = call i64 @SzAr_DecodeFolder(i32* %102, i64 %103, i32* %104, i32 %107, i32* %109, i64 %110, i32 %111)
  store i64 %112, i64* %23, align 8
  br label %113

113:                                              ; preds = %100, %96
  br label %114

114:                                              ; preds = %113, %68
  br label %115

115:                                              ; preds = %114, %52
  %116 = load i64, i64* %23, align 8
  %117 = load i64, i64* @SZ_OK, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %187

119:                                              ; preds = %115
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %14, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %26, align 8
  %126 = load i64, i64* %26, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %22, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i64, i64* %129, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %126, %137
  %139 = load i64*, i64** %18, align 8
  store i64 %138, i64* %139, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %14, align 8
  %144 = add i64 %143, 1
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %26, align 8
  %148 = sub i64 %146, %147
  %149 = load i64*, i64** %19, align 8
  store i64 %148, i64* %149, align 8
  %150 = load i64*, i64** %18, align 8
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %19, align 8
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %151, %153
  %155 = load i64*, i64** %17, align 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp ugt i64 %154, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %119
  %159 = load i64, i64* @SZ_ERROR_FAIL, align 8
  store i64 %159, i64* %11, align 8
  br label %189

160:                                              ; preds = %119
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  %163 = load i64, i64* %14, align 8
  %164 = call i64 @SzBitWithVals_Check(%struct.TYPE_5__* %162, i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %160
  %167 = load i32**, i32*** %16, align 8
  %168 = load i32*, i32** %167, align 8
  %169 = load i64*, i64** %18, align 8
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i64*, i64** %19, align 8
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @CrcCalc(i32* %171, i64 %173)
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %174, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %166
  %184 = load i64, i64* @SZ_ERROR_CRC, align 8
  store i64 %184, i64* %23, align 8
  br label %185

185:                                              ; preds = %183, %166
  br label %186

186:                                              ; preds = %185, %160
  br label %187

187:                                              ; preds = %186, %115
  %188 = load i64, i64* %23, align 8
  store i64 %188, i64* %11, align 8
  br label %189

189:                                              ; preds = %187, %158, %66, %38
  %190 = load i64, i64* %11, align 8
  ret i64 %190
}

declare dso_local i32 @ISzAlloc_Free(i32, i32*) #1

declare dso_local i64 @SzAr_GetFolderUnpackSize(i32*, i64) #1

declare dso_local i64 @ISzAlloc_Alloc(i32, i64) #1

declare dso_local i64 @SzAr_DecodeFolder(i32*, i64, i32*, i32, i32*, i64, i32) #1

declare dso_local i64 @SzBitWithVals_Check(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @CrcCalc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
