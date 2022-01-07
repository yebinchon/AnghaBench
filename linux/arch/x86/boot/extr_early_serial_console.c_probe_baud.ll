; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_early_serial_console.c_probe_baud.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_early_serial_console.c_probe_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCR = common dso_local global i64 0, align 8
@DLAB = common dso_local global i8 0, align 1
@DLL = common dso_local global i64 0, align 8
@DLH = common dso_local global i64 0, align 8
@BASE_BAUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @probe_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_baud(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @LCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call zeroext i8 @inb(i64 %10)
  store i8 %11, i8* %3, align 1
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @DLAB, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @LCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i8 zeroext %17, i64 %21)
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @DLL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i8 @inb(i64 %26)
  store i8 %27, i8* %4, align 1
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @DLH, align 8
  %31 = add nsw i64 %29, %30
  %32 = call zeroext i8 @inb(i64 %31)
  store i8 %32, i8* %5, align 1
  %33 = load i8, i8* %3, align 1
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @LCR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i8 zeroext %33, i64 %37)
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 8
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @BASE_BAUD, align 4
  %46 = load i32, i32* %6, align 4
  %47 = udiv i32 %45, %46
  ret i32 %47
}

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
