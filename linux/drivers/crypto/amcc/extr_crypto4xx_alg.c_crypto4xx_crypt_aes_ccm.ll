; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_crypt_aes_ccm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_crypt_aes_ccm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32*, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.crypto4xx_ctx = type { i32, i32, i32 }
%struct.crypto4xx_aead_reqctx = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.dynamic_sa_ctl = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SA_AES128_CCM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @crypto4xx_crypt_aes_ccm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_crypt_aes_ccm(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto4xx_ctx*, align 8
  %7 = alloca %struct.crypto4xx_aead_reqctx*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dynamic_sa_ctl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %16 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32 %18)
  store %struct.crypto4xx_ctx* %19, %struct.crypto4xx_ctx** %6, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %21 = call %struct.crypto4xx_aead_reqctx* @aead_request_ctx(%struct.aead_request* %20)
  store %struct.crypto4xx_aead_reqctx* %21, %struct.crypto4xx_aead_reqctx** %7, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %23 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %22)
  store %struct.crypto_aead* %23, %struct.crypto_aead** %8, align 8
  %24 = load i32, i32* @SA_AES128_CCM_LEN, align 4
  %25 = add nsw i32 %24, 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = bitcast i32* %28 to %struct.dynamic_sa_ctl*
  store %struct.dynamic_sa_ctl* %29, %struct.dynamic_sa_ctl** %12, align 8
  %30 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %31 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %37 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %36)
  %38 = load i32, i32* %13, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %35, %2
  %41 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @crypto4xx_aead_need_fallback(%struct.aead_request* %41, i32 %42, i32 1, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %48 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @crypto4xx_aead_fallback(%struct.aead_request* %47, %struct.crypto4xx_ctx* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %124

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %57, %54 ], [ %61, %58 ]
  %64 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 4
  %68 = call i32 @memcpy(i32* %28, i32 %63, i32 %67)
  %69 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %70 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %69)
  %71 = ashr i32 %70, 2
  %72 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %12, align 8
  %73 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %77 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %62
  %83 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %12, align 8
  %84 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %62
  %88 = call i32 @cpu_to_le32(i32 0)
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 3
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %91 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %92 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %95 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  %100 = sub nsw i32 16, %99
  %101 = call i32 @crypto4xx_memcpy_to_le32(i32* %90, i32* %93, i32 %100)
  %102 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %103 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %102, i32 0, i32 5
  %104 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %105 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %106 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %109 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %113 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %12, align 8
  %114 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %6, align 8
  %115 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %118 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.crypto4xx_aead_reqctx*, %struct.crypto4xx_aead_reqctx** %7, align 8
  %121 = getelementptr inbounds %struct.crypto4xx_aead_reqctx, %struct.crypto4xx_aead_reqctx* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @crypto4xx_build_pd(%struct.TYPE_10__* %103, %struct.crypto4xx_ctx* %104, i32 %107, i32 %110, i32 %111, i32* %112, i32 64, %struct.dynamic_sa_ctl* %113, i32 %116, i32 %119, i32 %122)
  store i32 %123, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %124

124:                                              ; preds = %87, %46
  %125 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.crypto4xx_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i64 @crypto4xx_aead_need_fallback(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @crypto4xx_aead_fallback(%struct.aead_request*, %struct.crypto4xx_ctx*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @crypto4xx_memcpy_to_le32(i32*, i32*, i32) #1

declare dso_local i32 @crypto4xx_build_pd(%struct.TYPE_10__*, %struct.crypto4xx_ctx*, i32, i32, i32, i32*, i32, %struct.dynamic_sa_ctl*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
