; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-lpc.c___opal_lpc_outw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-lpc.c___opal_lpc_outw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opal_lpc_chip_id = common dso_local global i64 0, align 8
@OPAL_LPC_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @__opal_lpc_outw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__opal_lpc_outw(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @opal_lpc_chip_id, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = icmp ugt i64 %8, 65534
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %30

11:                                               ; preds = %7
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 1
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @opal_lpc_outb(i32 %17, i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  %23 = call i32 @opal_lpc_outb(i32 %20, i64 %22)
  br label %30

24:                                               ; preds = %11
  %25 = load i64, i64* @opal_lpc_chip_id, align 8
  %26 = load i32, i32* @OPAL_LPC_IO, align 4
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @opal_lpc_write(i64 %25, i32 %26, i64 %27, i32 %28, i32 2)
  br label %30

30:                                               ; preds = %24, %15, %10
  ret void
}

declare dso_local i32 @opal_lpc_outb(i32, i64) #1

declare dso_local i32 @opal_lpc_write(i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
