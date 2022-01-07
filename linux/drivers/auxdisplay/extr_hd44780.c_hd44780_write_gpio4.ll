; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_hd44780.c_hd44780_write_gpio4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_hd44780.c_hd44780_write_gpio4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd44780 = type { i64* }

@values = common dso_local global i32* null, align 8
@PIN_CTRL_RW = common dso_local global i64 0, align 8
@PIN_DATA4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hd44780*, i32, i32)* @hd44780_write_gpio4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd44780_write_gpio4(%struct.hd44780* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hd44780*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hd44780* %0, %struct.hd44780** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** @values, align 8
  %9 = call i32 @DECLARE_BITMAP(i32* %8, i32 6)
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 4
  %12 = load i32*, i32** @values, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** @values, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @__assign_bit(i32 4, i32* %14, i32 %15)
  %17 = load %struct.hd44780*, %struct.hd44780** %4, align 8
  %18 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @PIN_CTRL_RW, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 6, i32 5
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.hd44780*, %struct.hd44780** %4, align 8
  %28 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @PIN_DATA4, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i32*, i32** @values, align 8
  %33 = call i32 @gpiod_set_array_value_cansleep(i32 %26, i64* %31, i32* null, i32* %32)
  %34 = load %struct.hd44780*, %struct.hd44780** %4, align 8
  %35 = call i32 @hd44780_strobe_gpio(%struct.hd44780* %34)
  %36 = load i32*, i32** @values, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, -16
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 15
  %44 = load i32*, i32** @values, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.hd44780*, %struct.hd44780** %4, align 8
  %50 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @PIN_DATA4, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i32*, i32** @values, align 8
  %55 = call i32 @gpiod_set_array_value_cansleep(i32 %48, i64* %53, i32* null, i32* %54)
  %56 = load %struct.hd44780*, %struct.hd44780** %4, align 8
  %57 = call i32 @hd44780_strobe_gpio(%struct.hd44780* %56)
  ret void
}

declare dso_local i32 @DECLARE_BITMAP(i32*, i32) #1

declare dso_local i32 @__assign_bit(i32, i32*, i32) #1

declare dso_local i32 @gpiod_set_array_value_cansleep(i32, i64*, i32*, i32*) #1

declare dso_local i32 @hd44780_strobe_gpio(%struct.hd44780*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
