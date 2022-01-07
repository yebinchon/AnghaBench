; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c_ecb_paes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_paes_s390.c_ecb_paes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.s390_paes_ctx = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, %struct.blkcipher_walk*)* @ecb_paes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_paes_crypt(%struct.blkcipher_desc* %0, i64 %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.blkcipher_walk*, align 8
  %8 = alloca %struct.s390_paes_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.blkcipher_walk* %2, %struct.blkcipher_walk** %7, align 8
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.s390_paes_ctx* @crypto_blkcipher_ctx(i32 %15)
  store %struct.s390_paes_ctx* %16, %struct.s390_paes_ctx** %8, align 8
  %17 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %18 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %19 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %17, %struct.blkcipher_walk* %18)
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %77, %3
  %21 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %22 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = sub i32 %28, 1
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = or i64 %34, %35
  %37 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.s390_paes_ctx, %struct.s390_paes_ctx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %42 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %47 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @cpacf_km(i64 %36, i32 %40, i32 %45, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %26
  %56 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %57 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub i32 %58, %59
  %61 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %56, %struct.blkcipher_walk* %57, i32 %60)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %55, %26
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.s390_paes_ctx*, %struct.s390_paes_ctx** %8, align 8
  %68 = call i64 @__paes_set_key(%struct.s390_paes_ctx* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %72 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %7, align 8
  %73 = load i32, i32* @EIO, align 4
  %74 = sub i32 0, %73
  %75 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %71, %struct.blkcipher_walk* %72, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %62
  br label %20

78:                                               ; preds = %20
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %70
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.s390_paes_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @cpacf_km(i64, i32, i32, i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i64 @__paes_set_key(%struct.s390_paes_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
