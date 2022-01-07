; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha2-ce-glue.c_sha256_ce_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha2-ce-glue.c_sha256_ce_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha256_ce_state = type { i64 }

@sha256_block_data_order = common dso_local global i64 0, align 8
@sha2_ce_transform = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @sha256_ce_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha256_ce_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sha256_ce_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %8 = call %struct.sha256_ce_state* @shash_desc_ctx(%struct.shash_desc* %7)
  store %struct.sha256_ce_state* %8, %struct.sha256_ce_state** %6, align 8
  %9 = call i32 (...) @crypto_simd_usable()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %13 = load i64, i64* @sha256_block_data_order, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = call i32 @sha256_base_do_finalize(%struct.shash_desc* %12, i32* %14)
  %16 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @sha256_base_finish(%struct.shash_desc* %16, i32* %17)
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.sha256_ce_state*, %struct.sha256_ce_state** %6, align 8
  %21 = getelementptr inbounds %struct.sha256_ce_state, %struct.sha256_ce_state* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = call i32 (...) @kernel_neon_begin()
  %23 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %24 = load i64, i64* @sha2_ce_transform, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @sha256_base_do_finalize(%struct.shash_desc* %23, i32* %25)
  %27 = call i32 (...) @kernel_neon_end()
  %28 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @sha256_base_finish(%struct.shash_desc* %28, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %19, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.sha256_ce_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @sha256_base_do_finalize(%struct.shash_desc*, i32*) #1

declare dso_local i32 @sha256_base_finish(%struct.shash_desc*, i32*) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @kernel_neon_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
