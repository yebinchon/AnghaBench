; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_verify.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_akcipher = type { i32 }
%struct.pkcs1pad_ctx = type { i64, i32 }
%struct.pkcs1pad_request = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pkcs1pad_verify_complete_cb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*)* @pkcs1pad_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs1pad_verify(%struct.akcipher_request* %0) #0 {
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
  %14 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %15 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %1
  %20 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %21 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %19
  %29 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %35 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %28, %19, %1
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %122

44:                                               ; preds = %33
  %45 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %49 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @kmalloc(i64 %51, i32 %52)
  %54 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %55 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %57 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %44
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %122

63:                                               ; preds = %44
  %64 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %65 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %68 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @pkcs1pad_sg_set_buf(i32 %66, i32 %69, i64 %72, i32* null)
  %74 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %75 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %74, i32 0, i32 0
  %76 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @akcipher_request_set_tfm(i32* %75, i32 %78)
  %80 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %81 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %80, i32 0, i32 0
  %82 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %83 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @pkcs1pad_verify_complete_cb, align 4
  %87 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %88 = call i32 @akcipher_request_set_callback(i32* %81, i32 %85, i32 %86, %struct.akcipher_request* %87)
  %89 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %90 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %89, i32 0, i32 0
  %91 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %92 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %95 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %98 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @akcipher_request_set_crypt(i32* %90, i32 %93, i32 %96, i64 %99, i64 %102)
  %104 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %105 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %104, i32 0, i32 0
  %106 = call i32 @crypto_akcipher_encrypt(i32* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @EINPROGRESS, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %63
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @EBUSY, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @pkcs1pad_verify_complete(%struct.akcipher_request* %117, i32 %118)
  store i32 %119, i32* %2, align 4
  br label %122

120:                                              ; preds = %111, %63
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %116, %60, %41
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @pkcs1pad_sg_set_buf(i32, i32, i64, i32*) #1

declare dso_local i32 @akcipher_request_set_tfm(i32*, i32) #1

declare dso_local i32 @akcipher_request_set_callback(i32*, i32, i32, %struct.akcipher_request*) #1

declare dso_local i32 @akcipher_request_set_crypt(i32*, i32, i32, i64, i64) #1

declare dso_local i32 @crypto_akcipher_encrypt(i32*) #1

declare dso_local i32 @pkcs1pad_verify_complete(%struct.akcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
