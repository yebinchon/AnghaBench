; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_sha1-ce-glue.c_sha1_ce_finup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_sha1-ce-glue.c_sha1_ce_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }

@sha1_ce_transform = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32, i32*)* @sha1_ce_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_ce_finup(%struct.shash_desc* %0, i32* %1, i32 %2, i32* %3) #0 {
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
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @sha1_finup_arm(%struct.shash_desc* %13, i32* %14, i32 %15, i32* %16)
  store i32 %17, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = call i32 (...) @kernel_neon_begin()
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @sha1_ce_transform, align 4
  %27 = call i32 @sha1_base_do_update(%struct.shash_desc* %23, i32* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %30 = load i32, i32* @sha1_ce_transform, align 4
  %31 = call i32 @sha1_base_do_finalize(%struct.shash_desc* %29, i32 %30)
  %32 = call i32 (...) @kernel_neon_end()
  %33 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @sha1_base_finish(%struct.shash_desc* %33, i32* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %28, %12
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @sha1_finup_arm(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @sha1_base_do_update(%struct.shash_desc*, i32*, i32, i32) #1

declare dso_local i32 @sha1_base_do_finalize(%struct.shash_desc*, i32) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @sha1_base_finish(%struct.shash_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
