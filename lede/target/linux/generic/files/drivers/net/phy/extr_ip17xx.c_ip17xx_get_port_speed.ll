; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_get_port_speed.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_get_port_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ip17xx_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @ip17xx_get_port_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_get_port_speed(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ip17xx_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %12 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %13 = call %struct.ip17xx_state* @get_state(%struct.switch_dev* %12)
  store %struct.ip17xx_state* %13, %struct.ip17xx_state** %8, align 8
  %14 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %15 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %19 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %26 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 100, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %73

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %31 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %73

40:                                               ; preds = %34
  %41 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ip_phy_read(%struct.ip17xx_state* %41, i32 %42, i32 1)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ip_phy_read(%struct.ip17xx_state* %44, i32 %45, i32 18)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %40
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %73

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 2048
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 100, i32 10
  %65 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %66 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %72

68:                                               ; preds = %55
  %69 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %70 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %59
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %52, %37, %24
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.ip17xx_state* @get_state(%struct.switch_dev*) #1

declare dso_local i32 @ip_phy_read(%struct.ip17xx_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
