; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_early_printk.c_early_serial_putc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_early_printk.c_early_serial_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@early_serial_base = common dso_local global i32 0, align 4
@LSR = common dso_local global i32 0, align 4
@XMTRDY = common dso_local global i32 0, align 4
@TXR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @early_serial_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @early_serial_putc(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 65535, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* @early_serial_base, align 4
  %6 = load i32, i32* @LSR, align 4
  %7 = call i32 @serial_in(i32 %5, i32 %6)
  %8 = load i32, i32* @XMTRDY, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i1 [ false, %4 ], [ %14, %11 ]
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call i32 (...) @cpu_relax()
  br label %4

19:                                               ; preds = %15
  %20 = load i32, i32* @early_serial_base, align 4
  %21 = load i32, i32* @TXR, align 4
  %22 = load i8, i8* %2, align 1
  %23 = call i32 @serial_out(i32 %20, i32 %21, i8 zeroext %22)
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 -1
  ret i32 %27
}

declare dso_local i32 @serial_in(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @serial_out(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
