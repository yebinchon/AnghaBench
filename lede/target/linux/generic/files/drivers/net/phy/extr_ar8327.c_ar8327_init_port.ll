; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_init_port.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.ar8327_data* }
%struct.ar8327_data = type { i32, i32 }

@AR8216_PORT_CPU = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_LINK_AUTO = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_FLOW_CONTROL = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_OUT_MODE_S = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_LEARN = common dso_local global i32 0, align 4
@AR8216_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_STATE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32)* @ar8327_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_init_port(%struct.ar8xxx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar8327_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %7, i32 0, i32 0
  %9 = load %struct.ar8327_data*, %struct.ar8327_data** %8, align 8
  store %struct.ar8327_data* %9, %struct.ar8327_data** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AR8216_PORT_CPU, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ar8327_data*, %struct.ar8327_data** %5, align 8
  %15 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.ar8327_data*, %struct.ar8327_data** %5, align 8
  %22 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @AR8216_PORT_STATUS_LINK_AUTO, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AR8216_PORT_CPU, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 6
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @AR8327_REG_PORT_STATUS(i32 %36)
  %38 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %35, i32 %37, i32 0)
  %39 = call i32 @msleep(i32 100)
  %40 = load i32, i32* @AR8216_PORT_STATUS_FLOW_CONTROL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @AR8327_REG_PORT_STATUS(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %43, i32 %45, i32 %46)
  br label %54

48:                                               ; preds = %31, %27
  %49 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @AR8327_REG_PORT_STATUS(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %49, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %34
  %55 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @AR8327_REG_PORT_HEADER(i32 %56)
  %58 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %55, i32 %57, i32 0)
  %59 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @AR8327_REG_PORT_VLAN0(i32 %60)
  %62 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %59, i32 %61, i32 0)
  %63 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH, align 4
  %64 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_S, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @AR8327_REG_PORT_VLAN1(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %66, i32 %68, i32 %69)
  %71 = load i32, i32* @AR8327_PORT_LOOKUP_LEARN, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @AR8216_PORT_STATE_FORWARD, align 4
  %73 = load i32, i32* @AR8327_PORT_LOOKUP_STATE_S, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @AR8327_REG_PORT_LOOKUP(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %77, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @AR8327_REG_PORT_STATUS(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @AR8327_REG_PORT_HEADER(i32) #1

declare dso_local i32 @AR8327_REG_PORT_VLAN0(i32) #1

declare dso_local i32 @AR8327_REG_PORT_VLAN1(i32) #1

declare dso_local i32 @AR8327_REG_PORT_LOOKUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
