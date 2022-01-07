; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_process_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_process_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis_state = type { i32 }
%struct.aead_request = type { i32 }
%struct.aegis128_ops = type { i32 (%struct.aegis_state*, i32, i32, i32)*, i32 (%struct.skcipher_walk*, %struct.aead_request.0*, i32)* }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.aead_request.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aegis_state*, %struct.aead_request*, %struct.aegis128_ops*)* @crypto_aegis128_process_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_process_crypt(%struct.aegis_state* %0, %struct.aead_request* %1, %struct.aegis128_ops* %2) #0 {
  %4 = alloca %struct.aegis_state*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.aegis128_ops*, align 8
  %7 = alloca %struct.skcipher_walk, align 4
  %8 = alloca i32, align 4
  store %struct.aegis_state* %0, %struct.aegis_state** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  store %struct.aegis128_ops* %2, %struct.aegis128_ops** %6, align 8
  %9 = load %struct.aegis128_ops*, %struct.aegis128_ops** %6, align 8
  %10 = getelementptr inbounds %struct.aegis128_ops, %struct.aegis128_ops* %9, i32 0, i32 1
  %11 = load i32 (%struct.skcipher_walk*, %struct.aead_request.0*, i32)*, i32 (%struct.skcipher_walk*, %struct.aead_request.0*, i32)** %10, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %13 = bitcast %struct.aead_request* %12 to %struct.aead_request.0*
  %14 = call i32 %11(%struct.skcipher_walk* %7, %struct.aead_request.0* %13, i32 0)
  br label %15

15:                                               ; preds = %31, %3
  %16 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @round_down(i32 %27, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.aegis128_ops*, %struct.aegis128_ops** %6, align 8
  %33 = getelementptr inbounds %struct.aegis128_ops, %struct.aegis128_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.aegis_state*, i32, i32, i32)*, i32 (%struct.aegis_state*, i32, i32, i32)** %33, align 8
  %35 = load %struct.aegis_state*, %struct.aegis_state** %4, align 8
  %36 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 %34(%struct.aegis_state* %35, i32 %39, i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %47, %48
  %50 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %7, i32 %49)
  br label %15

51:                                               ; preds = %15
  ret void
}

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
