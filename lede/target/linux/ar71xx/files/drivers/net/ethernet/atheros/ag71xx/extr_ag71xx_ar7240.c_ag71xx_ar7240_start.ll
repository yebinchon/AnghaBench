; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ag71xx_ar7240_start.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ag71xx_ar7240_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i32, %struct.TYPE_2__*, i32, %struct.ar7240sw* }
%struct.TYPE_2__ = type { i32 }
%struct.ar7240sw = type { i32 }

@SPEED_1000 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ag71xx_ar7240_start(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ar7240sw*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %4 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %5 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %4, i32 0, i32 4
  %6 = load %struct.ar7240sw*, %struct.ar7240sw** %5, align 8
  store %struct.ar7240sw* %6, %struct.ar7240sw** %3, align 8
  %7 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %8 = call i32 @ar7240sw_reset(%struct.ar7240sw* %7)
  %9 = load i32, i32* @SPEED_1000, align 4
  %10 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %13 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %15 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %16 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ar7240_set_addr(%struct.ar7240sw* %14, i32 %19)
  %21 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %22 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %21, i32 0, i32 0
  %23 = call i32 @ar7240_hw_apply(i32* %22)
  %24 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %25 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %24, i32 0, i32 1
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %26, 10
  %28 = call i32 @schedule_delayed_work(i32* %25, i32 %27)
  ret void
}

declare dso_local i32 @ar7240sw_reset(%struct.ar7240sw*) #1

declare dso_local i32 @ar7240_set_addr(%struct.ar7240sw*, i32) #1

declare dso_local i32 @ar7240_hw_apply(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
