; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_add_hwgenerator_randomness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_add_hwgenerator_randomness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i32 }

@input_pool = common dso_local global %struct.entropy_store zeroinitializer, align 4
@crng_init = common dso_local global i64 0, align 8
@random_write_wait = common dso_local global i32 0, align 4
@random_write_wakeup_bits = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_hwgenerator_randomness(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.entropy_store*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.entropy_store* @input_pool, %struct.entropy_store** %7, align 8
  %8 = load i64, i64* @crng_init, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @crng_fast_load(i8* %14, i64 %15)
  br label %36

17:                                               ; preds = %3
  %18 = load i32, i32* @random_write_wait, align 4
  %19 = call i64 (...) @kthread_should_stop()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call i64 @ENTROPY_BITS(%struct.entropy_store* @input_pool)
  %23 = load i64, i64* @random_write_wakeup_bits, align 8
  %24 = icmp sle i64 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ true, %17 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @wait_event_freezable(i32 %18, i32 %27)
  %29 = load %struct.entropy_store*, %struct.entropy_store** %7, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @mix_pool_bytes(%struct.entropy_store* %29, i8* %30, i64 %31)
  %33 = load %struct.entropy_store*, %struct.entropy_store** %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @credit_entropy_bits(%struct.entropy_store* %33, i64 %34)
  br label %36

36:                                               ; preds = %25, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crng_fast_load(i8*, i64) #1

declare dso_local i32 @wait_event_freezable(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @ENTROPY_BITS(%struct.entropy_store*) #1

declare dso_local i32 @mix_pool_bytes(%struct.entropy_store*, i8*, i64) #1

declare dso_local i32 @credit_entropy_bits(%struct.entropy_store*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
