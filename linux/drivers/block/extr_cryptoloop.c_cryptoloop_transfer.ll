; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_cryptoloop.c_cryptoloop_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_cryptoloop.c_cryptoloop_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { %struct.crypto_sync_skcipher* }
%struct.crypto_sync_skcipher = type { i32 }
%struct.page = type { i32 }
%struct.scatterlist = type { i32 }

@req = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@LOOP_IV_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, i32, %struct.page*, i32, %struct.page*, i32, i32, i32)* @cryptoloop_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptoloop_transfer(%struct.loop_device* %0, i32 %1, %struct.page* %2, i32 %3, %struct.page* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.loop_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.crypto_sync_skcipher*, align 8
  %18 = alloca %struct.scatterlist, align 4
  %19 = alloca %struct.scatterlist, align 4
  %20 = alloca i32 (i32)*, align 8
  %21 = alloca %struct.page*, align 8
  %22 = alloca %struct.page*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [4 x i32], align 16
  store %struct.loop_device* %0, %struct.loop_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.page* %2, %struct.page** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.page* %4, %struct.page** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %28 = load %struct.loop_device*, %struct.loop_device** %9, align 8
  %29 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %28, i32 0, i32 0
  %30 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %29, align 8
  store %struct.crypto_sync_skcipher* %30, %struct.crypto_sync_skcipher** %17, align 8
  %31 = load i32, i32* @req, align 4
  %32 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %17, align 8
  %33 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %31, %struct.crypto_sync_skcipher* %32)
  %34 = load i32, i32* @req, align 4
  %35 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %17, align 8
  %36 = call i32 @skcipher_request_set_sync_tfm(i32 %34, %struct.crypto_sync_skcipher* %35)
  %37 = load i32, i32* @req, align 4
  %38 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %39 = call i32 @skcipher_request_set_callback(i32 %37, i32 %38, i32* null, i32* null)
  %40 = call i32 @sg_init_table(%struct.scatterlist* %18, i32 1)
  %41 = call i32 @sg_init_table(%struct.scatterlist* %19, i32 1)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @READ, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %8
  %46 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %46, %struct.page** %21, align 8
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %23, align 4
  %48 = load %struct.page*, %struct.page** %13, align 8
  store %struct.page* %48, %struct.page** %22, align 8
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %24, align 4
  store i32 (i32)* @crypto_skcipher_decrypt, i32 (i32)** %20, align 8
  br label %55

50:                                               ; preds = %8
  %51 = load %struct.page*, %struct.page** %13, align 8
  store %struct.page* %51, %struct.page** %21, align 8
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %23, align 4
  %53 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %53, %struct.page** %22, align 8
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %24, align 4
  store i32 (i32)* @crypto_skcipher_encrypt, i32 (i32)** %20, align 8
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %85, %55
  %57 = load i32, i32* %15, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @LOOP_IV_SECTOR_SIZE, align 4
  %62 = call i32 @min(i32 %60, i32 %61)
  store i32 %62, i32* %26, align 4
  %63 = bitcast [4 x i32]* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %63, i8 0, i64 16, i1 false)
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @cpu_to_le32(i32 %64)
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  store i32 %65, i32* %66, align 16
  %67 = load %struct.page*, %struct.page** %21, align 8
  %68 = load i32, i32* %26, align 4
  %69 = load i32, i32* %23, align 4
  %70 = call i32 @sg_set_page(%struct.scatterlist* %19, %struct.page* %67, i32 %68, i32 %69)
  %71 = load %struct.page*, %struct.page** %22, align 8
  %72 = load i32, i32* %26, align 4
  %73 = load i32, i32* %24, align 4
  %74 = call i32 @sg_set_page(%struct.scatterlist* %18, %struct.page* %71, i32 %72, i32 %73)
  %75 = load i32, i32* @req, align 4
  %76 = load i32, i32* %26, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %78 = call i32 @skcipher_request_set_crypt(i32 %75, %struct.scatterlist* %19, %struct.scatterlist* %18, i32 %76, i32* %77)
  %79 = load i32 (i32)*, i32 (i32)** %20, align 8
  %80 = load i32, i32* @req, align 4
  %81 = call i32 %79(i32 %80)
  store i32 %81, i32* %25, align 4
  %82 = load i32, i32* %25, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %59
  br label %98

85:                                               ; preds = %59
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %26, align 4
  %92 = load i32, i32* %23, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %23, align 4
  %94 = load i32, i32* %26, align 4
  %95 = load i32, i32* %24, align 4
  %96 = add i32 %95, %94
  store i32 %96, i32* %24, align 4
  br label %56

97:                                               ; preds = %56
  store i32 0, i32* %25, align 4
  br label %98

98:                                               ; preds = %97, %84
  %99 = load i32, i32* @req, align 4
  %100 = call i32 @skcipher_request_zero(i32 %99)
  %101 = load i32, i32* %25, align 4
  ret i32 %101
}

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
