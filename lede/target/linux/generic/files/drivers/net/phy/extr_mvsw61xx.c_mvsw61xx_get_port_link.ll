; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_get_port_link.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_get_port_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_link = type { i32, i32, i32 }

@STATUS = common dso_local global i32 0, align 4
@MV_PORT_STATUS_LINK = common dso_local global i32 0, align 4
@MV_PORT_STATUS_FDX = common dso_local global i32 0, align 4
@MV_PORT_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@MV_PORT_STATUS_SPEED_SHIFT = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_10 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_100 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_link*)* @mvsw61xx_get_port_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_get_port_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %7, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %11 = load i32, i32* @STATUS, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @MV_PORTREG(i32 %11, i32 %12)
  %14 = call i32 @sr16(%struct.switch_dev* %10, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MV_PORT_STATUS_LINK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %19 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %21 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MV_PORT_STATUS_FDX, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %30 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MV_PORT_STATUS_SPEED_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @MV_PORT_STATUS_SPEED_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %49 [
    i32 130, label %37
    i32 129, label %41
    i32 128, label %45
  ]

37:                                               ; preds = %25
  %38 = load i32, i32* @SWITCH_PORT_SPEED_10, align 4
  %39 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %40 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %49

41:                                               ; preds = %25
  %42 = load i32, i32* @SWITCH_PORT_SPEED_100, align 4
  %43 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %44 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %25
  %46 = load i32, i32* @SWITCH_PORT_SPEED_1000, align 4
  %47 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %48 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %25, %45, %41, %37
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @sr16(%struct.switch_dev*, i32) #1

declare dso_local i32 @MV_PORTREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
