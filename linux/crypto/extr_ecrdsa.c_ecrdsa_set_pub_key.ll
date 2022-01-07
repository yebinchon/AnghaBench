; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecrdsa.c_ecrdsa_set_pub_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecrdsa.c_ecrdsa_set_pub_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.ecrdsa_ctx = type { i8*, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i64, i32*, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ecrdsa_pub_key_decoder = common dso_local global i32 0, align 4
@OID_gost2012PKey256 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"streebog256\00", align 1
@OID_gost2012Digest256 = common dso_local global i32 0, align 4
@OID_gost2012PKey512 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"streebog512\00", align 1
@OID_gost2012Digest512 = common dso_local global i32 0, align 4
@ENOPKG = common dso_local global i32 0, align 4
@ecrdsa_params_decoder = common dso_local global i32 0, align 4
@EKEYREJECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*, i8*, i32)* @ecrdsa_set_pub_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecrdsa_set_pub_key(%struct.crypto_akcipher* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_akcipher*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecrdsa_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__, align 4
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %5, align 8
  %16 = call %struct.ecrdsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %15)
  store %struct.ecrdsa_ctx* %16, %struct.ecrdsa_ctx** %8, align 8
  %17 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = call i32 @asn1_ber_decoder(i32* @ecrdsa_pub_key_decoder, %struct.ecrdsa_ctx* %17, i8* %18, i64 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %180

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr i8, i8* %27, i64 %29
  %31 = call i8* @ecrdsa_unpack_u32(i64* %10, i8* %30)
  %32 = call i8* @ecrdsa_unpack_u32(i64* %11, i8* %31)
  store i8* %32, i8** %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @OID_gost2012PKey256, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @OID_gost2012Digest256, align 4
  %40 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %42, i32 0, i32 1
  store i32 32, i32* %43, align 8
  br label %60

44:                                               ; preds = %26
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @OID_gost2012PKey512, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* @OID_gost2012Digest512, align 4
  %52 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %54, i32 0, i32 1
  store i32 64, i32* %55, align 8
  br label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOPKG, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %180

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %62, i32 0, i32 7
  store i64 %61, i64* %63, align 8
  %64 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @asn1_ber_decoder(i32* @ecrdsa_params_decoder, %struct.ecrdsa_ctx* %64, i8* %65, i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %4, align 4
  br label %180

72:                                               ; preds = %60
  %73 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %73, i32 0, i32 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %87 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %85, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %77, %72
  %92 = load i32, i32* @ENOPKG, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %180

94:                                               ; preds = %77
  %95 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %96 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 64
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %101 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 128
  br i1 %103, label %119, label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %106 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %110 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %109, i32 0, i32 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = mul i64 %116, 2
  %118 = icmp ne i64 %108, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %104, %99
  %120 = load i32, i32* @ENOPKG, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %180

122:                                              ; preds = %104
  %123 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %124 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = udiv i64 %126, 4
  %128 = udiv i64 %127, 2
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %9, align 4
  %130 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %131 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %130, i32 0, i32 3
  %132 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %133 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %138 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %137, i32 0, i32 6
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i64 @ECC_POINT_INIT(i32 %136, i32 %141, i32 %142)
  %144 = bitcast %struct.TYPE_7__* %14 to i64*
  store i64 %143, i64* %144, align 4
  %145 = bitcast %struct.TYPE_7__* %131 to i8*
  %146 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 4 %146, i64 8, i1 false)
  %147 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %148 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %152 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @vli_from_le64(i32 %150, i64 %153, i32 %154)
  %156 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %157 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %161 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = zext i32 %163 to i64
  %165 = mul i64 %164, 4
  %166 = add i64 %162, %165
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @vli_from_le64(i32 %159, i64 %166, i32 %167)
  %169 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %170 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %169, i32 0, i32 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load %struct.ecrdsa_ctx*, %struct.ecrdsa_ctx** %8, align 8
  %173 = getelementptr inbounds %struct.ecrdsa_ctx, %struct.ecrdsa_ctx* %172, i32 0, i32 3
  %174 = call i64 @ecc_is_pubkey_valid_partial(%struct.TYPE_6__* %171, %struct.TYPE_7__* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %122
  %177 = load i32, i32* @EKEYREJECTED, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %4, align 4
  br label %180

179:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %176, %119, %91, %70, %56, %24
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local %struct.ecrdsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i32 @asn1_ber_decoder(i32*, %struct.ecrdsa_ctx*, i8*, i64) #1

declare dso_local i8* @ecrdsa_unpack_u32(i64*, i8*) #1

declare dso_local i64 @ECC_POINT_INIT(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vli_from_le64(i32, i64, i32) #1

declare dso_local i64 @ecc_is_pubkey_valid_partial(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
