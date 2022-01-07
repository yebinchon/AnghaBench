; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_ShouldUseComplexStaticContextMap.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_ShouldUseComplexStaticContextMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ShouldUseComplexStaticContextMap.kStaticContextMapComplexUTF8 = internal constant [64 x i32] [i32 11, i32 11, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 9, i32 9, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 8, i32 3, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 8, i32 4, i32 4, i32 4, i32 8, i32 7, i32 4, i32 4, i32 8, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 5, i32 5, i32 10, i32 5, i32 5, i32 5, i32 10, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6], align 16
@BROTLI_FALSE = common dso_local global i32 0, align 4
@CONTEXT_UTF8 = common dso_local global i32 0, align 4
@BROTLI_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i32, i64, i64*, i32**)* @ShouldUseComplexStaticContextMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShouldUseComplexStaticContextMap(i32* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i64* %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i64, align 8
  %19 = alloca [32 x i32], align 16
  %20 = alloca [13 x [32 x i32]], align 16
  %21 = alloca i32, align 4
  %22 = alloca [3 x double], align 16
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i32** %7, i32*** %17, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @BROTLI_UNUSED(i32 %31)
  %33 = load i64, i64* %15, align 8
  %34 = icmp ult i64 %33, 1048576
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %36, i32* %9, align 4
  br label %159

37:                                               ; preds = %8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %38, %39
  store i64 %40, i64* %18, align 8
  %41 = bitcast [32 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 128, i1 false)
  %42 = bitcast [13 x [32 x i32]]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 1664, i1 false)
  store i32 0, i32* %21, align 4
  br label %43

43:                                               ; preds = %106, %37
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 64
  %46 = load i64, i64* %18, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %109

48:                                               ; preds = %43
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 64
  store i64 %50, i64* %25, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %13, align 8
  %54 = and i64 %52, %53
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %26, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 1
  %60 = load i64, i64* %13, align 8
  %61 = and i64 %59, %60
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %27, align 4
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 2
  store i64 %65, i64* %28, align 8
  br label %66

66:                                               ; preds = %102, %48
  %67 = load i64, i64* %28, align 8
  %68 = load i64, i64* %25, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %66
  %71 = load i32*, i32** %10, align 8
  %72 = load i64, i64* %28, align 8
  %73 = load i64, i64* %13, align 8
  %74 = and i64 %72, %73
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %29, align 4
  %77 = load i32, i32* %27, align 4
  %78 = load i32, i32* %26, align 4
  %79 = load i32, i32* @CONTEXT_UTF8, align 4
  %80 = call i64 @Context(i32 %77, i32 %78, i32 %79)
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* @ShouldUseComplexStaticContextMap.kStaticContextMapComplexUTF8, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %30, align 4
  %83 = load i32, i32* %21, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %29, align 4
  %86 = ashr i32 %85, 3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %30, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [13 x [32 x i32]], [13 x [32 x i32]]* %20, i64 0, i64 %92
  %94 = load i32, i32* %29, align 4
  %95 = ashr i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [32 x i32], [32 x i32]* %93, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %27, align 4
  store i32 %100, i32* %26, align 4
  %101 = load i32, i32* %29, align 4
  store i32 %101, i32* %27, align 4
  br label %102

102:                                              ; preds = %70
  %103 = load i64, i64* %28, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %28, align 8
  br label %66

105:                                              ; preds = %66
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %107, 4096
  store i64 %108, i64* %11, align 8
  br label %43

109:                                              ; preds = %43
  %110 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %111 = call double @ShannonEntropy(i32* %110, i32 32, i64* %23)
  %112 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  store double %111, double* %112, align 8
  %113 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  store double 0.000000e+00, double* %113, align 16
  store i64 0, i64* %24, align 8
  br label %114

114:                                              ; preds = %125, %109
  %115 = load i64, i64* %24, align 8
  %116 = icmp ult i64 %115, 13
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i64, i64* %24, align 8
  %119 = getelementptr inbounds [13 x [32 x i32]], [13 x [32 x i32]]* %20, i64 0, i64 %118
  %120 = getelementptr inbounds [32 x i32], [32 x i32]* %119, i64 0, i64 0
  %121 = call double @ShannonEntropy(i32* %120, i32 32, i64* %23)
  %122 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  %123 = load double, double* %122, align 16
  %124 = fadd double %123, %121
  store double %124, double* %122, align 16
  br label %125

125:                                              ; preds = %117
  %126 = load i64, i64* %24, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %24, align 8
  br label %114

128:                                              ; preds = %114
  %129 = load i32, i32* %21, align 4
  %130 = sitofp i32 %129 to double
  %131 = fdiv double 1.000000e+00, %130
  %132 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 0
  store double %131, double* %132, align 16
  %133 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 0
  %134 = load double, double* %133, align 16
  %135 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  %136 = load double, double* %135, align 8
  %137 = fmul double %136, %134
  store double %137, double* %135, align 8
  %138 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 0
  %139 = load double, double* %138, align 16
  %140 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  %141 = load double, double* %140, align 16
  %142 = fmul double %141, %139
  store double %142, double* %140, align 16
  %143 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  %144 = load double, double* %143, align 16
  %145 = fcmp ogt double %144, 3.000000e+00
  br i1 %145, label %153, label %146

146:                                              ; preds = %128
  %147 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  %148 = load double, double* %147, align 8
  %149 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  %150 = load double, double* %149, align 16
  %151 = fsub double %148, %150
  %152 = fcmp olt double %151, 2.000000e-01
  br i1 %152, label %153, label %155

153:                                              ; preds = %146, %128
  %154 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %154, i32* %9, align 4
  br label %159

155:                                              ; preds = %146
  %156 = load i64*, i64** %16, align 8
  store i64 13, i64* %156, align 8
  %157 = load i32**, i32*** %17, align 8
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @ShouldUseComplexStaticContextMap.kStaticContextMapComplexUTF8, i64 0, i64 0), i32** %157, align 8
  %158 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %155, %153, %35
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local i32 @BROTLI_UNUSED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @Context(i32, i32, i32) #1

declare dso_local double @ShannonEntropy(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
