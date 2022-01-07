; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_get_link.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.switch_dev*, i64, %struct.switch_port_link*)* }
%struct.switch_port_link = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.switch_port_link* }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @swconfig_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_get_link(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.switch_port_link*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %9 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %10 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.switch_port_link*, %struct.switch_port_link** %11, align 8
  store %struct.switch_port_link* %12, %struct.switch_port_link** %8, align 8
  %13 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %14 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %17 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %25 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.switch_dev*, i64, %struct.switch_port_link*)*, i32 (%struct.switch_dev*, i64, %struct.switch_port_link*)** %27, align 8
  %29 = icmp ne i32 (%struct.switch_dev*, i64, %struct.switch_port_link*)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %47

33:                                               ; preds = %23
  %34 = load %struct.switch_port_link*, %struct.switch_port_link** %8, align 8
  %35 = call i32 @memset(%struct.switch_port_link* %34, i32 0, i32 4)
  %36 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %37 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.switch_dev*, i64, %struct.switch_port_link*)*, i32 (%struct.switch_dev*, i64, %struct.switch_port_link*)** %39, align 8
  %41 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %42 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %43 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.switch_port_link*, %struct.switch_port_link** %8, align 8
  %46 = call i32 %40(%struct.switch_dev* %41, i64 %44, %struct.switch_port_link* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %33, %30, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.switch_port_link*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
