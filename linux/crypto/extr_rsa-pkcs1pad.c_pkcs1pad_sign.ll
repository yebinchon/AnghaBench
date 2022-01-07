; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_sign.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_akcipher = type { i32 }
%struct.pkcs1pad_ctx = type { i32, i32 }
%struct.pkcs1pad_request = type { i32*, i32, i32 }
%struct.akcipher_instance = type { i32 }
%struct.pkcs1pad_inst_ctx = type { %struct.rsa_asn1_template* }
%struct.rsa_asn1_template = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pkcs1pad_encrypt_sign_complete_cb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*)* @pkcs1pad_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs1pad_sign(%struct.akcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.pkcs1pad_ctx*, align 8
  %6 = alloca %struct.pkcs1pad_request*, align 8
  %7 = alloca %struct.akcipher_instance*, align 8
  %8 = alloca %struct.pkcs1pad_inst_ctx*, align 8
  %9 = alloca %struct.rsa_asn1_template*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  %13 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %14 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %13)
  store %struct.crypto_akcipher* %14, %struct.crypto_akcipher** %4, align 8
  %15 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %16 = call %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %15)
  store %struct.pkcs1pad_ctx* %16, %struct.pkcs1pad_ctx** %5, align 8
  %17 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %18 = call %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request* %17)
  store %struct.pkcs1pad_request* %18, %struct.pkcs1pad_request** %6, align 8
  %19 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %20 = call %struct.akcipher_instance* @akcipher_alg_instance(%struct.crypto_akcipher* %19)
  store %struct.akcipher_instance* %20, %struct.akcipher_instance** %7, align 8
  %21 = load %struct.akcipher_instance*, %struct.akcipher_instance** %7, align 8
  %22 = call %struct.pkcs1pad_inst_ctx* @akcipher_instance_ctx(%struct.akcipher_instance* %21)
  store %struct.pkcs1pad_inst_ctx* %22, %struct.pkcs1pad_inst_ctx** %8, align 8
  %23 = load %struct.pkcs1pad_inst_ctx*, %struct.pkcs1pad_inst_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.pkcs1pad_inst_ctx, %struct.pkcs1pad_inst_ctx* %23, i32 0, i32 0
  %25 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %24, align 8
  store %struct.rsa_asn1_template* %25, %struct.rsa_asn1_template** %9, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %203

33:                                               ; preds = %1
  %34 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %9, align 8
  %35 = icmp ne %struct.rsa_asn1_template* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %9, align 8
  %38 = getelementptr inbounds %struct.rsa_asn1_template, %struct.rsa_asn1_template* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %42 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %43, %44
  %46 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 11
  %50 = icmp ugt i32 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @EOVERFLOW, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %203

54:                                               ; preds = %40
  %55 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %56 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %67 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @EOVERFLOW, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %203

70:                                               ; preds = %54
  %71 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %76 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32* @kmalloc(i32 %78, i32 %79)
  %81 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %82 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %84 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %70
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %203

90:                                               ; preds = %70
  %91 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sub i32 %93, %94
  %96 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %97 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub i32 %95, %98
  %100 = sub i32 %99, 2
  store i32 %100, i32* %11, align 4
  %101 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %102 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 1, i32* %104, align 4
  %105 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %106 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %11, align 4
  %110 = sub i32 %109, 1
  %111 = call i32 @memset(i32* %108, i32 255, i32 %110)
  %112 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %113 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 0, i32* %117, align 4
  %118 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %9, align 8
  %119 = icmp ne %struct.rsa_asn1_template* %118, null
  br i1 %119, label %120, label %135

120:                                              ; preds = %90
  %121 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %122 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %9, align 8
  %129 = getelementptr inbounds %struct.rsa_asn1_template, %struct.rsa_asn1_template* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %9, align 8
  %132 = getelementptr inbounds %struct.rsa_asn1_template, %struct.rsa_asn1_template* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @memcpy(i32* %127, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %120, %90
  %136 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %137 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %140 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %143 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %147 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  %150 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %151 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @pkcs1pad_sg_set_buf(i32 %138, i32* %141, i32 %149, i32 %152)
  %154 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %155 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %154, i32 0, i32 1
  %156 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %157 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @akcipher_request_set_tfm(i32* %155, i32 %158)
  %160 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %161 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %160, i32 0, i32 1
  %162 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %163 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @pkcs1pad_encrypt_sign_complete_cb, align 4
  %167 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %168 = call i32 @akcipher_request_set_callback(i32* %161, i32 %165, i32 %166, %struct.akcipher_request* %167)
  %169 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %170 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %169, i32 0, i32 1
  %171 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %172 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %175 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %5, align 8
  %178 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 1
  %181 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %182 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @akcipher_request_set_crypt(i32* %170, i32 %173, i32 %176, i32 %180, i32 %183)
  %185 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %6, align 8
  %186 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %185, i32 0, i32 1
  %187 = call i32 @crypto_akcipher_decrypt(i32* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @EINPROGRESS, align 4
  %190 = sub nsw i32 0, %189
  %191 = icmp ne i32 %188, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %135
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @EBUSY, align 4
  %195 = sub nsw i32 0, %194
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @pkcs1pad_encrypt_sign_complete(%struct.akcipher_request* %198, i32 %199)
  store i32 %200, i32* %2, align 4
  br label %203

201:                                              ; preds = %192, %135
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %201, %197, %87, %62, %51, %30
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local %struct.akcipher_instance* @akcipher_alg_instance(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_inst_ctx* @akcipher_instance_ctx(%struct.akcipher_instance*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @pkcs1pad_sg_set_buf(i32, i32*, i32, i32) #1

declare dso_local i32 @akcipher_request_set_tfm(i32*, i32) #1

declare dso_local i32 @akcipher_request_set_callback(i32*, i32, i32, %struct.akcipher_request*) #1

declare dso_local i32 @akcipher_request_set_crypt(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_akcipher_decrypt(i32*) #1

declare dso_local i32 @pkcs1pad_encrypt_sign_complete(%struct.akcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
