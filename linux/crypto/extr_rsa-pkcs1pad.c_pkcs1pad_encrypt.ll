; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_akcipher = type { i32 }
%struct.pkcs1pad_ctx = type { i32, i32 }
%struct.pkcs1pad_request = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pkcs1pad_encrypt_sign_complete_cb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*)* @pkcs1pad_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs1pad_encrypt(%struct.akcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.pkcs1pad_ctx*, align 8
  %6 = alloca %struct.pkcs1pad_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  %10 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %11 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %10)
  store %struct.crypto_akcipher* %11, %struct.crypto_akcipher** %4, align 8
  %12 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %13 = call %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %12)
  store %struct.pkcs1pad_ctx* %13, %struct.pkcs1pad_ctx** %5, align 8
  %14 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %15 = call %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request* %14)
  store %struct.pkcs1pad_request* %15, %struct.pkcs1pad_request** %6, align 8
  %16 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %174

23:                                               ; preds = %1
  %24 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %25 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 11
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EOVERFLOW, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %174

35:                                               ; preds = %23
  %36 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %37 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %48 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @EOVERFLOW, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %174

51:                                               ; preds = %35
  %52 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %57 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @kmalloc(i32 %59, i32 %60)
  %62 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %63 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %65 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %51
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %174

71:                                               ; preds = %51
  %72 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %76 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  %79 = sub nsw i32 %78, 2
  store i32 %79, i32* %9, align 4
  %80 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %81 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 2, i32* %83, align 4
  store i32 1, i32* %8, align 4
  br label %84

84:                                               ; preds = %97, %71
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = call i32 @prandom_u32_max(i32 255)
  %90 = add nsw i32 1, %89
  %91 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %92 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %84

100:                                              ; preds = %84
  %101 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %102 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 0, i32* %106, align 4
  %107 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %108 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %111 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %114 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %118 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %122 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @pkcs1pad_sg_set_buf(i32 %109, i32* %112, i32 %120, i32 %123)
  %125 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %126 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %125, i32 0, i32 1
  %127 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %128 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @akcipher_request_set_tfm(i32* %126, i32 %129)
  %131 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %132 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %131, i32 0, i32 1
  %133 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %134 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @pkcs1pad_encrypt_sign_complete_cb, align 4
  %138 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %139 = call i32 @akcipher_request_set_callback(i32* %132, i32 %136, i32 %137, %struct.akcipher_request* %138)
  %140 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %141 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %140, i32 0, i32 1
  %142 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %143 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %146 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %149 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, 1
  %152 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %153 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @akcipher_request_set_crypt(i32* %141, i32 %144, i32 %147, i32 %151, i32 %154)
  %156 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %157 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %156, i32 0, i32 1
  %158 = call i32 @crypto_akcipher_encrypt(i32* %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @EINPROGRESS, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp ne i32 %159, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %100
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @EBUSY, align 4
  %166 = sub nsw i32 0, %165
  %167 = icmp ne i32 %164, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @pkcs1pad_encrypt_sign_complete(%struct.akcipher_request* %169, i32 %170)
  store i32 %171, i32* %2, align 4
  br label %174

172:                                              ; preds = %163, %100
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %168, %68, %43, %32, %20
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @prandom_u32_max(i32) #1

declare dso_local i32 @pkcs1pad_sg_set_buf(i32, i32*, i32, i32) #1

declare dso_local i32 @akcipher_request_set_tfm(i32*, i32) #1

declare dso_local i32 @akcipher_request_set_callback(i32*, i32, i32, %struct.akcipher_request*) #1

declare dso_local i32 @akcipher_request_set_crypt(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_akcipher_encrypt(i32*) #1

declare dso_local i32 @pkcs1pad_encrypt_sign_complete(%struct.akcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
