; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_arch_random.c_arch_rng_refill_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_arch_random.c_arch_rng_refill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@ARCH_REFILL_TICKS = common dso_local global i32 0, align 4
@arch_rng_lock = common dso_local global i32 0, align 4
@arch_rng_buf_idx = common dso_local global i32 0, align 4
@ARCH_RNG_BUF_SIZE = common dso_local global i32 0, align 4
@ARCH_PRNG_SEED_SIZE = common dso_local global i32 0, align 4
@CPACF_PRNO_SHA512_DRNG_SEED = common dso_local global i32 0, align 4
@CPACF_PRNO_SHA512_DRNG_GEN = common dso_local global i32 0, align 4
@arch_rng_buf = common dso_local global i32* null, align 8
@system_long_wq = common dso_local global i32 0, align 4
@arch_rng_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @arch_rng_refill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arch_rng_refill_buffer(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [240 x i32], align 16
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load i32, i32* @ARCH_REFILL_TICKS, align 4
  store i32 %7, i32* %3, align 4
  %8 = call i32 @spin_lock(i32* @arch_rng_lock)
  %9 = load i32, i32* @arch_rng_buf_idx, align 4
  %10 = load i32, i32* @ARCH_RNG_BUF_SIZE, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load i32, i32* @ARCH_PRNG_SEED_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = mul nuw i64 4, %14
  %18 = trunc i64 %17 to i32
  %19 = call i32 @cpacf_trng(i32* null, i32 0, i32* %16, i32 %18)
  %20 = getelementptr inbounds [240 x i32], [240 x i32]* %6, i64 0, i64 0
  %21 = call i32 @memset(i32* %20, i32 0, i32 960)
  %22 = load i32, i32* @CPACF_PRNO_SHA512_DRNG_SEED, align 4
  %23 = bitcast [240 x i32]* %6 to i32**
  %24 = mul nuw i64 4, %14
  %25 = trunc i64 %24 to i32
  %26 = call i32 @cpacf_prno(i32 %22, i32** %23, i32* null, i32 0, i32* %16, i32 %25)
  %27 = load i32, i32* @CPACF_PRNO_SHA512_DRNG_GEN, align 4
  %28 = bitcast [240 x i32]* %6 to i32**
  %29 = load i32*, i32** @arch_rng_buf, align 8
  %30 = load i32, i32* @ARCH_RNG_BUF_SIZE, align 4
  %31 = call i32 @cpacf_prno(i32 %27, i32** %28, i32* %29, i32 %30, i32* null, i32 0)
  %32 = load i32, i32* @ARCH_RNG_BUF_SIZE, align 4
  store i32 %32, i32* @arch_rng_buf_idx, align 4
  %33 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %33)
  br label %34

34:                                               ; preds = %12, %1
  %35 = load i32, i32* @ARCH_REFILL_TICKS, align 4
  %36 = load i32, i32* @arch_rng_buf_idx, align 4
  %37 = mul i32 %35, %36
  %38 = load i32, i32* @ARCH_RNG_BUF_SIZE, align 4
  %39 = udiv i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = call i32 @spin_unlock(i32* @arch_rng_lock)
  %43 = load i32, i32* @system_long_wq, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @queue_delayed_work(i32 %43, i32* @arch_rng_work, i32 %44)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cpacf_trng(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpacf_prno(i32, i32**, i32*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
