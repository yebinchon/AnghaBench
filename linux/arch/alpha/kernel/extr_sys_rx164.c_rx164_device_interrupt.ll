; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_rx164.c_rx164_device_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_rx164.c_rx164_device_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLARIS_DENSE_CONFIG_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rx164_device_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx164_device_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @POLARIS_DENSE_CONFIG_BASE, align 8
  %7 = add nsw i64 %6, 132
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load volatile i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i64, i64* %3, align 8
  %18 = xor i64 %17, -1
  %19 = call i64 @ffz(i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub i64 %20, 1
  %22 = load i64, i64* %3, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 20
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i64, i64* %2, align 8
  %28 = call i32 @isa_no_iack_sc_device_interrupt(i64 %27)
  br label %34

29:                                               ; preds = %16
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 16, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @handle_irq(i32 %32)
  br label %34

34:                                               ; preds = %29, %26
  br label %13

35:                                               ; preds = %13
  ret void
}

declare dso_local i64 @ffz(i64) #1

declare dso_local i32 @isa_no_iack_sc_device_interrupt(i64) #1

declare dso_local i32 @handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
