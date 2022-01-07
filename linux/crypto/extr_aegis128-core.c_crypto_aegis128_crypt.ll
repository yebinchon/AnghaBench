; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32 }
%union.aegis_block = type { i32 }
%struct.aegis128_ops = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.aegis_ctx = type { i32 }
%struct.aegis_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %union.aegis_block*, i32, %struct.aegis128_ops*)* @crypto_aegis128_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_crypt(%struct.aead_request* %0, %union.aegis_block* %1, i32 %2, %struct.aegis128_ops* %3) #0 {
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %union.aegis_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aegis128_ops*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.aegis_ctx*, align 8
  %11 = alloca %struct.aegis_state, align 4
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store %union.aegis_block* %1, %union.aegis_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.aegis128_ops* %3, %struct.aegis128_ops** %8, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %13 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %12)
  store %struct.crypto_aead* %13, %struct.crypto_aead** %9, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %15 = call %struct.aegis_ctx* @crypto_aead_ctx(%struct.crypto_aead* %14)
  store %struct.aegis_ctx* %15, %struct.aegis_ctx** %10, align 8
  %16 = load %struct.aegis_ctx*, %struct.aegis_ctx** %10, align 8
  %17 = getelementptr inbounds %struct.aegis_ctx, %struct.aegis_ctx* %16, i32 0, i32 0
  %18 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %19 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @crypto_aegis128_init(%struct.aegis_state* %11, i32* %17, i32 %20)
  %22 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %23 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @crypto_aegis128_process_ad(%struct.aegis_state* %11, i32 %24, i32 %27)
  %29 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %30 = load %struct.aegis128_ops*, %struct.aegis128_ops** %8, align 8
  %31 = call i32 @crypto_aegis128_process_crypt(%struct.aegis_state* %11, %struct.aead_request* %29, %struct.aegis128_ops* %30)
  %32 = load %union.aegis_block*, %union.aegis_block** %6, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @crypto_aegis128_final(%struct.aegis_state* %11, %union.aegis_block* %32, i32 %35, i32 %36)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.aegis_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aegis128_init(%struct.aegis_state*, i32*, i32) #1

declare dso_local i32 @crypto_aegis128_process_ad(%struct.aegis_state*, i32, i32) #1

declare dso_local i32 @crypto_aegis128_process_crypt(%struct.aegis_state*, %struct.aead_request*, %struct.aegis128_ops*) #1

declare dso_local i32 @crypto_aegis128_final(%struct.aegis_state*, %union.aegis_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
