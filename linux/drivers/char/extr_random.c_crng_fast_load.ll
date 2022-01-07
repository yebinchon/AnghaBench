; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_crng_fast_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_crng_fast_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@primary_crng = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@crng_init = common dso_local global i32 0, align 4
@crng_init_cnt = common dso_local global i64 0, align 8
@CRNG_INIT_CNT_THRESH = common dso_local global i64 0, align 8
@CHACHA_KEY_SIZE = common dso_local global i64 0, align 8
@crng_init_wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"random: fast init done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @crng_fast_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crng_fast_load(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @spin_trylock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @primary_crng, i32 0, i32 0), i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

12:                                               ; preds = %2
  %13 = load i32, i32* @crng_init, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @primary_crng, i32 0, i32 0), i64 %16)
  store i32 0, i32* %3, align 4
  br label %61

18:                                               ; preds = %12
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @primary_crng, i32 0, i32 1), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = bitcast i32* %20 to i8*
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %31, %18
  %23 = load i64, i64* %5, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* @crng_init_cnt, align 8
  %27 = load i64, i64* @CRNG_INIT_CNT_THRESH, align 8
  %28 = icmp ult i64 %26, %27
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %50

31:                                               ; preds = %29
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* @crng_init_cnt, align 8
  %37 = load i64, i64* @CHACHA_KEY_SIZE, align 8
  %38 = urem i64 %36, %37
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = xor i32 %41, %34
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  %46 = load i64, i64* @crng_init_cnt, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* @crng_init_cnt, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %5, align 8
  br label %22

50:                                               ; preds = %29
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @primary_crng, i32 0, i32 0), i64 %51)
  %53 = load i64, i64* @crng_init_cnt, align 8
  %54 = load i64, i64* @CRNG_INIT_CNT_THRESH, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = call i32 (...) @invalidate_batched_entropy()
  store i32 1, i32* @crng_init, align 4
  %58 = call i32 @wake_up_interruptible(i32* @crng_init_wait)
  %59 = call i32 @pr_notice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %50
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %15, %11
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @invalidate_batched_entropy(...) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @pr_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
