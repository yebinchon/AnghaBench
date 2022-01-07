; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pmcs-msp71xx/extr_msp_serial.c_msp_serial_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pmcs-msp71xx/extr_msp_serial.c_msp_serial_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, %struct.msp_uart_data* }
%struct.msp_uart_data = type { i32 }

@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_BUSY = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @msp_serial_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_serial_handle_irq(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.msp_uart_data*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load %struct.msp_uart_data*, %struct.msp_uart_data** %7, align 8
  store %struct.msp_uart_data* %8, %struct.msp_uart_data** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @UART_IIR, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %11, %17
  %19 = call i32 @readb(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @serial8250_handle_irq(%struct.uart_port* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %53

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @UART_IIR_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @UART_IIR_BUSY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 192
  %36 = call i32 @readb(i64 %35)
  %37 = load %struct.msp_uart_data*, %struct.msp_uart_data** %4, align 8
  %38 = getelementptr inbounds %struct.msp_uart_data, %struct.msp_uart_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @UART_LCR, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %42, %48
  %50 = call i32 @writeb(i32 %39, i64 %49)
  store i32 1, i32* %2, align 4
  br label %53

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %31, %24
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @serial8250_handle_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
