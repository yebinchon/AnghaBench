; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_free.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_instance = type { i32 }
%struct.authenc_instance_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_instance*)* @crypto_authenc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_authenc_free(%struct.aead_instance* %0) #0 {
  %2 = alloca %struct.aead_instance*, align 8
  %3 = alloca %struct.authenc_instance_ctx*, align 8
  store %struct.aead_instance* %0, %struct.aead_instance** %2, align 8
  %4 = load %struct.aead_instance*, %struct.aead_instance** %2, align 8
  %5 = call %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %4)
  store %struct.authenc_instance_ctx* %5, %struct.authenc_instance_ctx** %3, align 8
  %6 = load %struct.authenc_instance_ctx*, %struct.authenc_instance_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.authenc_instance_ctx, %struct.authenc_instance_ctx* %6, i32 0, i32 1
  %8 = call i32 @crypto_drop_skcipher(i32* %7)
  %9 = load %struct.authenc_instance_ctx*, %struct.authenc_instance_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.authenc_instance_ctx, %struct.authenc_instance_ctx* %9, i32 0, i32 0
  %11 = call i32 @crypto_drop_ahash(i32* %10)
  %12 = load %struct.aead_instance*, %struct.aead_instance** %2, align 8
  %13 = call i32 @kfree(%struct.aead_instance* %12)
  ret void
}

declare dso_local %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local i32 @crypto_drop_skcipher(i32*) #1

declare dso_local i32 @crypto_drop_ahash(i32*) #1

declare dso_local i32 @kfree(%struct.aead_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
