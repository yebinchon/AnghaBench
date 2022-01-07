; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha512.c_octeon_sha512_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha512.c_octeon_sha512_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha512_state = type { i32* }
%struct.octeon_cop2_state = type { i32 }

@SHA512_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @octeon_sha512_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_sha512_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sha512_state*, align 8
  %9 = alloca %struct.octeon_cop2_state, align 4
  %10 = alloca i64, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %12 = call %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.sha512_state* %12, %struct.sha512_state** %8, align 8
  %13 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %14 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %19 = urem i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %19, %20
  %22 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @crypto_sha512_update(%struct.shash_desc* %25, i32* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %3
  %30 = call i64 @octeon_crypto_enable(%struct.octeon_cop2_state* %9)
  store i64 %30, i64* %10, align 8
  %31 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %32 = call i32 @octeon_sha512_store_hash(%struct.sha512_state* %31)
  %33 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @__octeon_sha512_update(%struct.sha512_state* %33, i32* %34, i32 %35)
  %37 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %38 = call i32 @octeon_sha512_read_hash(%struct.sha512_state* %37)
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @octeon_crypto_disable(%struct.octeon_cop2_state* %9, i64 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %29, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_sha512_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i64 @octeon_crypto_enable(%struct.octeon_cop2_state*) #1

declare dso_local i32 @octeon_sha512_store_hash(%struct.sha512_state*) #1

declare dso_local i32 @__octeon_sha512_update(%struct.sha512_state*, i32*, i32) #1

declare dso_local i32 @octeon_sha512_read_hash(%struct.sha512_state*) #1

declare dso_local i32 @octeon_crypto_disable(%struct.octeon_cop2_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
