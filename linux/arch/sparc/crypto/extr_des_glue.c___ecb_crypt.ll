; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c___ecb_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c___ecb_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.des_sparc64_ctx = type { i32*, i32* }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@DES_BLOCK_MASK = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32, i32)* @__ecb_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ecb_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.des_sparc64_ctx*, align 8
  %12 = alloca %struct.blkcipher_walk, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %16 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.des_sparc64_ctx* @crypto_blkcipher_ctx(i32 %17)
  store %struct.des_sparc64_ctx* %18, %struct.des_sparc64_ctx** %11, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %12, %struct.scatterlist* %19, %struct.scatterlist* %20, i32 %21)
  %23 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %24 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %23, %struct.blkcipher_walk* %12)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %28 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %5
  %34 = load %struct.des_sparc64_ctx*, %struct.des_sparc64_ctx** %11, align 8
  %35 = getelementptr inbounds %struct.des_sparc64_ctx, %struct.des_sparc64_ctx* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @des_sparc64_load_keys(i32* %37)
  br label %45

39:                                               ; preds = %5
  %40 = load %struct.des_sparc64_ctx*, %struct.des_sparc64_ctx** %11, align 8
  %41 = getelementptr inbounds %struct.des_sparc64_ctx, %struct.des_sparc64_ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i32 @des_sparc64_load_keys(i32* %43)
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %70, %45
  %47 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %12, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @DES_BLOCK_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i64 @likely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %12, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %12, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @des_sparc64_ecb_crypt(i32* %62, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %57, %50
  %71 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %75, %struct.blkcipher_walk* %12, i32 %76)
  store i32 %77, i32* %13, align 4
  br label %46

78:                                               ; preds = %46
  %79 = call i32 @fprs_write(i32 0)
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local %struct.des_sparc64_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @des_sparc64_load_keys(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @des_sparc64_ecb_crypt(i32*, i32*, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @fprs_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
