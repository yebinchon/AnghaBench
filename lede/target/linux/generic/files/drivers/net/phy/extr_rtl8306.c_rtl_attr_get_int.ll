; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_attr_get_int.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_attr_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32, i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rtl_regs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl_attr_get_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_attr_get_int(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %9 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %10 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %13 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %16 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = add nsw i32 %11, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @rtl_regs, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @rtl_get(%struct.switch_dev* %28, i32 %29)
  %31 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %32 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @rtl_get(%struct.switch_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
