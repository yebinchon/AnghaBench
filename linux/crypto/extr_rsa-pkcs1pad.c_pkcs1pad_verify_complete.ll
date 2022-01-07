; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_verify_complete.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_verify_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32, i64, i32 }
%struct.crypto_akcipher = type { i32 }
%struct.pkcs1pad_ctx = type { i32 }
%struct.pkcs1pad_request = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.akcipher_instance = type { i32 }
%struct.pkcs1pad_inst_ctx = type { %struct.rsa_asn1_template* }
%struct.rsa_asn1_template = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EKEYREJECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*, i32)* @pkcs1pad_verify_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs1pad_verify_complete(%struct.akcipher_request* %0, i32 %1) #0 {
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_akcipher*, align 8
  %6 = alloca %struct.pkcs1pad_ctx*, align 8
  %7 = alloca %struct.pkcs1pad_request*, align 8
  %8 = alloca %struct.akcipher_instance*, align 8
  %9 = alloca %struct.pkcs1pad_inst_ctx*, align 8
  %10 = alloca %struct.rsa_asn1_template*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %15 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %14)
  store %struct.crypto_akcipher* %15, %struct.crypto_akcipher** %5, align 8
  %16 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %5, align 8
  %17 = call %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %16)
  store %struct.pkcs1pad_ctx* %17, %struct.pkcs1pad_ctx** %6, align 8
  %18 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %19 = call %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request* %18)
  store %struct.pkcs1pad_request* %19, %struct.pkcs1pad_request** %7, align 8
  %20 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %5, align 8
  %21 = call %struct.akcipher_instance* @akcipher_alg_instance(%struct.crypto_akcipher* %20)
  store %struct.akcipher_instance* %21, %struct.akcipher_instance** %8, align 8
  %22 = load %struct.akcipher_instance*, %struct.akcipher_instance** %8, align 8
  %23 = call %struct.pkcs1pad_inst_ctx* @akcipher_instance_ctx(%struct.akcipher_instance* %22)
  store %struct.pkcs1pad_inst_ctx* %23, %struct.pkcs1pad_inst_ctx** %9, align 8
  %24 = load %struct.pkcs1pad_inst_ctx*, %struct.pkcs1pad_inst_ctx** %9, align 8
  %25 = getelementptr inbounds %struct.pkcs1pad_inst_ctx, %struct.pkcs1pad_inst_ctx* %24, i32 0, i32 0
  %26 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %25, align 8
  store %struct.rsa_asn1_template* %26, %struct.rsa_asn1_template** %10, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %199

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %34 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %199

44:                                               ; preds = %30
  %45 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %46 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %13, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %44
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %199

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %13, align 8
  br label %64

64:                                               ; preds = %59, %44
  %65 = load i32, i32* @EBADMSG, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %199

72:                                               ; preds = %64
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %86, %72
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 255
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %89

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %73

89:                                               ; preds = %84, %73
  %90 = load i32, i32* %12, align 4
  %91 = icmp ult i32 %90, 9
  br i1 %91, label %103, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %12, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %92, %89
  br label %199

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %12, align 4
  %107 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %10, align 8
  %108 = icmp ne %struct.rsa_asn1_template* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %104
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %10, align 8
  %115 = getelementptr inbounds %struct.rsa_asn1_template, %struct.rsa_asn1_template* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %10, align 8
  %118 = getelementptr inbounds %struct.rsa_asn1_template, %struct.rsa_asn1_template* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @crypto_memneq(i32* %113, i32 %116, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  br label %199

123:                                              ; preds = %109
  %124 = load %struct.rsa_asn1_template*, %struct.rsa_asn1_template** %10, align 8
  %125 = getelementptr inbounds %struct.rsa_asn1_template, %struct.rsa_asn1_template* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = zext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %123, %104
  store i32 0, i32* %4, align 4
  %132 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %133 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = sub i32 %135, %136
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = load i32, i32* @EKEYREJECTED, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = sub i32 %142, %143
  %145 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %146 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %199

147:                                              ; preds = %131
  %148 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %149 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %152 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %155 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %158 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %156, %160
  %162 = call i32 @sg_nents_for_len(i32 %153, i64 %161)
  %163 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %164 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %167 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  %171 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %172 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %175 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @sg_pcopy_to_buffer(i32 %150, i32 %162, i32* %170, i32 %173, i32 %176)
  %178 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %179 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %6, align 8
  %182 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32*, i32** %13, align 8
  %187 = load i32, i32* %12, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %191 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @memcmp(i32* %185, i32* %189, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %147
  %196 = load i32, i32* @EKEYREJECTED, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %195, %147
  br label %199

199:                                              ; preds = %198, %139, %122, %103, %71, %58, %43, %29
  %200 = load %struct.pkcs1pad_request*, %struct.pkcs1pad_request** %7, align 8
  %201 = getelementptr inbounds %struct.pkcs1pad_request, %struct.pkcs1pad_request* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @kzfree(i32* %202)
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_request* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local %struct.akcipher_instance* @akcipher_alg_instance(%struct.crypto_akcipher*) #1

declare dso_local %struct.pkcs1pad_inst_ctx* @akcipher_instance_ctx(%struct.akcipher_instance*) #1

declare dso_local i64 @crypto_memneq(i32*, i32, i64) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sg_nents_for_len(i32, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @kzfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
