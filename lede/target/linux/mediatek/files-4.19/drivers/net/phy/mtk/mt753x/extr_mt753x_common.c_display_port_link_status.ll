; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_common.c_display_port_link_status.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_common.c_display_port_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }

@MAC_SPD_STS_M = common dso_local global i32 0, align 4
@MAC_SPD_STS_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"10Mbps\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"100Mbps\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1Gbps\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"2.5Gbps\00", align 1
@MAC_LNK_STS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Port %d Link is Up - %s/%s\0A\00", align 1
@MAC_DPX_STS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Port %d Link is Down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*, i32)* @display_port_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_port_link_status(%struct.gsw_mt753x* %0, i32 %1) #0 {
  %3 = alloca %struct.gsw_mt753x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @PMSR(i32 %9)
  %11 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %8, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAC_SPD_STS_M, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @MAC_SPD_STS_S, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %22 [
    i32 131, label %18
    i32 130, label %19
    i32 129, label %20
    i32 128, label %21
  ]

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %22

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %22

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %22

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %22

22:                                               ; preds = %2, %21, %20, %19, %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAC_LNK_STS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %29 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MAC_DPX_STS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %39 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %31, i8* %32, i8* %38)
  br label %46

40:                                               ; preds = %22
  %41 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %42 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %27
  ret void
}

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @PMSR(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
