; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha512-ce-glue.c_sha512_ce_finup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha512-ce-glue.c_sha512_ce_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }

@sha512_block_data_order = common dso_local global i64 0, align 8
@sha512_ce_transform = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32, i32*)* @sha512_ce_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha512_ce_finup(%struct.shash_desc* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shash_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = call i32 (...) @crypto_simd_usable()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* @sha512_block_data_order, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @sha512_base_do_update(%struct.shash_desc* %16, i32* %17, i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %15, %12
  %23 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %24 = load i64, i64* @sha512_block_data_order, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @sha512_base_do_finalize(%struct.shash_desc* %23, i32* %25)
  %27 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @sha512_base_finish(%struct.shash_desc* %27, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %4
  %31 = call i32 (...) @kernel_neon_begin()
  %32 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* @sha512_ce_transform, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @sha512_base_do_update(%struct.shash_desc* %32, i32* %33, i32 %34, i32* %36)
  %38 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %39 = load i64, i64* @sha512_ce_transform, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @sha512_base_do_finalize(%struct.shash_desc* %38, i32* %40)
  %42 = call i32 (...) @kernel_neon_end()
  %43 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @sha512_base_finish(%struct.shash_desc* %43, i32* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %30, %22
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @sha512_base_do_update(%struct.shash_desc*, i32*, i32, i32*) #1

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
