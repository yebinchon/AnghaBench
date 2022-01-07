; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_verify_sig_chain.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_verify.c_pkcs7_verify_sig_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { %struct.x509_certificate* }
%struct.x509_certificate = type { i32, i32, %struct.x509_certificate*, %struct.public_key_signature*, i32, i32, i32, %struct.TYPE_2__*, %struct.x509_certificate*, %struct.TYPE_2__*, i64, i64, i32, i64, i32, i32 }
%struct.public_key_signature = type { %struct.asymmetric_key_id** }
%struct.asymmetric_key_id = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pkcs7_signed_info = type { i32, i32, %struct.x509_certificate* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"verify %s: %*phN\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"- blacklisted\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"- issuer %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"- authkeyid.id %*phN\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"- authkeyid.skid %*phN\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"- self-signed\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"- want %*phN\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"- cmp [%u] %*phN\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"- top\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"Sig %u: X.509 chain contains auth-skid nonmatch (%u->%u)\0A\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"- subject %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Sig %u: X.509 chain contains loop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkcs7_message*, %struct.pkcs7_signed_info*)* @pkcs7_verify_sig_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs7_verify_sig_chain(%struct.pkcs7_message* %0, %struct.pkcs7_signed_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pkcs7_message*, align 8
  %5 = alloca %struct.pkcs7_signed_info*, align 8
  %6 = alloca %struct.public_key_signature*, align 8
  %7 = alloca %struct.x509_certificate*, align 8
  %8 = alloca %struct.x509_certificate*, align 8
  %9 = alloca %struct.asymmetric_key_id*, align 8
  %10 = alloca i32, align 4
  store %struct.pkcs7_message* %0, %struct.pkcs7_message** %4, align 8
  store %struct.pkcs7_signed_info* %1, %struct.pkcs7_signed_info** %5, align 8
  %11 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %12 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %11, i32 0, i32 2
  %13 = load %struct.x509_certificate*, %struct.x509_certificate** %12, align 8
  store %struct.x509_certificate* %13, %struct.x509_certificate** %7, align 8
  %14 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %16 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %15, i32 0, i32 0
  %17 = load %struct.x509_certificate*, %struct.x509_certificate** %16, align 8
  store %struct.x509_certificate* %17, %struct.x509_certificate** %8, align 8
  br label %18

18:                                               ; preds = %24, %2
  %19 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %20 = icmp ne %struct.x509_certificate* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %23 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %21
  %25 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %26 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %25, i32 0, i32 8
  %27 = load %struct.x509_certificate*, %struct.x509_certificate** %26, align 8
  store %struct.x509_certificate* %27, %struct.x509_certificate** %8, align 8
  br label %18

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %320, %28
  %30 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %31 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %34 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %37 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %41 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %43 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %29
  %47 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %48 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %50 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %49, i32 0, i32 2
  %51 = load %struct.x509_certificate*, %struct.x509_certificate** %50, align 8
  store %struct.x509_certificate* %51, %struct.x509_certificate** %8, align 8
  br label %52

52:                                               ; preds = %59, %46
  %53 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %54 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %55 = icmp ne %struct.x509_certificate* %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %58 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56
  %60 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %61 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %60, i32 0, i32 2
  %62 = load %struct.x509_certificate*, %struct.x509_certificate** %61, align 8
  store %struct.x509_certificate* %62, %struct.x509_certificate** %8, align 8
  br label %52

63:                                               ; preds = %52
  %64 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %324

65:                                               ; preds = %29
  %66 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %67 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %66, i32 0, i32 13
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %323

71:                                               ; preds = %65
  %72 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %73 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %77 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %76, i32 0, i32 3
  %78 = load %struct.public_key_signature*, %struct.public_key_signature** %77, align 8
  store %struct.public_key_signature* %78, %struct.public_key_signature** %6, align 8
  %79 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %80 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %79, i32 0, i32 0
  %81 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %80, align 8
  %82 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %81, i64 0
  %83 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %82, align 8
  %84 = icmp ne %struct.asymmetric_key_id* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %71
  %86 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %87 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %86, i32 0, i32 0
  %88 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %87, align 8
  %89 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %88, i64 0
  %90 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %89, align 8
  %91 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %94 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %93, i32 0, i32 0
  %95 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %94, align 8
  %96 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %95, i64 0
  %97 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %96, align 8
  %98 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %99)
  br label %101

101:                                              ; preds = %85, %71
  %102 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %103 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %102, i32 0, i32 0
  %104 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %103, align 8
  %105 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %104, i64 1
  %106 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %105, align 8
  %107 = icmp ne %struct.asymmetric_key_id* %106, null
  br i1 %107, label %108, label %124

108:                                              ; preds = %101
  %109 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %110 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %109, i32 0, i32 0
  %111 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %110, align 8
  %112 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %111, i64 1
  %113 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %112, align 8
  %114 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %117 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %116, i32 0, i32 0
  %118 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %117, align 8
  %119 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %118, i64 1
  %120 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %119, align 8
  %121 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %122)
  br label %124

124:                                              ; preds = %108, %101
  %125 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %126 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %125, i32 0, i32 11
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %131 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %130, i32 0, i32 10
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %323

135:                                              ; preds = %129
  %136 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %137 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %138 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %137, i32 0, i32 2
  store %struct.x509_certificate* %136, %struct.x509_certificate** %138, align 8
  %139 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %324

140:                                              ; preds = %124
  %141 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %142 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %141, i32 0, i32 0
  %143 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %142, align 8
  %144 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %143, i64 0
  %145 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %144, align 8
  store %struct.asymmetric_key_id* %145, %struct.asymmetric_key_id** %9, align 8
  %146 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %9, align 8
  %147 = icmp ne %struct.asymmetric_key_id* %146, null
  br i1 %147, label %148, label %190

148:                                              ; preds = %140
  %149 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %9, align 8
  %150 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %9, align 8
  %153 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %157 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %156, i32 0, i32 0
  %158 = load %struct.x509_certificate*, %struct.x509_certificate** %157, align 8
  store %struct.x509_certificate* %158, %struct.x509_certificate** %8, align 8
  br label %159

159:                                              ; preds = %185, %148
  %160 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %161 = icmp ne %struct.x509_certificate* %160, null
  br i1 %161, label %162, label %189

162:                                              ; preds = %159
  %163 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %164 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %167 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %166, i32 0, i32 9
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %172 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %171, i32 0, i32 9
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %165, i32 %170, i32 %175)
  %177 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %178 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %177, i32 0, i32 9
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %9, align 8
  %181 = call i64 @asymmetric_key_id_same(%struct.TYPE_2__* %179, %struct.asymmetric_key_id* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %162
  br label %253

184:                                              ; preds = %162
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %187 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %186, i32 0, i32 8
  %188 = load %struct.x509_certificate*, %struct.x509_certificate** %187, align 8
  store %struct.x509_certificate* %188, %struct.x509_certificate** %8, align 8
  br label %159

189:                                              ; preds = %159
  br label %251

190:                                              ; preds = %140
  %191 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %192 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %191, i32 0, i32 0
  %193 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %192, align 8
  %194 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %193, i64 1
  %195 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %194, align 8
  %196 = icmp ne %struct.asymmetric_key_id* %195, null
  br i1 %196, label %197, label %250

197:                                              ; preds = %190
  %198 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %199 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %198, i32 0, i32 0
  %200 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %199, align 8
  %201 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %200, i64 1
  %202 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %201, align 8
  store %struct.asymmetric_key_id* %202, %struct.asymmetric_key_id** %9, align 8
  %203 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %9, align 8
  %204 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %9, align 8
  %207 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %205, i32 %208)
  %210 = load %struct.pkcs7_message*, %struct.pkcs7_message** %4, align 8
  %211 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %210, i32 0, i32 0
  %212 = load %struct.x509_certificate*, %struct.x509_certificate** %211, align 8
  store %struct.x509_certificate* %212, %struct.x509_certificate** %8, align 8
  br label %213

213:                                              ; preds = %245, %197
  %214 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %215 = icmp ne %struct.x509_certificate* %214, null
  br i1 %215, label %216, label %249

216:                                              ; preds = %213
  %217 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %218 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %217, i32 0, i32 7
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = icmp ne %struct.TYPE_2__* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %216
  br label %245

222:                                              ; preds = %216
  %223 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %224 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %227 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %226, i32 0, i32 7
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %232 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %231, i32 0, i32 7
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %225, i32 %230, i32 %235)
  %237 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %238 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %237, i32 0, i32 7
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %9, align 8
  %241 = call i64 @asymmetric_key_id_same(%struct.TYPE_2__* %239, %struct.asymmetric_key_id* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %222
  br label %285

244:                                              ; preds = %222
  br label %245

245:                                              ; preds = %244, %221
  %246 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %247 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %246, i32 0, i32 8
  %248 = load %struct.x509_certificate*, %struct.x509_certificate** %247, align 8
  store %struct.x509_certificate* %248, %struct.x509_certificate** %8, align 8
  br label %213

249:                                              ; preds = %213
  br label %250

250:                                              ; preds = %249, %190
  br label %251

251:                                              ; preds = %250, %189
  %252 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %324

253:                                              ; preds = %183
  %254 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %255 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %254, i32 0, i32 0
  %256 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %255, align 8
  %257 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %256, i64 1
  %258 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %257, align 8
  %259 = icmp ne %struct.asymmetric_key_id* %258, null
  br i1 %259, label %260, label %284

260:                                              ; preds = %253
  %261 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %262 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %261, i32 0, i32 7
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %262, align 8
  %264 = load %struct.public_key_signature*, %struct.public_key_signature** %6, align 8
  %265 = getelementptr inbounds %struct.public_key_signature, %struct.public_key_signature* %264, i32 0, i32 0
  %266 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %265, align 8
  %267 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %266, i64 1
  %268 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %267, align 8
  %269 = call i64 @asymmetric_key_id_same(%struct.TYPE_2__* %263, %struct.asymmetric_key_id* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %284, label %271

271:                                              ; preds = %260
  %272 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %273 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %276 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %279 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i32 %274, i32 %277, i32 %280)
  %282 = load i32, i32* @EKEYREJECTED, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %3, align 4
  br label %324

284:                                              ; preds = %260, %253
  br label %285

285:                                              ; preds = %284, %243
  %286 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %287 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %288)
  %290 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %291 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %285
  %295 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %5, align 8
  %296 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %297)
  store i32 0, i32* %3, align 4
  br label %324

299:                                              ; preds = %285
  %300 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %301 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %304 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %303, i32 0, i32 3
  %305 = load %struct.public_key_signature*, %struct.public_key_signature** %304, align 8
  %306 = call i32 @public_key_verify_signature(i32 %302, %struct.public_key_signature* %305)
  store i32 %306, i32* %10, align 4
  %307 = load i32, i32* %10, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %299
  %310 = load i32, i32* %10, align 4
  store i32 %310, i32* %3, align 4
  br label %324

311:                                              ; preds = %299
  %312 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %313 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %314 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %313, i32 0, i32 2
  store %struct.x509_certificate* %312, %struct.x509_certificate** %314, align 8
  %315 = load %struct.x509_certificate*, %struct.x509_certificate** %7, align 8
  %316 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %317 = icmp eq %struct.x509_certificate* %315, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %311
  %319 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %324

320:                                              ; preds = %311
  %321 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  store %struct.x509_certificate* %321, %struct.x509_certificate** %7, align 8
  %322 = call i32 (...) @might_sleep()
  br label %29

323:                                              ; preds = %134, %70
  store i32 0, i32* %3, align 4
  br label %324

324:                                              ; preds = %323, %318, %309, %294, %271, %251, %135, %63
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @asymmetric_key_id_same(%struct.TYPE_2__*, %struct.asymmetric_key_id*) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @public_key_verify_signature(i32, %struct.public_key_signature*) #1

declare dso_local i32 @might_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
