; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha1-ce-glue.c_sha1_ce_finup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_sha1-ce-glue.c_sha1_ce_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_ce_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SHA1_BLOCK_SIZE = common dso_local global i32 0, align 4
@sha1_ce_transform = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32, i32*)* @sha1_ce_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_ce_finup(%struct.shash_desc* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shash_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sha1_ce_state*, align 8
  %11 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %13 = call %struct.sha1_ce_state* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.sha1_ce_state* %13, %struct.sha1_ce_state** %10, align 8
  %14 = load %struct.sha1_ce_state*, %struct.sha1_ce_state** %10, align 8
  %15 = getelementptr inbounds %struct.sha1_ce_state, %struct.sha1_ce_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
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
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @crypto_sha1_finup(%struct.shash_desc* %33, i32* %34, i32 %35, i32* %36)
  store i32 %37, i32* %5, align 4
  br label %61

38:                                               ; preds = %27
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.sha1_ce_state*, %struct.sha1_ce_state** %10, align 8
  %41 = getelementptr inbounds %struct.sha1_ce_state, %struct.sha1_ce_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = call i32 (...) @kernel_neon_begin()
  %43 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* @sha1_ce_transform, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @sha1_base_do_update(%struct.shash_desc* %43, i32* %44, i32 %45, i32* %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %38
  %52 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %53 = load i64, i64* @sha1_ce_transform, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @sha1_base_do_finalize(%struct.shash_desc* %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %38
  %57 = call i32 (...) @kernel_neon_end()
  %58 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @sha1_base_finish(%struct.shash_desc* %58, i32* %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %32
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.sha1_ce_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @crypto_sha1_finup(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @sha1_base_do_update(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i32 @sha1_base_do_finalize(%struct.shash_desc*, i32*) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @sha1_base_finish(%struct.shash_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
