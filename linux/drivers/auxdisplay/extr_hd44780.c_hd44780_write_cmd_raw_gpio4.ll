; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_hd44780.c_hd44780_write_cmd_raw_gpio4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_hd44780.c_hd44780_write_cmd_raw_gpio4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { %struct.hd44780* }
%struct.hd44780 = type { i64* }

@values = common dso_local global i32* null, align 8
@PIN_CTRL_RW = common dso_local global i64 0, align 8
@PIN_DATA4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*, i32)* @hd44780_write_cmd_raw_gpio4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd44780_write_cmd_raw_gpio4(%struct.charlcd* %0, i32 %1) #0 {
  %3 = alloca %struct.charlcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hd44780*, align 8
  %6 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** @values, align 8
  %8 = call i32 @DECLARE_BITMAP(i32* %7, i32 6)
  %9 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %10 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %9, i32 0, i32 0
  %11 = load %struct.hd44780*, %struct.hd44780** %10, align 8
  store %struct.hd44780* %11, %struct.hd44780** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 15
  %14 = load i32*, i32** @values, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.hd44780*, %struct.hd44780** %5, align 8
  %17 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @PIN_CTRL_RW, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 6, i32 5
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.hd44780*, %struct.hd44780** %5, align 8
  %27 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @PIN_DATA4, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i32*, i32** @values, align 8
  %32 = call i32 @gpiod_set_array_value_cansleep(i32 %25, i64* %30, i32* null, i32* %31)
  %33 = load %struct.hd44780*, %struct.hd44780** %5, align 8
  %34 = call i32 @hd44780_strobe_gpio(%struct.hd44780* %33)
  ret void
}

declare dso_local i32 @DECLARE_BITMAP(i32*, i32) #1

declare dso_local i32 @gpiod_set_array_value_cansleep(i32, i64*, i32*, i32*) #1

declare dso_local i32 @hd44780_strobe_gpio(%struct.hd44780*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
