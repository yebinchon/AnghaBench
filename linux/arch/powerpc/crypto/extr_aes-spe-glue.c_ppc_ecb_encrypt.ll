; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_ecb_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_ecb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.ppc_aes_ctx = type { i32, i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@MAX_BYTES = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ppc_ecb_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_ecb_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ppc_aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ppc_aes_ctx* @crypto_blkcipher_ctx(i32 %15)
  store %struct.ppc_aes_ctx* %16, %struct.ppc_aes_ctx** %9, align 8
  %17 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %20 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %23, %struct.scatterlist* %24, i32 %25)
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %28 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %27, %struct.blkcipher_walk* %10)
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %46, %4
  %30 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @MAX_BYTES, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MAX_BYTES, align 4
  %40 = sub i32 %38, %39
  br label %46

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i32 [ %40, %37 ], [ %45, %41 ]
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = call i32 (...) @spe_begin()
  %52 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %9, align 8
  %61 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %9, align 8
  %64 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ppc_encrypt_ecb(i32 %55, i32 %59, i32 %62, i32 %65, i32 %66)
  %68 = call i32 (...) @spe_end()
  %69 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %69, %struct.blkcipher_walk* %10, i32 %70)
  store i32 %71, i32* %12, align 4
  br label %29

72:                                               ; preds = %29
  %73 = load i32, i32* %12, align 4
  ret i32 %73
}

declare dso_local %struct.ppc_aes_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @spe_begin(...) #1

declare dso_local i32 @ppc_encrypt_ecb(i32, i32, i32, i32, i32) #1

declare dso_local i32 @spe_end(...) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
