; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_sha1_ssse3_glue.c_sha1_finup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_sha1_ssse3_glue.c_sha1_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32, i32*, i32*)* @sha1_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_finup(%struct.shash_desc* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.shash_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = call i32 (...) @crypto_simd_usable()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @crypto_sha1_finup(%struct.shash_desc* %15, i32* %16, i32 %17, i32* %18)
  store i32 %19, i32* %6, align 4
  br label %38

20:                                               ; preds = %5
  %21 = call i32 (...) @kernel_fpu_begin()
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @sha1_base_do_update(%struct.shash_desc* %25, i32* %26, i32 %27, i32* %28)
  br label %30

30:                                               ; preds = %24, %20
  %31 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @sha1_base_do_finalize(%struct.shash_desc* %31, i32* %32)
  %34 = call i32 (...) @kernel_fpu_end()
  %35 = load %struct.shash_desc*, %struct.shash_desc** %7, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @sha1_base_finish(%struct.shash_desc* %35, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %30, %14
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @crypto_sha1_finup(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @sha1_base_do_update(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i32 @sha1_base_do_finalize(%struct.shash_desc*, i32*) #1

declare dso_local i32 @kernel_fpu_end(...) #1

declare dso_local i32 @sha1_base_finish(%struct.shash_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
