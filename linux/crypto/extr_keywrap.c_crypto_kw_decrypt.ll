; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_keywrap.c_crypto_kw_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_keywrap.c_crypto_kw_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, %struct.scatterlist*, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_cipher = type { i32 }
%struct.crypto_kw_block = type { i32, i32 }
%struct.scatter_walk = type { i32 }

@SEMIBSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_kw_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_kw_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.crypto_cipher*, align 8
  %6 = alloca %struct.crypto_kw_block, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatter_walk, align 4
  %13 = alloca %struct.scatter_walk, align 4
  %14 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %15 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %16 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %15)
  store %struct.crypto_skcipher* %16, %struct.crypto_skcipher** %4, align 8
  %17 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %18 = call %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher* %17)
  store %struct.crypto_cipher* %18, %struct.crypto_cipher** %5, align 8
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %20 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 3
  %23 = mul nsw i32 6, %22
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %25 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SEMIBSIZE, align 4
  %28 = mul nsw i32 2, %27
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %32 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SEMIBSIZE, align 4
  %35 = srem i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %111

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 0
  %42 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %43 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SEMIBSIZE, align 4
  %46 = call i32 @memcpy(i32* %41, i32 %44, i32 %45)
  %47 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %48 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %47, i32 0, i32 2
  %49 = load %struct.scatterlist*, %struct.scatterlist** %48, align 8
  store %struct.scatterlist* %49, %struct.scatterlist** %7, align 8
  %50 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %51 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %50, i32 0, i32 1
  %52 = load %struct.scatterlist*, %struct.scatterlist** %51, align 8
  store %struct.scatterlist* %52, %struct.scatterlist** %8, align 8
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %97, %40
  %54 = load i32, i32* %10, align 4
  %55 = icmp ult i32 %54, 6
  br i1 %55, label %56, label %100

56:                                               ; preds = %53
  %57 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %58 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %63, %56
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  %64 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @crypto_kw_scatterlist_ff(%struct.scatter_walk* %12, %struct.scatterlist* %64, i32 %65)
  %67 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 1
  %68 = load i32, i32* @SEMIBSIZE, align 4
  %69 = call i32 @scatterwalk_copychunks(i32* %67, %struct.scatter_walk* %12, i32 %68, i32 0)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @cpu_to_be64(i32 %70)
  %72 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  %77 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  %78 = bitcast %struct.crypto_kw_block* %6 to i32*
  %79 = bitcast %struct.crypto_kw_block* %6 to i32*
  %80 = call i32 @crypto_cipher_decrypt_one(%struct.crypto_cipher* %77, i32* %78, i32* %79)
  %81 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @crypto_kw_scatterlist_ff(%struct.scatter_walk* %13, %struct.scatterlist* %81, i32 %82)
  %84 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 1
  %85 = load i32, i32* @SEMIBSIZE, align 4
  %86 = call i32 @scatterwalk_copychunks(i32* %84, %struct.scatter_walk* %13, i32 %85, i32 1)
  %87 = load i32, i32* @SEMIBSIZE, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %60

90:                                               ; preds = %60
  %91 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %92 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %91, i32 0, i32 1
  %93 = load %struct.scatterlist*, %struct.scatterlist** %92, align 8
  store %struct.scatterlist* %93, %struct.scatterlist** %7, align 8
  %94 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %95 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %94, i32 0, i32 1
  %96 = load %struct.scatterlist*, %struct.scatterlist** %95, align 8
  store %struct.scatterlist* %96, %struct.scatterlist** %8, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %53

100:                                              ; preds = %53
  %101 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cpu_to_be64(i32 -1499027802)
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EBADMSG, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = call i32 @memzero_explicit(%struct.crypto_kw_block* %6, i32 8)
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %108, %37
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @crypto_kw_scatterlist_ff(%struct.scatter_walk*, %struct.scatterlist*, i32) #1

declare dso_local i32 @scatterwalk_copychunks(i32*, %struct.scatter_walk*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @crypto_cipher_decrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_kw_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
