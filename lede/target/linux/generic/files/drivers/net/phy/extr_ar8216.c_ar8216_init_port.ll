; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_init_port.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8216_PORT_CTRL_LEARN = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_STATE_S = common dso_local global i32 0, align 4
@AR8216_PORT_CPU = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_LINK_UP = common dso_local global i32 0, align 4
@AR8216_PORT_SPEED_1000M = common dso_local global i32 0, align 4
@AR8216_PORT_SPEED_100M = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_TXMAC = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_RXMAC = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_RXFLOW = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_TXFLOW = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_DUPLEX = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_LINK_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32)* @ar8216_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8216_init_port(%struct.ar8xxx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @AR8216_REG_PORT_CTRL(i32 %6)
  %8 = load i32, i32* @AR8216_PORT_CTRL_LEARN, align 4
  %9 = load i32, i32* @AR8216_PORT_CTRL_STATE_S, align 4
  %10 = shl i32 4, %9
  %11 = or i32 %8, %10
  %12 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %5, i32 %7, i32 %11)
  %13 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @AR8216_REG_PORT_VLAN(i32 %14)
  %16 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %13, i32 %15, i32 0)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AR8216_PORT_CPU, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  %21 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @AR8216_REG_PORT_STATUS(i32 %22)
  %24 = load i32, i32* @AR8216_PORT_STATUS_LINK_UP, align 4
  %25 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %26 = call i64 @ar8xxx_has_gige(%struct.ar8xxx_priv* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @AR8216_PORT_SPEED_1000M, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @AR8216_PORT_SPEED_100M, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = or i32 %24, %33
  %35 = load i32, i32* @AR8216_PORT_STATUS_TXMAC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @AR8216_PORT_STATUS_RXMAC, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %40 = call i64 @chip_is_ar8316(%struct.ar8xxx_priv* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @AR8216_PORT_STATUS_RXFLOW, align 4
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = or i32 %38, %46
  %48 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %49 = call i64 @chip_is_ar8316(%struct.ar8xxx_priv* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @AR8216_PORT_STATUS_TXFLOW, align 4
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = or i32 %47, %55
  %57 = load i32, i32* @AR8216_PORT_STATUS_DUPLEX, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %21, i32 %23, i32 %58)
  br label %66

60:                                               ; preds = %2
  %61 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @AR8216_REG_PORT_STATUS(i32 %62)
  %64 = load i32, i32* @AR8216_PORT_STATUS_LINK_AUTO, align 4
  %65 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %61, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %54
  ret void
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @AR8216_REG_PORT_CTRL(i32) #1

declare dso_local i32 @AR8216_REG_PORT_VLAN(i32) #1

declare dso_local i32 @AR8216_REG_PORT_STATUS(i32) #1

declare dso_local i64 @ar8xxx_has_gige(%struct.ar8xxx_priv*) #1

declare dso_local i64 @chip_is_ar8316(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
