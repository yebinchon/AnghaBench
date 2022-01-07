; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-migor/extr_lcd_qvga.c_adjust_reg18.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-migor/extr_lcd_qvga.c_adjust_reg18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16)* @adjust_reg18 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adjust_reg18(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i16 %0, i16* %2, align 2
  %5 = load i16, i16* %2, align 2
  %6 = zext i16 %5 to i32
  %7 = shl i32 %6, 1
  %8 = or i32 %7, 1
  %9 = and i32 %8, 511
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load i16, i16* %2, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, 2
  %14 = or i32 %13, 512
  %15 = and i32 %14, 261632
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = or i64 %17, %18
  ret i64 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
