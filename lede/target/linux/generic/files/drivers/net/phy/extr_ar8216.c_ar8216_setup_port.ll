; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_setup_port.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32*, i64*, i32, i64 }

@AR8216_OUT_ADD_VLAN = common dso_local global i32 0, align 4
@AR8216_OUT_STRIP_VLAN = common dso_local global i32 0, align 4
@AR8216_IN_SECURE = common dso_local global i32 0, align 4
@AR8216_OUT_KEEP = common dso_local global i32 0, align 4
@AR8216_IN_PORT_ONLY = common dso_local global i32 0, align 4
@AR8216_PORT_CPU = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_HEADER = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_LEARN = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_VLAN_MODE = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_SINGLE_VLAN = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_STATE = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_LEARN_LOCK = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_VLAN_MODE_S = common dso_local global i32 0, align 4
@AR8216_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_STATE_S = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_DEST_PORTS = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_MODE = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_DEFAULT_ID = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_DEST_PORTS_S = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_MODE_S = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_DEFAULT_ID_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, i32)* @ar8216_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8216_setup_port(%struct.ar8xxx_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %3
  %16 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %20 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %18, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %15
  %36 = load i32, i32* @AR8216_OUT_ADD_VLAN, align 4
  store i32 %36, i32* %8, align 4
  br label %39

37:                                               ; preds = %15
  %38 = load i32, i32* @AR8216_OUT_STRIP_VLAN, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* @AR8216_IN_SECURE, align 4
  store i32 %40, i32* %9, align 4
  br label %45

41:                                               ; preds = %3
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @AR8216_OUT_KEEP, align 4
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @AR8216_IN_PORT_ONLY, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %47 = call i64 @chip_is_ar8216(%struct.ar8xxx_priv* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @AR8216_PORT_CPU, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @AR8216_PORT_CTRL_HEADER, align 4
  store i32 %59, i32* %7, align 4
  br label %61

60:                                               ; preds = %54, %49, %45
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %58
  %62 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @AR8216_REG_PORT_CTRL(i32 %63)
  %65 = load i32, i32* @AR8216_PORT_CTRL_LEARN, align 4
  %66 = load i32, i32* @AR8216_PORT_CTRL_VLAN_MODE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @AR8216_PORT_CTRL_SINGLE_VLAN, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @AR8216_PORT_CTRL_STATE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @AR8216_PORT_CTRL_HEADER, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @AR8216_PORT_CTRL_LEARN_LOCK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @AR8216_PORT_CTRL_LEARN, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @AR8216_PORT_CTRL_VLAN_MODE_S, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load i32, i32* @AR8216_PORT_STATE_FORWARD, align 4
  %84 = load i32, i32* @AR8216_PORT_CTRL_STATE_S, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %62, i32 %64, i32 %75, i32 %86)
  %88 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @AR8216_REG_PORT_VLAN(i32 %89)
  %91 = load i32, i32* @AR8216_PORT_VLAN_DEST_PORTS, align 4
  %92 = load i32, i32* @AR8216_PORT_VLAN_MODE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @AR8216_PORT_VLAN_DEFAULT_ID, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @AR8216_PORT_VLAN_DEST_PORTS_S, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @AR8216_PORT_VLAN_MODE_S, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @AR8216_PORT_VLAN_DEFAULT_ID_S, align 4
  %105 = shl i32 %103, %104
  %106 = or i32 %102, %105
  %107 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %88, i32 %90, i32 %95, i32 %106)
  ret void
}

declare dso_local i64 @chip_is_ar8216(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @AR8216_REG_PORT_CTRL(i32) #1

declare dso_local i32 @AR8216_REG_PORT_VLAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
