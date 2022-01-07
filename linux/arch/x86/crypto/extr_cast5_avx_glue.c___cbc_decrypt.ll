; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast5_avx_glue.c___cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast5_avx_glue.c___cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cast5_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@CAST5_BLOCK_SIZE = common dso_local global i32 0, align 4
@CAST5_PARALLEL_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cast5_ctx*, %struct.skcipher_walk*)* @__cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cbc_decrypt(%struct.cast5_ctx* %0, %struct.skcipher_walk* %1) #0 {
  %3 = alloca %struct.cast5_ctx*, align 8
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.cast5_ctx* %0, %struct.cast5_ctx** %3, align 8
  store %struct.skcipher_walk* %1, %struct.skcipher_walk** %4, align 8
  %10 = load i32, i32* @CAST5_BLOCK_SIZE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %12 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %7, align 8
  %20 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %21 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = udiv i32 %26, %27
  %29 = sub i32 %28, 1
  %30 = load i32*, i32** %7, align 8
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = udiv i32 %33, %34
  %36 = sub i32 %35, 1
  %37 = load i32*, i32** %8, align 8
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %45 = mul i32 %43, %44
  %46 = icmp uge i32 %42, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %89, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %51 = sub i32 %50, 1
  %52 = mul i32 %49, %51
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %56 = sub i32 %55, 1
  %57 = load i32*, i32** %7, align 8
  %58 = zext i32 %56 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %7, align 8
  %61 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %62 = sub i32 %61, 1
  %63 = load i32*, i32** %8, align 8
  %64 = zext i32 %62 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %8, align 8
  %67 = load %struct.cast5_ctx*, %struct.cast5_ctx** %3, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @cast5_cbc_dec_16way(%struct.cast5_ctx* %67, i32* %68, i32* %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %48
  br label %121

78:                                               ; preds = %48
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 -1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, %81
  store i32 %84, i32* %82, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 -1
  store i32* %86, i32** %7, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 -1
  store i32* %88, i32** %8, align 8
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %93 = mul i32 %91, %92
  %94 = icmp uge i32 %90, %93
  br i1 %94, label %48, label %95

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %2
  br label %97

97:                                               ; preds = %109, %96
  %98 = load %struct.cast5_ctx*, %struct.cast5_ctx** %3, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @__cast5_decrypt(%struct.cast5_ctx* %98, i32* %99, i32* %100)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %120

109:                                              ; preds = %97
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 -1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 -1
  store i32* %117, i32** %7, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 -1
  store i32* %119, i32** %8, align 8
  br label %97

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %77
  %122 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %123 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %132 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i32*
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @cast5_cbc_dec_16way(%struct.cast5_ctx*, i32*, i32*) #1

declare dso_local i32 @__cast5_decrypt(%struct.cast5_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
