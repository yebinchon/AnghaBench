; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_ptm_showtime_enter.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_ptm_showtime_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_cell_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"port_cell is NULL\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"xdata_addr is NULL\00", align 1
@g_xdata_addr = common dso_local global i8* null, align 8
@g_showtime = common dso_local global i32 0, align 4
@g_net_dev = common dso_local global i32* null, align 8
@UTP_CFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"enter showtime\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_cell_info*, i8*)* @ptm_showtime_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptm_showtime_enter(%struct.port_cell_info* %0, i8* %1) #0 {
  %3 = alloca %struct.port_cell_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.port_cell_info* %0, %struct.port_cell_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.port_cell_info*, %struct.port_cell_info** %3, align 8
  %7 = icmp ne %struct.port_cell_info* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** @g_xdata_addr, align 8
  store i32 1, i32* @g_showtime, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %27, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** @g_net_dev, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32*, i32** @g_net_dev, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_carrier_on(i32 %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load i32, i32* @UTP_CFG, align 4
  %32 = call i32 @IFX_REG_W32(i32 15, i32 %31)
  %33 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @IFX_REG_W32(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
