; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_cabriolet.c_cabriolet_device_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_cabriolet.c_cabriolet_device_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cabriolet_device_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cabriolet_device_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i32 @inb(i32 2052)
  %6 = call i32 @inb(i32 2053)
  %7 = shl i32 %6, 8
  %8 = or i32 %5, %7
  %9 = call i32 @inb(i32 2054)
  %10 = shl i32 %9, 16
  %11 = or i32 %8, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %33, %1
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i64, i64* %3, align 8
  %18 = xor i64 %17, -1
  %19 = call i32 @ffz(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* %3, align 8
  %21 = sub i64 %20, 1
  %22 = load i64, i64* %3, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i64, i64* %2, align 8
  %28 = call i32 @isa_device_interrupt(i64 %27)
  br label %33

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = add i32 16, %30
  %32 = call i32 @handle_irq(i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  br label %13

34:                                               ; preds = %13
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ffz(i64) #1

declare dso_local i32 @isa_device_interrupt(i64) #1

declare dso_local i32 @handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
