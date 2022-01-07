; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_probe_switch.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_probe_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.switch_dev, %struct.ar8xxx_chip* }
%struct.switch_dev = type { i32, i32, i32, i32, i32 }
%struct.ar8xxx_chip = type { i32, i32, i32, i32 }

@AR8216_PORT_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*)* @ar8xxx_probe_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_probe_switch(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca %struct.ar8xxx_chip*, align 8
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %8 = call i32 @ar8xxx_id_chip(%struct.ar8xxx_priv* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %14, i32 0, i32 1
  %16 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %15, align 8
  store %struct.ar8xxx_chip* %16, %struct.ar8xxx_chip** %4, align 8
  %17 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %17, i32 0, i32 0
  store %struct.switch_dev* %18, %struct.switch_dev** %5, align 8
  %19 = load i32, i32* @AR8216_PORT_CPU, align 4
  %20 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %21 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %4, align 8
  %23 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %26 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %4, align 8
  %28 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %31 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %4, align 8
  %33 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %36 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %4, align 8
  %38 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %41 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %43 = call i32 @ar8xxx_mib_init(%struct.ar8xxx_priv* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %13
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %46, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ar8xxx_id_chip(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_mib_init(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
