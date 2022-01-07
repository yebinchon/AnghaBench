; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c_cbc3_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c_cbc3_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.des3_ede_sparc64_ctx = type { i32* }
%struct.blkcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@DES_BLOCK_MASK = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @cbc3_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc3_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.des3_ede_sparc64_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %16 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.des3_ede_sparc64_ctx* @crypto_blkcipher_ctx(i32 %17)
  store %struct.des3_ede_sparc64_ctx* %18, %struct.des3_ede_sparc64_ctx** %9, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %19, %struct.scatterlist* %20, i32 %21)
  %23 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %24 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %23, %struct.blkcipher_walk* %10)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %28 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.des3_ede_sparc64_ctx*, %struct.des3_ede_sparc64_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.des3_ede_sparc64_ctx, %struct.des3_ede_sparc64_ctx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @des3_ede_sparc64_load_keys(i32* %35)
  br label %37

37:                                               ; preds = %66, %4
  %38 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DES_BLOCK_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %14, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load i32, i32* %13, align 4
  %62 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = call i32 @des3_ede_sparc64_cbc_decrypt(i32* %54, i32* %55, i32* %60, i32 %61, i32* %64)
  br label %66

66:                                               ; preds = %48, %41
  %67 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %71, %struct.blkcipher_walk* %10, i32 %72)
  store i32 %73, i32* %12, align 4
  br label %37

74:                                               ; preds = %37
  %75 = call i32 @fprs_write(i32 0)
  %76 = load i32, i32* %12, align 4
  ret i32 %76
}

declare dso_local %struct.des3_ede_sparc64_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @des3_ede_sparc64_load_keys(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @des3_ede_sparc64_cbc_decrypt(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @fprs_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
