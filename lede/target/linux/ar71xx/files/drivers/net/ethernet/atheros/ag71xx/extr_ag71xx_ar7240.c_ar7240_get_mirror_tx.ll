; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_get_mirror_tx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_get_mirror_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ar7240sw = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_MIRROR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @ar7240_get_mirror_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240_get_mirror_tx(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ar7240sw*, align 8
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %12 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %13 = call %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev* %12)
  store %struct.ar7240sw* %13, %struct.ar7240sw** %8, align 8
  %14 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %15 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %14, i32 0, i32 0
  %16 = load %struct.mii_bus*, %struct.mii_bus** %15, align 8
  store %struct.mii_bus* %16, %struct.mii_bus** %9, align 8
  %17 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %18 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %22 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %47

28:                                               ; preds = %3
  %29 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @AR7240_REG_PORT_CTRL(i32 %30)
  %32 = call i32 @ar7240sw_reg_read(%struct.mii_bus* %29, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @AR7240_PORT_CTRL_MIRROR_TX, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @AR7240_PORT_CTRL_MIRROR_TX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %40 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %46

42:                                               ; preds = %28
  %43 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %44 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %38
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev*) #1

declare dso_local i32 @ar7240sw_reg_read(%struct.mii_bus*, i32) #1

declare dso_local i32 @AR7240_REG_PORT_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
