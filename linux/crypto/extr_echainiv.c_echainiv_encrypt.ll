; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_echainiv.c_echainiv_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_echainiv.c_echainiv_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.aead_geniv_ctx = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@nreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @echainiv_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @echainiv_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.aead_geniv_ctx*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %4, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %16 = call %struct.aead_geniv_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.aead_geniv_ctx* %16, %struct.aead_geniv_ctx** %5, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = call %struct.aead_request* @aead_request_ctx(%struct.aead_request* %17)
  store %struct.aead_request* %18, %struct.aead_request** %6, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %20 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %163

29:                                               ; preds = %1
  %30 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %31 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @aead_request_set_tfm(%struct.aead_request* %30, i32 %33)
  %35 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  %38 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %29
  %46 = load i32, i32* @nreq, align 4
  %47 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %46, i32 %49)
  %51 = load i32, i32* @nreq, align 4
  %52 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @skcipher_request_set_sync_tfm(i32 %51, i32 %54)
  %56 = load i32, i32* @nreq, align 4
  %57 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %58 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @skcipher_request_set_callback(i32 %56, i32 %60, i32* null, i32* null)
  %62 = load i32, i32* @nreq, align 4
  %63 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %64 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %67 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %70 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add i32 %71, %74
  %76 = call i32 @skcipher_request_set_crypt(i32 %62, i32 %65, i32 %68, i32 %75, i32* null)
  %77 = load i32, i32* @nreq, align 4
  %78 = call i32 @crypto_skcipher_encrypt(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %45
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %2, align 4
  br label %163

83:                                               ; preds = %45
  br label %84

84:                                               ; preds = %83, %29
  %85 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %86 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %87 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %91 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %95 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @aead_request_set_callback(%struct.aead_request* %85, i32 %89, i32 %93, i32 %97)
  %99 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %100 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %101 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %104 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %107 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @aead_request_set_crypt(%struct.aead_request* %99, i32 %102, i32 %105, i32 %108, i32* %109)
  %111 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %112 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %113 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @aead_request_set_ad(%struct.aead_request* %111, i32 %114)
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = getelementptr inbounds i32, i32* %119, i64 -8
  %121 = call i32 @memcpy(i32* %7, i32* %120, i32 8)
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @be64_to_cpu(i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @memset(i32* %124, i32 0, i32 %125)
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %129 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %132 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @scatterwalk_map_and_copy(i32* %127, i32 %130, i32 %133, i32 %134, i32 1)
  br label %136

136:                                              ; preds = %156, %84
  %137 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = getelementptr inbounds i32, i32* %142, i64 -8
  %144 = call i32 @memcpy(i32* %12, i32* %143, i32 8)
  %145 = load i32, i32* %12, align 4
  %146 = or i32 %145, 1
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %12, align 4
  %149 = mul nsw i32 %148, %147
  store i32 %149, i32* %12, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = getelementptr inbounds i32, i32* %153, i64 -8
  %155 = call i32 @memcpy(i32* %154, i32* %12, i32 8)
  br label %156

156:                                              ; preds = %136
  %157 = load i32, i32* %10, align 4
  %158 = sub i32 %157, 8
  store i32 %158, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %136, label %160

160:                                              ; preds = %156
  %161 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %162 = call i32 @crypto_aead_encrypt(%struct.aead_request* %161)
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %160, %81, %26
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.aead_geniv_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32, i32, i32, i32*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
