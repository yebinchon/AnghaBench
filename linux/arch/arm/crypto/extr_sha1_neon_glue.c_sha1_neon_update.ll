; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_sha1_neon_glue.c_sha1_neon_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_sha1_neon_glue.c_sha1_neon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_state = type { i32 }

@SHA1_BLOCK_SIZE = common dso_local global i32 0, align 4
@sha1_transform_neon = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @sha1_neon_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_neon_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sha1_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %10 = call %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.sha1_state* %10, %struct.sha1_state** %8, align 8
  %11 = call i32 (...) @crypto_simd_usable()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %15 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  %18 = urem i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %18, %19
  %21 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %13, %3
  %24 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @sha1_update_arm(%struct.shash_desc* %24, i32* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %13
  %29 = call i32 (...) @kernel_neon_begin()
  %30 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i64, i64* @sha1_transform_neon, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = call i32 @sha1_base_do_update(%struct.shash_desc* %30, i32* %31, i32 %32, i32* %34)
  %36 = call i32 (...) @kernel_neon_end()
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @sha1_update_arm(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @sha1_base_do_update(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i32 @kernel_neon_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
