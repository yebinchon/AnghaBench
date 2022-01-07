; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_akcipher = type { i32 }
%struct.pkcs1pad_ctx = type { i64, i32 }
%struct.pkcs1pad_request = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pkcs1pad_decrypt_complete_cb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*)* @pkcs1pad_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs1pad_decrypt(%struct.akcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.pkcs1pad_ctx*, align 8
  %6 = alloca %struct.pkcs1pad_request*, align 8
  %7 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  %8 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %9 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %8)
  store %struct.crypto_akcipher* %9, %struct.crypto_akcipher** %4, align 8
  %10 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %11 = call %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %10)
  store %struct.pkcs1pad_ctx* %11, %struct.pkcs1pad_ctx** %5, align 8
  %12 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %13 = call %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request* %12)
  store %struct.pkcs1pad_request* %13, %struct.pkcs1pad_request** %6, align 8
  %14 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %20 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %103

29:                                               ; preds = %18
  %30 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @kmalloc(i64 %32, i32 %33)
  %35 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %36 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %38 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %103

44:                                               ; preds = %29
  %45 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %46 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %49 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @pkcs1pad_sg_set_buf(i32 %47, i32 %50, i64 %53, i32* null)
  %55 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %56 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %55, i32 0, i32 0
  %57 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @akcipher_request_set_tfm(i32* %56, i32 %59)
  %61 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %62 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %61, i32 0, i32 0
  %63 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %64 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @pkcs1pad_decrypt_complete_cb, align 4
  %68 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %69 = call i32 @akcipher_request_set_callback(i32* %62, i32 %66, i32 %67, %struct.akcipher_request* %68)
  %70 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %71 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %70, i32 0, i32 0
  %72 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %73 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %76 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %79 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @akcipher_request_set_crypt(i32* %71, i32 %74, i32 %77, i64 %80, i64 %83)
  %85 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %86 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %85, i32 0, i32 0
  %87 = call i32 @crypto_akcipher_decrypt(i32* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @EINPROGRESS, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %44
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @pkcs1pad_decrypt_complete(%struct.akcipher_request* %98, i32 %99)
  store i32 %100, i32* %2, align 4
  br label %103

101:                                              ; preds = %92, %44
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %97, %41, %26
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @pkcs1pad_sg_set_buf(i32, i32, i64, i32*) #1

declare dso_local i32 @akcipher_request_set_tfm(i32*, i32) #1

declare dso_local i32 @akcipher_request_set_callback(i32*, i32, i32, %struct.akcipher_request*) #1

declare dso_local i32 @akcipher_request_set_crypt(i32*, i32, i32, i64, i64) #1

declare dso_local i32 @crypto_akcipher_decrypt(i32*) #1

declare dso_local i32 @pkcs1pad_decrypt_complete(%struct.akcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
