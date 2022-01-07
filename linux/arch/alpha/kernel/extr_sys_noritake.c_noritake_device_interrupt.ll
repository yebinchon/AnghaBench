; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_noritake.c_noritake_device_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_noritake.c_noritake_device_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @noritake_device_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @noritake_device_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i64 @inw(i32 1356)
  %6 = shl i64 %5, 32
  %7 = call i64 @inw(i32 1354)
  %8 = shl i64 %7, 16
  %9 = or i64 %6, %8
  %10 = call i64 @inb(i32 160)
  %11 = shl i64 %10, 8
  %12 = or i64 %9, %11
  %13 = call i64 @inb(i32 32)
  %14 = or i64 %12, %13
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %34, %1
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = xor i64 %19, -1
  %21 = call i32 @ffz(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i64, i64* %3, align 8
  %23 = sub i64 %22, 1
  %24 = load i64, i64* %3, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %26, 16
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @isa_device_interrupt(i64 %29)
  br label %34

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @handle_irq(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %15

35:                                               ; preds = %15
  ret void
}

declare dso_local i64 @inw(i32) #1

declare dso_local i64 @inb(i32) #1

declare dso_local i32 @ffz(i64) #1

declare dso_local i32 @isa_device_interrupt(i64) #1

declare dso_local i32 @handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
