; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_set_link.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.switch_dev*, i32, i32)* }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @swconfig_set_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_set_link(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %8 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %9 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.switch_dev*, i32, i32)*, i32 (%struct.switch_dev*, i32, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.switch_dev*, i32, i32)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %32

17:                                               ; preds = %3
  %18 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %19 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.switch_dev*, i32, i32)*, i32 (%struct.switch_dev*, i32, i32)** %21, align 8
  %23 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %24 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %25 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %28 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %22(%struct.switch_dev* %23, i32 %26, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %17, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
