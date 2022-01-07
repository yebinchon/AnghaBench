; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_get_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }

@PORTMASK = common dso_local global i32 0, align 4
@RTL8306_NUM_PORTS = common dso_local global i32 0, align 4
@TAG_INSERT = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @rtl_get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_get_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  %8 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %9 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %10 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PORTMASK, align 4
  %13 = call i32 @RTL_VLAN_REG(i32 %11, i32 %12)
  %14 = call i32 @rtl_get(%struct.switch_dev* %8, i32 %13)
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %60, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RTL8306_NUM_PORTS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %60

26:                                               ; preds = %19
  %27 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %28 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.switch_port*, %struct.switch_port** %29, align 8
  %31 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %32 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %30, i64 %33
  store %struct.switch_port* %34, %struct.switch_port** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %37 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @TAG_INSERT, align 4
  %41 = call i32 @RTL_PORT_REG(i32 %39, i32 %40)
  %42 = call i32 @rtl_get(%struct.switch_dev* %38, i32 %41)
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %50, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %47 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44, %26
  %51 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %54 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %44
  %56 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %57 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55, %25
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %15

63:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @rtl_get(%struct.switch_dev*, i32) #1

declare dso_local i32 @RTL_VLAN_REG(i32, i32) #1

declare dso_local i32 @RTL_PORT_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
