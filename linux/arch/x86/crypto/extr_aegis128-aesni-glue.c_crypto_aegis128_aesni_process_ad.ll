; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aegis128-aesni-glue.c_crypto_aegis128_aesni_process_ad.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_aegis128-aesni-glue.c_crypto_aegis128_aesni_process_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis_state = type { i32 }
%struct.scatterlist = type { i32 }
%struct.scatter_walk = type { i32 }
%struct.aegis_block = type { i32* }

@AEGIS128_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aegis_state*, %struct.scatterlist*, i32)* @crypto_aegis128_aesni_process_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_aesni_process_ad(%struct.aegis_state* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.aegis_state*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatter_walk, align 4
  %8 = alloca %struct.aegis_block, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.aegis_state* %0, %struct.aegis_state** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %16 = call i32 @scatterwalk_start(%struct.scatter_walk* %7, %struct.scatterlist* %15)
  br label %17

17:                                               ; preds = %76, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %97

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @scatterwalk_clamp(%struct.scatter_walk* %7, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %11, align 4
  %24 = call i8* @scatterwalk_map(%struct.scatter_walk* %7)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  %34 = icmp ugt i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %14, align 4
  %39 = getelementptr inbounds %struct.aegis_block, %struct.aegis_block* %8, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @memcpy(i32* %43, i32* %44, i32 %45)
  %47 = load %struct.aegis_state*, %struct.aegis_state** %4, align 8
  %48 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %49 = getelementptr inbounds %struct.aegis_block, %struct.aegis_block* %8, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @crypto_aegis128_aesni_ad(%struct.aegis_state* %47, i32 %48, i32* %50)
  store i32 0, i32* %9, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %13, align 8
  br label %59

59:                                               ; preds = %35, %32
  %60 = load %struct.aegis_state*, %struct.aegis_state** %4, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @crypto_aegis128_aesni_ad(%struct.aegis_state* %60, i32 %61, i32* %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %66 = sub i32 %65, 1
  %67 = xor i32 %66, -1
  %68 = and i32 %64, %67
  %69 = load i32*, i32** %13, align 8
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %13, align 8
  %72 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %73 = sub i32 %72, 1
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %59, %20
  %77 = getelementptr inbounds %struct.aegis_block, %struct.aegis_block* %8, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @memcpy(i32* %81, i32* %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sub i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @scatterwalk_unmap(i8* %91)
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @scatterwalk_advance(%struct.scatter_walk* %7, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @scatterwalk_done(%struct.scatter_walk* %7, i32 0, i32 %95)
  br label %17

97:                                               ; preds = %17
  %98 = load i32, i32* %9, align 4
  %99 = icmp ugt i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.aegis_block, %struct.aegis_block* %8, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub i32 %106, %107
  %109 = call i32 @memset(i32* %105, i32 0, i32 %108)
  %110 = load %struct.aegis_state*, %struct.aegis_state** %4, align 8
  %111 = load i32, i32* @AEGIS128_BLOCK_SIZE, align 4
  %112 = getelementptr inbounds %struct.aegis_block, %struct.aegis_block* %8, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @crypto_aegis128_aesni_ad(%struct.aegis_state* %110, i32 %111, i32* %113)
  br label %115

115:                                              ; preds = %100, %97
  ret void
}

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, %struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_clamp(%struct.scatter_walk*, i32) #1

declare dso_local i8* @scatterwalk_map(%struct.scatter_walk*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_aegis128_aesni_ad(%struct.aegis_state*, i32, i32*) #1

declare dso_local i32 @scatterwalk_unmap(i8*) #1

declare dso_local i32 @scatterwalk_advance(%struct.scatter_walk*, i32) #1

declare dso_local i32 @scatterwalk_done(%struct.scatter_walk*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
