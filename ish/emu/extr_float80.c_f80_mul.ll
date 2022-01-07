; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_mul.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_float80.c_f80_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }

@F80_NAN = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@F80_INF = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @f80_mul(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca %struct.TYPE_12__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__, align 4
  %22 = alloca { i64, i32 }, align 8
  %23 = alloca { i64, i32 }, align 8
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %24, align 4
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %25, align 4
  %26 = bitcast %struct.TYPE_12__* %6 to i8*
  %27 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %2, i64* %28, align 4
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %3, i32* %29, align 4
  %30 = bitcast %struct.TYPE_12__* %8 to i8*
  %31 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = bitcast { i64, i32 }* %10 to i8*
  %33 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @f80_is_supported(i64 %35, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %4
  %41 = bitcast { i64, i32 }* %11 to i8*
  %42 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @f80_is_supported(i64 %44, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40, %4
  %50 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 bitcast (%struct.TYPE_12__* @F80_NAN to i8*), i64 12, i1 false)
  br label %153

51:                                               ; preds = %40
  %52 = bitcast { i64, i32 }* %12 to i8*
  %53 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %55 = load i64, i64* %54, align 4
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @f80_isnan(i64 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 bitcast (%struct.TYPE_12__* @F80_NAN to i8*), i64 12, i1 false)
  br label %153

62:                                               ; preds = %51
  %63 = bitcast { i64, i32 }* %13 to i8*
  %64 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %66 = load i64, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @f80_isnan(i64 %66, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 bitcast (%struct.TYPE_12__* @F80_NAN to i8*), i64 12, i1 false)
  br label %153

73:                                               ; preds = %62
  %74 = bitcast { i64, i32 }* %14 to i8*
  %75 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 12, i1 false)
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %77 = load i64, i64* %76, align 4
  %78 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @f80_isinf(i64 %77, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %73
  %83 = bitcast { i64, i32 }* %15 to i8*
  %84 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 12, i1 false)
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %86 = load i64, i64* %85, align 4
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @f80_isinf(i64 %86, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %82, %73
  %92 = bitcast { i64, i32 }* %16 to i8*
  %93 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 12, i1 false)
  %94 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %95 = load i64, i64* %94, align 4
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @f80_iszero(i64 %95, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %91
  %101 = bitcast { i64, i32 }* %17 to i8*
  %102 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 12, i1 false)
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %104 = load i64, i64* %103, align 4
  %105 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @f80_iszero(i64 %104, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100, %91
  %110 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 bitcast (%struct.TYPE_12__* @F80_NAN to i8*), i64 12, i1 false)
  br label %153

111:                                              ; preds = %100
  %112 = bitcast %struct.TYPE_12__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 bitcast (%struct.TYPE_12__* @F80_INF to i8*), i64 12, i1 false)
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %114, %116
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = bitcast %struct.TYPE_12__* %5 to i8*
  %120 = bitcast %struct.TYPE_12__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 12, i1 false)
  br label %153

121:                                              ; preds = %82
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @unbias_denormal(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @unbias_denormal(i32 %126)
  %128 = add nsw i32 %124, %127
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %19, align 4
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %131, %133
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %19, align 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = xor i32 %138, %140
  %142 = call { i64, i32 } @u128_normalize_round(i32 %135, i32 %136, i32 %141)
  store { i64, i32 } %142, { i64, i32 }* %22, align 8
  %143 = bitcast { i64, i32 }* %22 to i8*
  %144 = bitcast %struct.TYPE_12__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 8 %143, i64 12, i1 false)
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = xor i32 %146, %148
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i32 %149, i32* %150, align 4
  %151 = bitcast %struct.TYPE_12__* %5 to i8*
  %152 = bitcast %struct.TYPE_12__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 %152, i64 12, i1 false)
  br label %153

153:                                              ; preds = %121, %111, %109, %71, %60, %49
  %154 = bitcast { i64, i32 }* %23 to i8*
  %155 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 4 %155, i64 12, i1 false)
  %156 = load { i64, i32 }, { i64, i32 }* %23, align 8
  ret { i64, i32 } %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @f80_is_supported(i64, i32) #2

declare dso_local i64 @f80_isnan(i64, i32) #2

declare dso_local i64 @f80_isinf(i64, i32) #2

declare dso_local i64 @f80_iszero(i64, i32) #2

declare dso_local i32 @unbias_denormal(i32) #2

declare dso_local { i64, i32 } @u128_normalize_round(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
