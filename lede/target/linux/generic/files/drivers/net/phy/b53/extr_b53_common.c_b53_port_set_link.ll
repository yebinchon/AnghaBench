; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_port_set_link.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_port_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_link = type { i64, i32 }
%struct.b53_device = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_1000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_link*)* @b53_port_set_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_port_set_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_link*, align 8
  %8 = alloca %struct.b53_device*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %7, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %10 = call %struct.b53_device* @sw_to_b53(%struct.switch_dev* %9)
  store %struct.b53_device* %10, %struct.b53_device** %8, align 8
  %11 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %12 = call i64 @is63xx(%struct.b53_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %73

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %20 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %30 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %26
  %38 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %39 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SWITCH_PORT_SPEED_1000, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %45 = call i64 @is5325(%struct.b53_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %49 = call i64 @is5365(%struct.b53_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %73

54:                                               ; preds = %47, %37
  %55 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %56 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SWITCH_PORT_SPEED_1000, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %62 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %73

68:                                               ; preds = %60, %54
  %69 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %72 = call i32 @switch_generic_set_link(%struct.switch_dev* %69, i32 %70, %struct.switch_port_link* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %65, %51, %34, %23, %14
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.b53_device* @sw_to_b53(%struct.switch_dev*) #1

declare dso_local i64 @is63xx(%struct.b53_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @switch_generic_set_link(%struct.switch_dev*, i32, %struct.switch_port_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
