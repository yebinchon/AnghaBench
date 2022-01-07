; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzIn.c_Xz_ReadIndex2.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzIn.c_Xz_ReadIndex2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@SZ_ERROR_ARCHIVE = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i64, i32)* @Xz_ReadIndex2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Xz_ReadIndex2(%struct.TYPE_5__* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 1, i64* %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %16, 5
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i64*, i64** %7, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %4
  %24 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %24, i32* %5, align 4
  br label %138

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 4
  store i64 %27, i64* %8, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @CrcCalc(i64* %28, i64 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = call i64 @GetUi32(i64* %34)
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %38, i32* %5, align 4
  br label %138

39:                                               ; preds = %25
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @READ_VARINT_AND_CHECK(i64* %40, i64 %41, i64 %42, i64* %13)
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load i64, i64* %10, align 8
  %50 = mul i64 %49, 2
  %51 = load i64, i64* %8, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %39
  %54 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %54, i32* %5, align 4
  br label %138

55:                                               ; preds = %48
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @Xz_Free(%struct.TYPE_5__* %56, i32 %57)
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %113

61:                                               ; preds = %55
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i64, i64* %10, align 8
  %67 = mul i64 16, %66
  %68 = trunc i64 %67 to i32
  %69 = call i64 @ISzAlloc_Alloc(i32 %65, i32 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_6__*
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %61
  %78 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %78, i32* %5, align 4
  br label %138

79:                                               ; preds = %61
  store i64 0, i64* %14, align 8
  br label %80

80:                                               ; preds = %109, %79
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %15, align 8
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i32 @READ_VARINT_AND_CHECK(i64* %90, i64 %91, i64 %92, i64* %94)
  %96 = load i64*, i64** %7, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = call i32 @READ_VARINT_AND_CHECK(i64* %96, i64 %97, i64 %98, i64* %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %84
  %107 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %107, i32* %5, align 4
  br label %138

108:                                              ; preds = %84
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %14, align 8
  br label %80

112:                                              ; preds = %80
  br label %113

113:                                              ; preds = %112, %55
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i64, i64* %11, align 8
  %116 = and i64 %115, 3
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load i64*, i64** %7, align 8
  %120 = load i64, i64* %11, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %11, align 8
  %122 = getelementptr inbounds i64, i64* %119, i64 %120
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %126, i32* %5, align 4
  br label %138

127:                                              ; preds = %118
  br label %114

128:                                              ; preds = %114
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %8, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @SZ_OK, align 4
  br label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %125, %106, %77, %53, %37, %23
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @CrcCalc(i64*, i64) #1

declare dso_local i64 @GetUi32(i64*) #1

declare dso_local i32 @READ_VARINT_AND_CHECK(i64*, i64, i64, i64*) #1

declare dso_local i32 @Xz_Free(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ISzAlloc_Alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
