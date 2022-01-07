; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_set_pvid.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_set_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.ar7240sw = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, i32)* @ar7240_set_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240_set_pvid(%struct.switch_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ar7240sw*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %10 = call %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev* %9)
  store %struct.ar7240sw* %10, %struct.ar7240sw** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %13 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %22 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
