; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_next_power_of_two.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_next_power_of_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @next_power_of_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_power_of_two(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub i32 %3, 1
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = lshr i32 %5, 1
  %7 = load i32, i32* %2, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = lshr i32 %9, 2
  %11 = load i32, i32* %2, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = lshr i32 %13, 4
  %15 = load i32, i32* %2, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = lshr i32 %17, 8
  %19 = load i32, i32* %2, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = lshr i32 %21, 16
  %23 = load i32, i32* %2, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
