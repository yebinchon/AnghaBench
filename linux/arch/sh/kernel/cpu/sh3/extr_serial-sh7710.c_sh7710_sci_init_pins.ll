; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh3/extr_serial-sh7710.c_sh7710_sci_init_pins.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh3/extr_serial-sh7710.c_sh7710_sci_init_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@PACR = common dso_local global i32 0, align 4
@PBCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sh7710_sci_init_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh7710_sci_init_pins(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, -1539309568
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* @PACR, align 4
  %11 = call i32 @__raw_readw(i32 %10)
  %12 = and i32 %11, 65472
  %13 = load i32, i32* @PACR, align 4
  %14 = call i32 @__raw_writew(i32 %12, i32 %13)
  %15 = load i32, i32* @PBCR, align 4
  %16 = call i32 @__raw_readw(i32 %15)
  %17 = and i32 %16, 4095
  %18 = load i32, i32* @PBCR, align 4
  %19 = call i32 @__raw_writew(i32 %17, i32 %18)
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1539244032
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @PBCR, align 4
  %27 = call i32 @__raw_readw(i32 %26)
  %28 = and i32 %27, 61443
  %29 = load i32, i32* @PBCR, align 4
  %30 = call i32 @__raw_writew(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %20
  br label %32

32:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @__raw_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
