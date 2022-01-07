; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_update_a.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_update_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis_state = type { i32* }
%union.aegis_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aegis_state*, %union.aegis_block*)* @crypto_aegis128_update_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_update_a(%struct.aegis_state* %0, %union.aegis_block* %1) #0 {
  %3 = alloca %struct.aegis_state*, align 8
  %4 = alloca %union.aegis_block*, align 8
  store %struct.aegis_state* %0, %struct.aegis_state** %3, align 8
  store %union.aegis_block* %1, %union.aegis_block** %4, align 8
  %5 = call i64 (...) @aegis128_do_simd()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.aegis_state*, %struct.aegis_state** %3, align 8
  %9 = load %union.aegis_block*, %union.aegis_block** %4, align 8
  %10 = call i32 @crypto_aegis128_update_simd(%struct.aegis_state* %8, %union.aegis_block* %9)
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.aegis_state*, %struct.aegis_state** %3, align 8
  %13 = call i32 @crypto_aegis128_update(%struct.aegis_state* %12)
  %14 = load %struct.aegis_state*, %struct.aegis_state** %3, align 8
  %15 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load %union.aegis_block*, %union.aegis_block** %4, align 8
  %19 = call i32 @crypto_aegis_block_xor(i32* %17, %union.aegis_block* %18)
  br label %20

20:                                               ; preds = %11, %7
  ret void
}

declare dso_local i64 @aegis128_do_simd(...) #1

declare dso_local i32 @crypto_aegis128_update_simd(%struct.aegis_state*, %union.aegis_block*) #1

declare dso_local i32 @crypto_aegis128_update(%struct.aegis_state*) #1

declare dso_local i32 @crypto_aegis_block_xor(i32*, %union.aegis_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
