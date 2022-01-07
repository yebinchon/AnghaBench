; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_icst.c_icst_hz_to_vco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_icst.c_icst_hz_to_vco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icst_params = type { i32, i32, i64*, i64*, i64, i64, i32, i32, i32 }
%struct.icst_vco = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @icst_hz_to_vco(%struct.icst_params* %0, i64 %1) #0 {
  %3 = alloca %struct.icst_vco, align 4
  %4 = alloca %struct.icst_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca { i64, i32 }, align 8
  store %struct.icst_params* %0, %struct.icst_params** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %3, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %3, i32 0, i32 1
  %17 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %18 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %3, i32 0, i32 2
  %21 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %22 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  br label %24

24:                                               ; preds = %54, %2
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %27 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %30 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %28, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %25, %37
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %41 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %24
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %47 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ule i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %57

51:                                               ; preds = %44, %24
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp ult i32 %55, 8
  br i1 %56, label %24, label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %7, align 4
  %59 = icmp uge i32 %58, 8
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %142

61:                                               ; preds = %57
  %62 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %63 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %3, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %72 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %138, %61
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %77 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ule i32 %75, %78
  br i1 %79, label %80, label %141

80:                                               ; preds = %74
  %81 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %82 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 2, %83
  %85 = load i32, i32* %8, align 4
  %86 = udiv i32 %84, %85
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %10, align 8
  %90 = udiv i64 %89, 2
  %91 = add i64 %88, %90
  %92 = load i64, i64* %10, align 8
  %93 = udiv i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %97 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %80
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.icst_params*, %struct.icst_params** %4, align 8
  %103 = getelementptr inbounds %struct.icst_params, %struct.icst_params* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ugt i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %80
  br label %138

107:                                              ; preds = %100
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = mul i64 %108, %110
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* %6, align 8
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %118, %107
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  %126 = load i32, i32* %12, align 4
  %127 = sub i32 %126, 8
  %128 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %3, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sub i32 %129, 2
  %131 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %3, i32 0, i32 2
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %141

135:                                              ; preds = %125
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %135, %121
  br label %138

138:                                              ; preds = %137, %106
  %139 = load i32, i32* %8, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %74

141:                                              ; preds = %134, %74
  br label %142

142:                                              ; preds = %141, %60
  %143 = bitcast { i64, i32 }* %14 to i8*
  %144 = bitcast %struct.icst_vco* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 4 %144, i64 12, i1 false)
  %145 = load { i64, i32 }, { i64, i32 }* %14, align 8
  ret { i64, i32 } %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
