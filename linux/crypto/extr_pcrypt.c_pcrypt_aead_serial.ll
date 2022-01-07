; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_aead_serial.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_aead_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_priv = type { i32 }
%struct.pcrypt_request = type { i32 }
%struct.aead_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.padata_priv*)* @pcrypt_aead_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcrypt_aead_serial(%struct.padata_priv* %0) #0 {
  %2 = alloca %struct.padata_priv*, align 8
  %3 = alloca %struct.pcrypt_request*, align 8
  %4 = alloca %struct.aead_request*, align 8
  store %struct.padata_priv* %0, %struct.padata_priv** %2, align 8
  %5 = load %struct.padata_priv*, %struct.padata_priv** %2, align 8
  %6 = call %struct.pcrypt_request* @pcrypt_padata_request(%struct.padata_priv* %5)
  store %struct.pcrypt_request* %6, %struct.pcrypt_request** %3, align 8
  %7 = load %struct.pcrypt_request*, %struct.pcrypt_request** %3, align 8
  %8 = call %struct.aead_request* @pcrypt_request_ctx(%struct.pcrypt_request* %7)
  store %struct.aead_request* %8, %struct.aead_request** %4, align 8
  %9 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %10 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.padata_priv*, %struct.padata_priv** %2, align 8
  %14 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @aead_request_complete(i32 %12, i32 %15)
  ret void
}

declare dso_local %struct.pcrypt_request* @pcrypt_padata_request(%struct.padata_priv*) #1

declare dso_local %struct.aead_request* @pcrypt_request_ctx(%struct.pcrypt_request*) #1

declare dso_local i32 @aead_request_complete(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
