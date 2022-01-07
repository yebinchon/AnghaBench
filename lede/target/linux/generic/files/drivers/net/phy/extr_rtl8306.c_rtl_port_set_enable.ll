; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_port_set_enable.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_port_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }

@RXEN = common dso_local global i32 0, align 4
@TXEN = common dso_local global i32 0, align 4
@NRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*, i32, i32)* @rtl_port_set_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_port_set_enable(%struct.switch_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @RXEN, align 4
  %10 = call i32 @RTL_PORT_REG(i32 %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rtl_set(%struct.switch_dev* %7, i32 %10, i32 %11)
  %13 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TXEN, align 4
  %16 = call i32 @RTL_PORT_REG(i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @rtl_set(%struct.switch_dev* %13, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 5
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %3
  br label %31

25:                                               ; preds = %21
  %26 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @NRESTART, align 4
  %29 = call i32 @RTL_PORT_REG(i32 %27, i32 %28)
  %30 = call i32 @rtl_set(%struct.switch_dev* %26, i32 %29, i32 1)
  br label %31

31:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @rtl_set(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @RTL_PORT_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
