; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_early_serial_console.c_early_serial_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_early_serial_console.c_early_serial_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCR = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8
@FCR = common dso_local global i64 0, align 8
@MCR = common dso_local global i64 0, align 8
@DLAB = common dso_local global i8 0, align 1
@DLL = common dso_local global i64 0, align 8
@DLH = common dso_local global i64 0, align 8
@early_serial_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @early_serial_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_serial_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @LCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outb(i8 zeroext 3, i64 %10)
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @IER, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outb(i8 zeroext 0, i64 %15)
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @FCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i8 zeroext 0, i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @MCR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i8 zeroext 3, i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 115200, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @LCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call zeroext i8 @inb(i64 %32)
  store i8 %33, i8* %5, align 1
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @DLAB, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = trunc i32 %38 to i8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @LCR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i8 zeroext %39, i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 255
  %47 = trunc i32 %46 to i8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @DLL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i8 zeroext %47, i64 %51)
  %53 = load i32, i32* %6, align 4
  %54 = lshr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @DLH, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outb(i8 zeroext %56, i64 %60)
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @DLAB, align 1
  %65 = zext i8 %64 to i32
  %66 = xor i32 %65, -1
  %67 = and i32 %63, %66
  %68 = trunc i32 %67 to i8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @LCR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outb(i8 zeroext %68, i64 %72)
  %74 = load i32, i32* %3, align 4
  store i32 %74, i32* @early_serial_base, align 4
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
