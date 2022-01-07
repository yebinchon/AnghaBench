; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_aes_glue.c_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_aes_glue.c_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_sparc64_aes_ctx = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, i32*, i32*, i32, i32*)*, i32 (i32*)* }
%struct.blkcipher_walk = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@AES_BLOCK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_sparc64_aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.crypto_sparc64_aes_ctx* @crypto_blkcipher_ctx(i32 %15)
  store %struct.crypto_sparc64_aes_ctx* %16, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %17, %struct.scatterlist* %18, i32 %19)
  %21 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %22 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %23 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %21, %struct.blkcipher_walk* %10, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %27 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32 (i32*)*, i32 (i32*)** %33, align 8
  %35 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = call i32 %34(i32* %38)
  br label %40

40:                                               ; preds = %77, %4
  %41 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @AES_BLOCK_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %45
  %53 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32 (i32*, i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i32*, i32, i32*)** %56, align 8
  %58 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %59 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32, i32* %12, align 4
  %73 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 %57(i32* %61, i32* %66, i32* %71, i32 %72, i32* %75)
  br label %77

77:                                               ; preds = %52, %45
  %78 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %79 = sub i32 %78, 1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %82, %struct.blkcipher_walk* %10, i32 %83)
  store i32 %84, i32* %11, align 4
  br label %40

85:                                               ; preds = %40
  %86 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %91 = call i32 @ctr_crypt_final(%struct.crypto_sparc64_aes_ctx* %90, %struct.blkcipher_walk* %10)
  %92 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %93 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %92, %struct.blkcipher_walk* %10, i32 0)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = call i32 @fprs_write(i32 0)
  %96 = load i32, i32* %11, align 4
  ret i32 %96
}

declare dso_local %struct.crypto_sparc64_aes_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @ctr_crypt_final(%struct.crypto_sparc64_aes_ctx*, %struct.blkcipher_walk*) #1

declare dso_local i32 @fprs_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
