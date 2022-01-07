; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_trust.c_pkcs7_validate_trust_one.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_trust.c_pkcs7_validate_trust_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { i32 }
%struct.pkcs7_signed_info = type { %struct.x509_certificate*, %struct.public_key_signature*, i32, i64 }
%struct.x509_certificate = type { i32, i32, %struct.x509_certificate*, i32, %struct.public_key_signature*, i32*, i32* }
%struct.public_key_signature = type { i32** }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c",%u,\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" = -ENOPKG [cached]\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c" = -ENOKEY [cached]\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"sinfo %u: Cert %u as key %x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c" = -ENOKEY [unknown self-signed]\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"sinfo %u: Root cert %u signer is key %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"sinfo %u: Direct signer is key %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c" = -ENOKEY [no backref]\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c" = -EKEYREJECTED [verify %d]\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkcs7_message*, %struct.pkcs7_signed_info*, %struct.key*)* @pkcs7_validate_trust_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs7_validate_trust_one(%struct.pkcs7_message* %0, %struct.pkcs7_signed_info* %1, %struct.key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pkcs7_message*, align 8
  %6 = alloca %struct.pkcs7_signed_info*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.public_key_signature*, align 8
  %9 = alloca %struct.x509_certificate*, align 8
  %10 = alloca %struct.x509_certificate*, align 8
  %11 = alloca %struct.x509_certificate*, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca i32, align 4
  store %struct.pkcs7_message* %0, %struct.pkcs7_message** %5, align 8
  store %struct.pkcs7_signed_info* %1, %struct.pkcs7_signed_info** %6, align 8
  store %struct.key* %2, %struct.key** %7, align 8
  %14 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %15 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %14, i32 0, i32 1
  %16 = load %struct.public_key_signature*, %struct.public_key_signature** %15, align 8
  store %struct.public_key_signature* %16, %struct.public_key_signature** %8, align 8
  store %struct.x509_certificate* null, %struct.x509_certificate** %10, align 8
  %17 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %18 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kenter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %22 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOPKG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %246

29:                                               ; preds = %3
  %30 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %31 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %30, i32 0, i32 0
  %32 = load %struct.x509_certificate*, %struct.x509_certificate** %31, align 8
  store %struct.x509_certificate* %32, %struct.x509_certificate** %9, align 8
  br label %33

33:                                               ; preds = %100, %29
  %34 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %35 = icmp ne %struct.x509_certificate* %34, null
  br i1 %35, label %36, label %104

36:                                               ; preds = %33
  %37 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %38 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %43 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %223

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENOKEY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %246

51:                                               ; preds = %36
  %52 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %53 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.key*, %struct.key** %7, align 8
  %55 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %56 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %59 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = call %struct.key* @find_asymmetric_key(%struct.key* %54, i32* %57, i32* %60, i32 0)
  store %struct.key* %61, %struct.key** %12, align 8
  %62 = load %struct.key*, %struct.key** %12, align 8
  %63 = call i32 @IS_ERR(%struct.key* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %51
  %66 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %67 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %70 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.key*, %struct.key** %12, align 8
  %73 = call i32 @key_serial(%struct.key* %72)
  %74 = call i32 (i8*, i32, i32, ...) @pr_devel(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %71, i32 %73)
  br label %202

75:                                               ; preds = %51
  %76 = load %struct.key*, %struct.key** %12, align 8
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.key* @ERR_PTR(i32 %78)
  %80 = icmp eq %struct.key* %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %246

84:                                               ; preds = %75
  %85 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %86 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %85, i32 0, i32 2
  %87 = load %struct.x509_certificate*, %struct.x509_certificate** %86, align 8
  %88 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %89 = icmp eq %struct.x509_certificate* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @ENOKEY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %246

94:                                               ; preds = %84
  %95 = call i32 (...) @might_sleep()
  %96 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  store %struct.x509_certificate* %96, %struct.x509_certificate** %10, align 8
  %97 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %98 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %97, i32 0, i32 4
  %99 = load %struct.public_key_signature*, %struct.public_key_signature** %98, align 8
  store %struct.public_key_signature* %99, %struct.public_key_signature** %8, align 8
  br label %100

100:                                              ; preds = %94
  %101 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %102 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %101, i32 0, i32 2
  %103 = load %struct.x509_certificate*, %struct.x509_certificate** %102, align 8
  store %struct.x509_certificate* %103, %struct.x509_certificate** %9, align 8
  br label %33

104:                                              ; preds = %33
  %105 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %106 = icmp ne %struct.x509_certificate* %105, null
  br i1 %106, label %107, label %166

107:                                              ; preds = %104
  %108 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %109 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %108, i32 0, i32 4
  %110 = load %struct.public_key_signature*, %struct.public_key_signature** %109, align 8
  %111 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %110, i32 0, i32 0
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %107
  %117 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %118 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %117, i32 0, i32 4
  %119 = load %struct.public_key_signature*, %struct.public_key_signature** %118, align 8
  %120 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %119, i32 0, i32 0
  %121 = load i32**, i32*** %120, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %166

125:                                              ; preds = %116, %107
  %126 = load %struct.key*, %struct.key** %7, align 8
  %127 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %128 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %127, i32 0, i32 4
  %129 = load %struct.public_key_signature*, %struct.public_key_signature** %128, align 8
  %130 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %129, i32 0, i32 0
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 0
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  %135 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %134, i32 0, i32 4
  %136 = load %struct.public_key_signature*, %struct.public_key_signature** %135, align 8
  %137 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %136, i32 0, i32 0
  %138 = load i32**, i32*** %137, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 1
  %140 = load i32*, i32** %139, align 8
  %141 = call %struct.key* @find_asymmetric_key(%struct.key* %126, i32* %133, i32* %140, i32 0)
  store %struct.key* %141, %struct.key** %12, align 8
  %142 = load %struct.key*, %struct.key** %12, align 8
  %143 = call i32 @IS_ERR(%struct.key* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %125
  %146 = load %struct.x509_certificate*, %struct.x509_certificate** %10, align 8
  store %struct.x509_certificate* %146, %struct.x509_certificate** %9, align 8
  %147 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %148 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %151 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.key*, %struct.key** %12, align 8
  %154 = call i32 @key_serial(%struct.key* %153)
  %155 = call i32 (i8*, i32, i32, ...) @pr_devel(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %152, i32 %154)
  br label %202

156:                                              ; preds = %125
  %157 = load %struct.key*, %struct.key** %12, align 8
  %158 = call i32 @PTR_ERR(%struct.key* %157)
  %159 = load i32, i32* @ENOKEY, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.key*, %struct.key** %12, align 8
  %164 = call i32 @PTR_ERR(%struct.key* %163)
  store i32 %164, i32* %4, align 4
  br label %246

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %116, %104
  %167 = load %struct.key*, %struct.key** %7, align 8
  %168 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %169 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %168, i32 0, i32 1
  %170 = load %struct.public_key_signature*, %struct.public_key_signature** %169, align 8
  %171 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %170, i32 0, i32 0
  %172 = load i32**, i32*** %171, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 0
  %174 = load i32*, i32** %173, align 8
  %175 = call %struct.key* @find_asymmetric_key(%struct.key* %167, i32* %174, i32* null, i32 0)
  store %struct.key* %175, %struct.key** %12, align 8
  %176 = load %struct.key*, %struct.key** %12, align 8
  %177 = call i32 @IS_ERR(%struct.key* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %166
  %180 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %181 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.key*, %struct.key** %12, align 8
  %184 = call i32 @key_serial(%struct.key* %183)
  %185 = call i32 (i8*, i32, i32, ...) @pr_devel(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %182, i32 %184)
  store %struct.x509_certificate* null, %struct.x509_certificate** %9, align 8
  %186 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %187 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %186, i32 0, i32 1
  %188 = load %struct.public_key_signature*, %struct.public_key_signature** %187, align 8
  store %struct.public_key_signature* %188, %struct.public_key_signature** %8, align 8
  br label %202

189:                                              ; preds = %166
  %190 = load %struct.key*, %struct.key** %12, align 8
  %191 = call i32 @PTR_ERR(%struct.key* %190)
  %192 = load i32, i32* @ENOKEY, align 4
  %193 = sub nsw i32 0, %192
  %194 = icmp ne i32 %191, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load %struct.key*, %struct.key** %12, align 8
  %197 = call i32 @PTR_ERR(%struct.key* %196)
  store i32 %197, i32* %4, align 4
  br label %246

198:                                              ; preds = %189
  %199 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %200 = load i32, i32* @ENOKEY, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %246

202:                                              ; preds = %179, %145, %65
  %203 = load %struct.key*, %struct.key** %12, align 8
  %204 = load %struct.public_key_signature*, %struct.public_key_signature** %8, align 8
  %205 = call i32 @verify_signature(%struct.key* %203, %struct.public_key_signature* %204)
  store i32 %205, i32* %13, align 4
  %206 = load %struct.key*, %struct.key** %12, align 8
  %207 = call i32 @key_put(%struct.key* %206)
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %202
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @ENOMEM, align 4
  %213 = sub nsw i32 0, %212
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load i32, i32* %13, align 4
  store i32 %216, i32* %4, align 4
  br label %246

217:                                              ; preds = %210
  %218 = load i32, i32* %13, align 4
  %219 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @EKEYREJECTED, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %4, align 4
  br label %246

222:                                              ; preds = %202
  br label %223

223:                                              ; preds = %222, %46
  %224 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %225 = icmp ne %struct.x509_certificate* %224, null
  br i1 %225, label %226, label %244

226:                                              ; preds = %223
  %227 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %228 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %227, i32 0, i32 1
  store i32 1, i32* %228, align 4
  %229 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %6, align 8
  %230 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %229, i32 0, i32 0
  %231 = load %struct.x509_certificate*, %struct.x509_certificate** %230, align 8
  store %struct.x509_certificate* %231, %struct.x509_certificate** %11, align 8
  br label %232

232:                                              ; preds = %239, %226
  %233 = load %struct.x509_certificate*, %struct.x509_certificate** %11, align 8
  %234 = load %struct.x509_certificate*, %struct.x509_certificate** %9, align 8
  %235 = icmp ne %struct.x509_certificate* %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = load %struct.x509_certificate*, %struct.x509_certificate** %11, align 8
  %238 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %237, i32 0, i32 1
  store i32 1, i32* %238, align 4
  br label %239

239:                                              ; preds = %236
  %240 = load %struct.x509_certificate*, %struct.x509_certificate** %11, align 8
  %241 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %240, i32 0, i32 2
  %242 = load %struct.x509_certificate*, %struct.x509_certificate** %241, align 8
  store %struct.x509_certificate* %242, %struct.x509_certificate** %11, align 8
  br label %232

243:                                              ; preds = %232
  br label %244

244:                                              ; preds = %243, %223
  %245 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %244, %217, %215, %198, %195, %162, %90, %81, %47, %25
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @kleave(i8*, ...) #1

declare dso_local %struct.key* @find_asymmetric_key(%struct.key*, i32*, i32*, i32) #1

declare dso_local i32 @IS_ERR(%struct.key*) #1

declare dso_local i32 @pr_devel(i8*, i32, i32, ...) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @verify_signature(%struct.key*, %struct.public_key_signature*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
