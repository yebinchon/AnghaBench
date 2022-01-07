; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha2-ce-glue.c_sha256_ce_finup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha2-ce-glue.c_sha256_ce_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha256_ce_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SHA256_BLOCK_SIZE = common dso_local global i32 0, align 4
@sha256_block_data_order = common dso_local global i64 0, align 8
@sha2_ce_transform = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32, i32*)* @sha256_ce_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha256_ce_finup(%struct.shash_desc* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shash_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sha256_ce_state*, align 8
  %11 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %13 = call %struct.sha256_ce_state* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.sha256_ce_state* %13, %struct.sha256_ce_state** %10, align 8
  %14 = load %struct.sha256_ce_state*, %struct.sha256_ce_state** %10, align 8
  %15 = getelementptr inbounds %struct.sha256_ce_state, %struct.sha256_ce_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %22 = urem i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %19, %4
  %28 = phi i1 [ false, %19 ], [ false, %4 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = call i32 (...) @crypto_simd_usable()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* @sha256_block_data_order, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @sha256_base_do_update(%struct.shash_desc* %36, i32* %37, i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %35, %32
  %43 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %44 = load i64, i64* @sha256_block_data_order, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @sha256_base_do_finalize(%struct.shash_desc* %43, i32* %45)
  %47 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @sha256_base_finish(%struct.shash_desc* %47, i32* %48)
  store i32 %49, i32* %5, align 4
  br label %73

50:                                               ; preds = %27
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.sha256_ce_state*, %struct.sha256_ce_state** %10, align 8
  %53 = getelementptr inbounds %struct.sha256_ce_state, %struct.sha256_ce_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = call i32 (...) @kernel_neon_begin()
  %55 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i64, i64* @sha2_ce_transform, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @sha256_base_do_update(%struct.shash_desc* %55, i32* %56, i32 %57, i32* %59)
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %50
  %64 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %65 = load i64, i64* @sha2_ce_transform, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = call i32 @sha256_base_do_finalize(%struct.shash_desc* %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %50
  %69 = call i32 (...) @kernel_neon_end()
  %70 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @sha256_base_finish(%struct.shash_desc* %70, i32* %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %42
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.sha256_ce_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @sha256_base_do_update(%struct.shash_desc*, i32*, i32, i32*) #1

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
