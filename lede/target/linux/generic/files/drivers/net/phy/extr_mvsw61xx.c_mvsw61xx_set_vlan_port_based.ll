; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_set_vlan_port_based.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_set_vlan_port_based.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvsw61xx_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @mvsw61xx_set_vlan_port_based to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_set_vlan_port_based(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.mvsw61xx_state*, align 8
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %11 = call %struct.mvsw61xx_state* @get_state(%struct.switch_dev* %10)
  store %struct.mvsw61xx_state* %11, %struct.mvsw61xx_state** %8, align 8
  %12 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %13 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %20 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %17
  %27 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %28 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %8, align 8
  %34 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %48

40:                                               ; preds = %26
  %41 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %8, align 8
  %42 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %32
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.mvsw61xx_state* @get_state(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
