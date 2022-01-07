; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_get_port_link.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_get_port_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_link = type { i32, i8*, i8*, i8* }

@RTL8306_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LINK = common dso_local global i32 0, align 4
@DUPLEX = common dso_local global i32 0, align 4
@NWAY = common dso_local global i32 0, align 4
@SPEED = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_100 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_link*)* @rtl_get_port_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_get_port_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_link*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @RTL8306_NUM_PORTS, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %70

14:                                               ; preds = %3
  %15 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LINK, align 4
  %18 = call i32 @RTL_PORT_REG(i32 %16, i32 %17)
  %19 = call i8* @rtl_get(%struct.switch_dev* %15, i32 %18)
  %20 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %21 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %23 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %14
  %27 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LINK, align 4
  %30 = call i32 @RTL_PORT_REG(i32 %28, i32 %29)
  %31 = call i8* @rtl_get(%struct.switch_dev* %27, i32 %30)
  %32 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %33 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %26, %14
  %35 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %36 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %70

40:                                               ; preds = %34
  %41 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @DUPLEX, align 4
  %44 = call i32 @RTL_PORT_REG(i32 %42, i32 %43)
  %45 = call i8* @rtl_get(%struct.switch_dev* %41, i32 %44)
  %46 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %47 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @NWAY, align 4
  %51 = call i32 @RTL_PORT_REG(i32 %49, i32 %50)
  %52 = call i8* @rtl_get(%struct.switch_dev* %48, i32 %51)
  %53 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %54 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SPEED, align 4
  %58 = call i32 @RTL_PORT_REG(i32 %56, i32 %57)
  %59 = call i8* @rtl_get(%struct.switch_dev* %55, i32 %58)
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %40
  %62 = load i32, i32* @SWITCH_PORT_SPEED_100, align 4
  %63 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %64 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %69

65:                                               ; preds = %40
  %66 = load i32, i32* @SWITCH_PORT_SPEED_10, align 4
  %67 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %68 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %39, %11
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i8* @rtl_get(%struct.switch_dev*, i32) #1

declare dso_local i32 @RTL_PORT_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
