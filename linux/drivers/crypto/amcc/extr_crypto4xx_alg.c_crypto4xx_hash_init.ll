; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_hash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.crypto4xx_ctx = type { %struct.dynamic_sa_ctl* }
%struct.dynamic_sa_ctl = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@SA_LOAD_HASH_FROM_SA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto4xx_hash_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto4xx_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dynamic_sa_ctl*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32 %9)
  store %struct.crypto4xx_ctx* %10, %struct.crypto4xx_ctx** %3, align 8
  %11 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %11, i32 0, i32 0
  %13 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %12, align 8
  store %struct.dynamic_sa_ctl* %13, %struct.dynamic_sa_ctl** %5, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %15 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__crypto_ahash_cast(i32 %17)
  %19 = call i32 @crypto_ahash_digestsize(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 2
  %22 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %5, align 8
  %23 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @SA_LOAD_HASH_FROM_SA, align 4
  %27 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %5, align 8
  %28 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  ret i32 0
}

declare dso_local %struct.crypto4xx_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_ahash_digestsize(i32) #1

declare dso_local i32 @__crypto_ahash_cast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
