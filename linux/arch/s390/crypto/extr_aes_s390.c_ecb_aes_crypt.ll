; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_ecb_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_ecb_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.s390_aes_ctx = type { i64, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, %struct.blkcipher_walk*)* @ecb_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_aes_crypt(%struct.blkcipher_desc* %0, i64 %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca %struct.s390_aes_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.blkcipher_walk* %2, %struct.blkcipher_walk** %6, align 8
  %11 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %12 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.s390_aes_ctx* @crypto_blkcipher_ctx(i32 %13)
  store %struct.s390_aes_ctx* %14, %struct.s390_aes_ctx** %7, align 8
  %15 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %16 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %17 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %15, %struct.blkcipher_walk* %16)
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %24, %3
  %19 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %20 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %27 = sub i32 %26, 1
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = or i64 %32, %33
  %35 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %39 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %44 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @cpacf_km(i64 %34, i32 %37, i32 %42, i32 %47, i32 %48)
  %50 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %51 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub i32 %52, %53
  %55 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %50, %struct.blkcipher_walk* %51, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local %struct.s390_aes_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @cpacf_km(i64, i32, i32, i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
