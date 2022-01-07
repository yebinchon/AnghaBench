; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c___ecb3_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c___ecb3_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.des3_ede_sparc64_ctx = type { i32*, i32* }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@DES_BLOCK_MASK = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32, i32)* @__ecb3_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ecb3_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.des3_ede_sparc64_ctx*, align 8
  %12 = alloca %struct.blkcipher_walk, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %18 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.des3_ede_sparc64_ctx* @crypto_blkcipher_ctx(i32 %19)
  store %struct.des3_ede_sparc64_ctx* %20, %struct.des3_ede_sparc64_ctx** %11, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %12, %struct.scatterlist* %21, %struct.scatterlist* %22, i32 %23)
  %25 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %26 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %25, %struct.blkcipher_walk* %12)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %30 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %5
  %36 = load %struct.des3_ede_sparc64_ctx*, %struct.des3_ede_sparc64_ctx** %11, align 8
  %37 = getelementptr inbounds %struct.des3_ede_sparc64_ctx, %struct.des3_ede_sparc64_ctx* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32* %39, i32** %13, align 8
  br label %45

40:                                               ; preds = %5
  %41 = load %struct.des3_ede_sparc64_ctx*, %struct.des3_ede_sparc64_ctx** %11, align 8
  %42 = getelementptr inbounds %struct.des3_ede_sparc64_ctx, %struct.des3_ede_sparc64_ctx* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32* %44, i32** %13, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @des3_ede_sparc64_load_keys(i32* %46)
  br label %48

48:                                               ; preds = %74, %45
  %49 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @DES_BLOCK_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %12, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %16, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %12, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @des3_ede_sparc64_ecb_crypt(i32* %65, i32* %66, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %59, %52
  %75 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %79, %struct.blkcipher_walk* %12, i32 %80)
  store i32 %81, i32* %14, align 4
  br label %48

82:                                               ; preds = %48
  %83 = call i32 @fprs_write(i32 0)
  %84 = load i32, i32* %14, align 4
  ret i32 %84
}

declare dso_local %struct.des3_ede_sparc64_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @des3_ede_sparc64_load_keys(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @des3_ede_sparc64_ecb_crypt(i32*, i32*, i32*, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @fprs_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
