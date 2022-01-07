; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c___sh_tmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c___sh_tmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_channel = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ch%u: cannot enable clock\0A\00", align 1
@TCOR = common dso_local global i32 0, align 4
@TCNT = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@TCR_TPSC_CLK4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_channel*)* @__sh_tmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sh_tmu_enable(%struct.sh_tmu_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_tmu_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_tmu_channel* %0, %struct.sh_tmu_channel** %3, align 8
  %5 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %6 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_enable(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %15 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %21 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %1
  %26 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %27 = call i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_channel* %26, i32 0)
  %28 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %29 = load i32, i32* @TCOR, align 4
  %30 = call i32 @sh_tmu_write(%struct.sh_tmu_channel* %28, i32 %29, i32 -1)
  %31 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %32 = load i32, i32* @TCNT, align 4
  %33 = call i32 @sh_tmu_write(%struct.sh_tmu_channel* %31, i32 %32, i32 -1)
  %34 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %35 = load i32, i32* @TCR, align 4
  %36 = load i32, i32* @TCR_TPSC_CLK4, align 4
  %37 = call i32 @sh_tmu_write(%struct.sh_tmu_channel* %34, i32 %35, i32 %36)
  %38 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %3, align 8
  %39 = call i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_channel* %38, i32 1)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %25, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_channel*, i32) #1

declare dso_local i32 @sh_tmu_write(%struct.sh_tmu_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
