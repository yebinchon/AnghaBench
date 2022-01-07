; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_t_truerand.c_roulette.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_t_truerand.c_roulette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@done = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@ocount = common dso_local global i32 0, align 4
@buffer = common dso_local global i32 0, align 4
@env = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @roulette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roulette() #0 {
  store i64 0, i64* @done, align 8
  %1 = load i32, i32* @SIGALRM, align 4
  %2 = load i32, i32* @interrupt, align 4
  %3 = call i32 @signal(i32 %1, i32 %2)
  store i32 0, i32* @count, align 4
  %4 = call i32 (...) @tick()
  br label %5

5:                                                ; preds = %8, %0
  %6 = load i64, i64* @done, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @count, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @count, align 4
  br label %5

11:                                               ; preds = %5
  %12 = load i32, i32* @count, align 4
  %13 = ashr i32 %12, 3
  %14 = load i32, i32* @count, align 4
  %15 = ashr i32 %14, 6
  %16 = xor i32 %13, %15
  %17 = load i32, i32* @ocount, align 4
  %18 = xor i32 %16, %17
  %19 = load i32, i32* @count, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* @count, align 4
  %21 = load i32, i32* @count, align 4
  %22 = and i32 %21, 7
  store i32 %22, i32* @count, align 4
  %23 = load i32, i32* @count, align 4
  store i32 %23, i32* @ocount, align 4
  %24 = load i32, i32* @buffer, align 4
  %25 = shl i32 %24, 3
  %26 = load i32, i32* @count, align 4
  %27 = xor i32 %25, %26
  store i32 %27, i32* @buffer, align 4
  %28 = load i32, i32* @buffer, align 4
  %29 = sext i32 %28 to i64
  ret i64 %29
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @tick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
