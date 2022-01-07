; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/txx9/rbtx4927/extr_irq.c_toshiba_rbtx4927_irq_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/txx9/rbtx4927/extr_irq.c_toshiba_rbtx4927_irq_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rbtx4927_imstat_addr = common dso_local global i32 0, align 4
@RBTX4927_IRQ_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @toshiba_rbtx4927_irq_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_rbtx4927_irq_nested(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @rbtx4927_imstat_addr, align 4
  %6 = call i32 @readb(i32 %5)
  %7 = and i32 %6, 31
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @RBTX4927_IRQ_IOC, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @__fls8(i32 %17)
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %14
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @readb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__fls8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
