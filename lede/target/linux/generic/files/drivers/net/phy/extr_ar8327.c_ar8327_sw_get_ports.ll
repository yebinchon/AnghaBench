; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_sw_get_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_sw_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.ar8xxx_priv = type { i32*, i32, i64* }

@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @ar8327_sw_get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_sw_get_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca %struct.ar8xxx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.switch_port*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %10 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %9)
  store %struct.ar8xxx_priv* %10, %struct.ar8xxx_priv** %5, align 8
  %11 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %12 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %15 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %20 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %75, %2
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %24 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %75

34:                                               ; preds = %27
  %35 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %36 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.switch_port*, %struct.switch_port** %37, align 8
  %39 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %40 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %38, i64 %41
  store %struct.switch_port* %43, %struct.switch_port** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %46 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %48 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %34
  %55 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %63 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %54, %34
  %67 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %68 = shl i32 1, %67
  %69 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %70 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %74

71:                                               ; preds = %54
  %72 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %73 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %33
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %21

78:                                               ; preds = %21
  ret i32 0
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
