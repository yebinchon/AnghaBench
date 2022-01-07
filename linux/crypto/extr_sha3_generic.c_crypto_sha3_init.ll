; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_sha3_generic.c_crypto_sha3_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_sha3_generic.c_crypto_sha3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha3_state = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sha3_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.sha3_state*, align 8
  %4 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %5 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %6 = call %struct.sha3_state* @shash_desc_ctx(%struct.shash_desc* %5)
  store %struct.sha3_state* %6, %struct.sha3_state** %3, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %8 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @crypto_shash_digestsize(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul i32 2, %11
  %13 = sub i32 200, %12
  %14 = load %struct.sha3_state*, %struct.sha3_state** %3, align 8
  %15 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.sha3_state*, %struct.sha3_state** %3, align 8
  %17 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 8
  %20 = load %struct.sha3_state*, %struct.sha3_state** %3, align 8
  %21 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sha3_state*, %struct.sha3_state** %3, align 8
  %23 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.sha3_state*, %struct.sha3_state** %3, align 8
  %25 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @memset(i32 %26, i32 0, i32 4)
  ret i32 0
}

declare dso_local %struct.sha3_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_digestsize(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
