; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_register_clocksource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_register_clocksource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { %struct.TYPE_4__*, i32, %struct.clocksource }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.clocksource = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@sh_cmt_clocksource_read = common dso_local global i32 0, align 4
@sh_cmt_clocksource_enable = common dso_local global i32 0, align 4
@sh_cmt_clocksource_disable = common dso_local global i32 0, align 4
@sh_cmt_clocksource_suspend = common dso_local global i32 0, align 4
@sh_cmt_clocksource_resume = common dso_local global i32 0, align 4
@CLOCK_SOURCE_IS_CONTINUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ch%u: used as clock source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_channel*, i8*)* @sh_cmt_register_clocksource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_register_clocksource(%struct.sh_cmt_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.sh_cmt_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clocksource*, align 8
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %7 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %6, i32 0, i32 2
  store %struct.clocksource* %7, %struct.clocksource** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %10 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %12 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %11, i32 0, i32 1
  store i32 125, i32* %12, align 8
  %13 = load i32, i32* @sh_cmt_clocksource_read, align 4
  %14 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %15 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @sh_cmt_clocksource_enable, align 4
  %17 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %18 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @sh_cmt_clocksource_disable, align 4
  %20 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %21 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @sh_cmt_clocksource_suspend, align 4
  %23 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %24 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @sh_cmt_clocksource_resume, align 4
  %26 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %27 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = call i32 @CLOCKSOURCE_MASK(i32 32)
  %29 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %30 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @CLOCK_SOURCE_IS_CONTINUOUS, align 4
  %32 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %33 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %35 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %41 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.clocksource*, %struct.clocksource** %5, align 8
  %45 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %46 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clocksource_register_hz(%struct.clocksource* %44, i32 %49)
  ret i32 0
}

declare dso_local i32 @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @clocksource_register_hz(%struct.clocksource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
