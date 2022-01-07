; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha512-ce-glue.c_sha512_ce_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha512-ce-glue.c_sha512_ce_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }

@sha512_block_data_order = common dso_local global i64 0, align 8
@sha512_ce_transform = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @sha512_ce_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha512_ce_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = call i32 (...) @crypto_simd_usable()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %10 = load i64, i64* @sha512_block_data_order, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = call i32 @sha512_base_do_finalize(%struct.shash_desc* %9, i32* %11)
  %13 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @sha512_base_finish(%struct.shash_desc* %13, i32* %14)
  store i32 %15, i32* %3, align 4
  br label %26

16:                                               ; preds = %2
  %17 = call i32 (...) @kernel_neon_begin()
  %18 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %19 = load i64, i64* @sha512_ce_transform, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @sha512_base_do_finalize(%struct.shash_desc* %18, i32* %20)
  %22 = call i32 (...) @kernel_neon_end()
  %23 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @sha512_base_finish(%struct.shash_desc* %23, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %16, %8
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @sha512_base_do_finalize(%struct.shash_desc*, i32*) #1

declare dso_local i32 @sha512_base_finish(%struct.shash_desc*, i32*) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @kernel_neon_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
