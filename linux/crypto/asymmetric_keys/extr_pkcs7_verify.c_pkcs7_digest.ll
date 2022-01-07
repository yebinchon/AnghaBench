; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_digest.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { i32, i32 }
%struct.pkcs7_signed_info = type { i64, i32, i32, i32, i32, %struct.public_key_signature* }
%struct.public_key_signature = type { i64, i64, i32 }
%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@.str = private unnamed_addr constant [7 x i8] c",%u,%s\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"MsgDigest = [%*ph]\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Sig %u: No messageDigest\0A\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Sig %u: Invalid digest size (%u)\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Sig %u: Message digest doesn't match\0A\00", align 1
@ASN1_CONS_BIT = common dso_local global i32 0, align 4
@ASN1_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"AADigest = [%*ph]\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkcs7_message*, %struct.pkcs7_signed_info*)* @pkcs7_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs7_digest(%struct.pkcs7_message* %0, %struct.pkcs7_signed_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pkcs7_message*, align 8
  %5 = alloca %struct.pkcs7_signed_info*, align 8
  %6 = alloca %struct.public_key_signature*, align 8
  %7 = alloca %struct.crypto_shash*, align 8
  %8 = alloca %struct.shash_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pkcs7_message* %0, %struct.pkcs7_message** %4, align 8
  store %struct.pkcs7_signed_info* %1, %struct.pkcs7_signed_info** %5, align 8
  %12 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %13 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %12, i32 0, i32 5
  %14 = load %struct.public_key_signature*, %struct.public_key_signature** %13, align 8
  store %struct.public_key_signature* %14, %struct.public_key_signature** %6, align 8
  %15 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %16 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %19 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %18, i32 0, i32 5
  %20 = load %struct.public_key_signature*, %struct.public_key_signature** %19, align 8
  %21 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @kenter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22)
  %24 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %25 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %221

29:                                               ; preds = %2
  %30 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %31 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %30, i32 0, i32 5
  %32 = load %struct.public_key_signature*, %struct.public_key_signature** %31, align 8
  %33 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOPKG, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %221

39:                                               ; preds = %29
  %40 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %41 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %40, i32 0, i32 5
  %42 = load %struct.public_key_signature*, %struct.public_key_signature** %41, align 8
  %43 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.crypto_shash* @crypto_alloc_shash(i32 %44, i32 0, i32 0)
  store %struct.crypto_shash* %45, %struct.crypto_shash** %7, align 8
  %46 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %47 = call i64 @IS_ERR(%struct.crypto_shash* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %39
  %50 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %51 = call i32 @PTR_ERR(%struct.crypto_shash* %50)
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOPKG, align 4
  %57 = sub nsw i32 0, %56
  br label %61

58:                                               ; preds = %49
  %59 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %60 = call i32 @PTR_ERR(%struct.crypto_shash* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i32 [ %57, %55 ], [ %60, %58 ]
  store i32 %62, i32* %3, align 4
  br label %221

63:                                               ; preds = %39
  %64 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %65 = call i32 @crypto_shash_descsize(%struct.crypto_shash* %64)
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 8
  store i64 %67, i64* %9, align 8
  %68 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %69 = call i64 @crypto_shash_digestsize(%struct.crypto_shash* %68)
  %70 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %71 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  %74 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %75 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i64 @kmalloc(i64 %76, i32 %77)
  %79 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %80 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %82 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %63
  br label %215

86:                                               ; preds = %63
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.shash_desc* @kzalloc(i64 %87, i32 %88)
  store %struct.shash_desc* %89, %struct.shash_desc** %8, align 8
  %90 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %91 = icmp ne %struct.shash_desc* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %215

93:                                               ; preds = %86
  %94 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %95 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %96 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %95, i32 0, i32 0
  store %struct.crypto_shash* %94, %struct.crypto_shash** %96, align 8
  %97 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %98 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %99 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %102 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %105 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @crypto_shash_digest(%struct.shash_desc* %97, i32 %100, i32 %103, i64 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %93
  br label %212

111:                                              ; preds = %93
  %112 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %113 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @pr_devel(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8, i64 %114)
  %116 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %117 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %211

120:                                              ; preds = %111
  %121 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %122 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %120
  %126 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %127 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @EKEYREJECTED, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %10, align 4
  br label %212

132:                                              ; preds = %120
  %133 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %134 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %137 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %132
  %141 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %142 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %145 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %143, i64 %146)
  %148 = load i32, i32* @EBADMSG, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %10, align 4
  br label %212

150:                                              ; preds = %132
  %151 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %152 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %155 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %158 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @memcmp(i64 %153, i32 %156, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %150
  %163 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %164 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @EKEYREJECTED, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %10, align 4
  br label %212

169:                                              ; preds = %150
  %170 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %171 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %174 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @memset(i64 %172, i32 0, i64 %175)
  %177 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %178 = call i32 @crypto_shash_init(%struct.shash_desc* %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %169
  br label %212

182:                                              ; preds = %169
  %183 = load i32, i32* @ASN1_CONS_BIT, align 4
  %184 = load i32, i32* @ASN1_SET, align 4
  %185 = or i32 %183, %184
  store i32 %185, i32* %11, align 4
  %186 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %187 = call i32 @crypto_shash_update(%struct.shash_desc* %186, i32* %11, i32 1)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %212

191:                                              ; preds = %182
  %192 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %193 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %194 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %197 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %200 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @crypto_shash_finup(%struct.shash_desc* %192, i32 %195, i32 %198, i64 %201)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %191
  br label %212

206:                                              ; preds = %191
  %207 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %208 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 8, i64 %209)
  br label %211

211:                                              ; preds = %206, %111
  br label %212

212:                                              ; preds = %211, %205, %190, %181, %162, %140, %125, %110
  %213 = load %struct.shash_desc*, %struct.shash_desc** %8, align 8
  %214 = call i32 @kfree(%struct.shash_desc* %213)
  br label %215

215:                                              ; preds = %212, %92, %85
  %216 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %217 = call i32 @crypto_free_shash(%struct.crypto_shash* %216)
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %215, %61, %36, %28
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @kenter(i8*, i32, i32) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local %struct.shash_desc* @kzalloc(i64, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.shash_desc*, i32, i32, i64) #1

declare dso_local i32 @pr_devel(i8*, i32, i64) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @memcmp(i64, i32, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @crypto_shash_init(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @crypto_shash_finup(%struct.shash_desc*, i32, i32, i64) #1

declare dso_local i32 @kfree(%struct.shash_desc*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

declare dso_local i32 @kleave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
