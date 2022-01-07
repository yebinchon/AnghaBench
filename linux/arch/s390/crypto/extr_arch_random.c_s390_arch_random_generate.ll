; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_arch_random.c_s390_arch_random_generate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_arch_random.c_s390_arch_random_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arch_rng_lock = common dso_local global i32 0, align 4
@arch_rng_buf_idx = common dso_local global i64 0, align 8
@ARCH_RNG_BUF_SIZE = common dso_local global i64 0, align 8
@arch_rng_buf = common dso_local global i64 0, align 8
@s390_arch_random_counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_arch_random_generate(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @spin_trylock(i32* @arch_rng_lock)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* @arch_rng_buf_idx, align 8
  %13 = sub nsw i64 %12, %11
  store i64 %13, i64* @arch_rng_buf_idx, align 8
  %14 = load i64, i64* @arch_rng_buf_idx, align 8
  %15 = load i64, i64* @ARCH_RNG_BUF_SIZE, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* @arch_rng_buf, align 8
  %20 = load i64, i64* @arch_rng_buf_idx, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @memcpy(i32* %18, i64 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @atomic64_add(i32 %24, i32* @s390_arch_random_counter)
  %26 = call i32 @spin_unlock(i32* @arch_rng_lock)
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %9
  %28 = call i32 @spin_unlock(i32* @arch_rng_lock)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %17, %8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
