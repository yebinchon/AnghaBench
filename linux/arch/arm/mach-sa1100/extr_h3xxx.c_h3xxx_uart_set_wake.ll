; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_h3xxx.c_h3xxx_uart_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_h3xxx.c_h3xxx_uart_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@_Ser3UTCR0 = common dso_local global i64 0, align 8
@PWER_GPIO23 = common dso_local global i32 0, align 4
@PWER_GPIO25 = common dso_local global i32 0, align 4
@PWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i64)* @h3xxx_uart_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3xxx_uart_set_wake(%struct.uart_port* %0, i64 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @_Ser3UTCR0, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* @PWER_GPIO23, align 4
  %18 = load i32, i32* @PWER_GPIO25, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PWER, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @PWER, align 4
  br label %29

22:                                               ; preds = %13
  %23 = load i32, i32* @PWER_GPIO23, align 4
  %24 = load i32, i32* @PWER_GPIO25, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @PWER, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* @PWER, align 4
  br label %29

29:                                               ; preds = %22, %16
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
