; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha256-glue.c_sha256_finup_neon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha256-glue.c_sha256_finup_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }

@sha256_block_data_order = common dso_local global i64 0, align 8
@sha256_block_neon = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32, i32*)* @sha256_finup_neon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha256_finup_neon(%struct.shash_desc* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = call i32 (...) @crypto_simd_usable()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* @sha256_block_data_order, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @sha256_base_do_update(%struct.shash_desc* %15, i32* %16, i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %14, %11
  %22 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %23 = load i64, i64* @sha256_block_data_order, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @sha256_base_do_finalize(%struct.shash_desc* %22, i32* %24)
  br label %41

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @sha256_update_neon(%struct.shash_desc* %30, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = call i32 (...) @kernel_neon_begin()
  %36 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %37 = load i64, i64* @sha256_block_neon, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @sha256_base_do_finalize(%struct.shash_desc* %36, i32* %38)
  %40 = call i32 (...) @kernel_neon_end()
  br label %41

41:                                               ; preds = %34, %21
  %42 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @sha256_base_finish(%struct.shash_desc* %42, i32* %43)
  ret i32 %44
}

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @sha256_base_do_update(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i32 @sha256_base_do_finalize(%struct.shash_desc*, i32*) #1

declare dso_local i32 @sha256_update_neon(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @sha256_base_finish(%struct.shash_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
