; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/hp300/extr_time.c_hp300_read_clk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/hp300/extr_time.c_hp300_read_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@CLOCKBASE = common dso_local global i64 0, align 8
@CLKMSB1 = common dso_local global i64 0, align 8
@CLKSR = common dso_local global i64 0, align 8
@CLKSR_INT1 = common dso_local global i8 0, align 1
@INTVAL = common dso_local global i64 0, align 8
@clk_offset = common dso_local global i64 0, align 8
@CLKLSB1 = common dso_local global i64 0, align 8
@clk_total = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clocksource*)* @hp300_read_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hp300_read_clk(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load i64, i64* @CLOCKBASE, align 8
  %11 = load i64, i64* @CLKMSB1, align 8
  %12 = add nsw i64 %10, %11
  %13 = call zeroext i8 @in_8(i64 %12)
  store i8 %13, i8* %5, align 1
  br label %14

14:                                               ; preds = %44, %1
  %15 = load i64, i64* @CLOCKBASE, align 8
  %16 = load i64, i64* @CLKSR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call zeroext i8 @in_8(i64 %17)
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @CLKSR_INT1, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @INTVAL, align 8
  store i64 %29, i64* @clk_offset, align 8
  br label %30

30:                                               ; preds = %28, %24, %14
  %31 = load i64, i64* @CLOCKBASE, align 8
  %32 = load i64, i64* @CLKLSB1, align 8
  %33 = add nsw i64 %31, %32
  %34 = call zeroext i8 @in_8(i64 %33)
  store i8 %34, i8* %4, align 1
  %35 = load i64, i64* @CLOCKBASE, align 8
  %36 = load i64, i64* @CLKMSB1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call zeroext i8 @in_8(i64 %37)
  store i8 %38, i8* %6, align 1
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i8, i8* %6, align 1
  store i8 %45, i8* %5, align 1
  br label %14

46:                                               ; preds = %30
  %47 = load i64, i64* @INTVAL, align 8
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 8
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %47, %54
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* @clk_offset, align 8
  %57 = load i64, i64* @clk_total, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  %63 = load i64, i64* %7, align 8
  ret i64 %63
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local zeroext i8 @in_8(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
