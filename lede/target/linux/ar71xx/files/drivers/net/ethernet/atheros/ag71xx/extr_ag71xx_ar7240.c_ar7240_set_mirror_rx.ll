; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_set_mirror_rx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_set_mirror_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ar7240sw = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_MIRROR_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @ar7240_set_mirror_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240_set_mirror_rx(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ar7240sw*, align 8
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = call %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev* %11)
  store %struct.ar7240sw* %12, %struct.ar7240sw** %8, align 8
  %13 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %14 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %13, i32 0, i32 0
  %15 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  store %struct.mii_bus* %15, %struct.mii_bus** %9, align 8
  %16 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %17 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %21 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %3
  %28 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %29 = icmp ne %struct.switch_val* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %32 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @AR7240_REG_PORT_CTRL(i32 %38)
  %40 = load i32, i32* @AR7240_PORT_CTRL_MIRROR_RX, align 4
  %41 = call i32 @ar7240sw_reg_set(%struct.mii_bus* %37, i32 %39, i32 %40)
  br label %48

42:                                               ; preds = %30, %27
  %43 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @AR7240_REG_PORT_CTRL(i32 %44)
  %46 = load i32, i32* @AR7240_PORT_CTRL_MIRROR_RX, align 4
  %47 = call i32 @ar7240sw_reg_rmw(%struct.mii_bus* %43, i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %42, %36
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev*) #1

declare dso_local i32 @ar7240sw_reg_set(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @AR7240_REG_PORT_CTRL(i32) #1

declare dso_local i32 @ar7240sw_reg_rmw(%struct.mii_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
