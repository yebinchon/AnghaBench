; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_public_key.c_x509_key_preparse.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_public_key.c_x509_key_preparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asymmetric_key_ids = type { i8*, i32, i32**, i32, i32 }
%struct.key_preparsed_payload = type { i8*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.asymmetric_key_ids** }
%struct.x509_certificate = type { i8*, i64, i64, i8*, %struct.asymmetric_key_ids*, i32*, i32*, %struct.asymmetric_key_ids*, i32, i64, i64, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Cert Issuer: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Cert Subject: %s\0A\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Cert Key Algo: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cert Valid period: %lld-%lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"X509\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Cert Signature: %s + %s\0A\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@public_key_subtype = common dso_local global %struct.asymmetric_key_ids zeroinitializer, align 8
@asym_subtype = common dso_local global i64 0, align 8
@asym_key_ids = common dso_local global i64 0, align 8
@asym_crypto = common dso_local global i64 0, align 8
@asym_auth = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_preparsed_payload*)* @x509_key_preparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_key_preparse(%struct.key_preparsed_payload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_preparsed_payload*, align 8
  %4 = alloca %struct.asymmetric_key_ids*, align 8
  %5 = alloca %struct.x509_certificate*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.key_preparsed_payload* %0, %struct.key_preparsed_payload** %3, align 8
  store i8* null, i8** %9, align 8
  %12 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %13 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %16 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.x509_certificate* @x509_cert_parse(i32 %14, i32 %17)
  store %struct.x509_certificate* %18, %struct.x509_certificate** %5, align 8
  %19 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %20 = call i64 @IS_ERR(%struct.x509_certificate* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %24 = call i32 @PTR_ERR(%struct.x509_certificate* %23)
  store i32 %24, i32* %2, align 4
  br label %221

25:                                               ; preds = %1
  %26 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %27 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %31 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %35 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %34, i32 0, i32 13
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @ENOPKG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %217

41:                                               ; preds = %25
  %42 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %43 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %42, i32 0, i32 7
  %44 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %43, align 8
  %45 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %49 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %52 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %56 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %55, i32 0, i32 7
  %57 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %56, align 8
  %58 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %60 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %41
  %64 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %65 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %64, i32 0, i32 4
  %66 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %65, align 8
  %67 = call i32 @public_key_signature_free(%struct.asymmetric_key_ids* %66)
  %68 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %69 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %68, i32 0, i32 4
  store %struct.asymmetric_key_ids* null, %struct.asymmetric_key_ids** %69, align 8
  br label %82

70:                                               ; preds = %41
  %71 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %72 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %71, i32 0, i32 4
  %73 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %72, align 8
  %74 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %77 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %76, i32 0, i32 4
  %78 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %77, align 8
  %79 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %80)
  br label %82

82:                                               ; preds = %70, %63
  %83 = load i32, i32* @EKEYREJECTED, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  %85 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %86 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %217

90:                                               ; preds = %82
  %91 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %92 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @strlen(i32 %93)
  store i64 %94, i64* %8, align 8
  %95 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %96 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %101 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %7, align 8
  %103 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %104 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %6, align 8
  br label %113

106:                                              ; preds = %90
  %107 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %108 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %7, align 8
  %110 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %111 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %6, align 8
  br label %113

113:                                              ; preds = %106, %99
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %11, align 4
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, 2
  %118 = load i64, i64* %7, align 8
  %119 = mul i64 %118, 2
  %120 = add i64 %117, %119
  %121 = add i64 %120, 1
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i8* @kmalloc(i32 %122, i32 %123)
  store i8* %124, i8** %9, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %113
  br label %217

128:                                              ; preds = %113
  %129 = load i8*, i8** %9, align 8
  %130 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %131 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i8* @memcpy(i8* %129, i32 %132, i64 %133)
  store i8* %134, i8** %10, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %137, i8** %10, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %10, align 8
  store i8 58, i8* %138, align 1
  %140 = load i8*, i8** %10, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %10, align 8
  store i8 32, i8* %140, align 1
  %142 = load i8*, i8** %10, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i8* @bin2hex(i8* %142, i8* %143, i64 %144)
  store i8* %145, i8** %10, align 8
  %146 = load i8*, i8** %10, align 8
  store i8 0, i8* %146, align 1
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i8* @kmalloc(i32 32, i32 %147)
  %149 = bitcast i8* %148 to %struct.asymmetric_key_ids*
  store %struct.asymmetric_key_ids* %149, %struct.asymmetric_key_ids** %4, align 8
  %150 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %4, align 8
  %151 = icmp ne %struct.asymmetric_key_ids* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %128
  br label %214

153:                                              ; preds = %128
  %154 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %155 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %4, align 8
  %158 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %157, i32 0, i32 2
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 0
  store i32* %156, i32** %160, align 8
  %161 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %162 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %4, align 8
  %165 = getelementptr inbounds %struct.asymmetric_key_ids, %struct.asymmetric_key_ids* %164, i32 0, i32 2
  %166 = load i32**, i32*** %165, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 1
  store i32* %163, i32** %167, align 8
  %168 = load i32, i32* getelementptr inbounds (%struct.asymmetric_key_ids, %struct.asymmetric_key_ids* @public_key_subtype, i32 0, i32 1), align 8
  %169 = call i32 @__module_get(i32 %168)
  %170 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %171 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %172, align 8
  %174 = load i64, i64* @asym_subtype, align 8
  %175 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %173, i64 %174
  store %struct.asymmetric_key_ids* @public_key_subtype, %struct.asymmetric_key_ids** %175, align 8
  %176 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %4, align 8
  %177 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %178 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %179, align 8
  %181 = load i64, i64* @asym_key_ids, align 8
  %182 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %180, i64 %181
  store %struct.asymmetric_key_ids* %176, %struct.asymmetric_key_ids** %182, align 8
  %183 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %184 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %183, i32 0, i32 7
  %185 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %184, align 8
  %186 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %187 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %188, align 8
  %190 = load i64, i64* @asym_crypto, align 8
  %191 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %189, i64 %190
  store %struct.asymmetric_key_ids* %185, %struct.asymmetric_key_ids** %191, align 8
  %192 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %193 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %192, i32 0, i32 4
  %194 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %193, align 8
  %195 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %196 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %197, align 8
  %199 = load i64, i64* @asym_auth, align 8
  %200 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %198, i64 %199
  store %struct.asymmetric_key_ids* %194, %struct.asymmetric_key_ids** %200, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %203 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %202, i32 0, i32 0
  store i8* %201, i8** %203, align 8
  %204 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %205 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %204, i32 0, i32 1
  store i32 100, i32* %205, align 8
  %206 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %207 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %206, i32 0, i32 7
  store %struct.asymmetric_key_ids* null, %struct.asymmetric_key_ids** %207, align 8
  %208 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %209 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %208, i32 0, i32 6
  store i32* null, i32** %209, align 8
  %210 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %211 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %210, i32 0, i32 5
  store i32* null, i32** %211, align 8
  %212 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %213 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %212, i32 0, i32 4
  store %struct.asymmetric_key_ids* null, %struct.asymmetric_key_ids** %213, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %214

214:                                              ; preds = %153, %152
  %215 = load i8*, i8** %9, align 8
  %216 = call i32 @kfree(i8* %215)
  br label %217

217:                                              ; preds = %214, %127, %89, %38
  %218 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %219 = call i32 @x509_free_certificate(%struct.x509_certificate* %218)
  %220 = load i32, i32* %11, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %217, %22
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.x509_certificate* @x509_cert_parse(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.x509_certificate*) #1

declare dso_local i32 @PTR_ERR(%struct.x509_certificate*) #1

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

declare dso_local i32 @public_key_signature_free(%struct.asymmetric_key_ids*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @memcpy(i8*, i32, i64) #1

declare dso_local i8* @bin2hex(i8*, i8*, i64) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @x509_free_certificate(%struct.x509_certificate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
