; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_spinlock_test.c_ss_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_spinlock_test.c_ss_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ss_spin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @ss_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ss_get(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @ss_spin, align 4
  %10 = call i32 @DEFINE_RAW_SPINLOCK(i32 %9)
  store i32 1000000, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = call i32 (...) @ktime_get()
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %22, %2
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = call i32 @raw_spin_lock(i32* @ss_spin)
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = call i32 @raw_spin_unlock(i32* @ss_spin)
  br label %12

24:                                               ; preds = %12
  %25 = call i32 (...) @ktime_get()
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ktime_us_delta(i32 %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  ret i32 0
}

declare dso_local i32 @DEFINE_RAW_SPINLOCK(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @ktime_us_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
