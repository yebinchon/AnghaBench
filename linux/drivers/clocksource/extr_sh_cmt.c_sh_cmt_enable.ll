; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ch%u: cannot enable clock\0A\00", align 1
@SH_CMT16_CMCSR_CMIE = common dso_local global i32 0, align 4
@SH_CMT16_CMCSR_CKS512 = common dso_local global i32 0, align 4
@SH_CMT32_CMCSR_CMM = common dso_local global i32 0, align 4
@SH_CMT32_CMCSR_CMTOUT_IE = common dso_local global i32 0, align 4
@SH_CMT32_CMCSR_CMR_IRQ = common dso_local global i32 0, align 4
@SH_CMT32_CMCSR_CKS_RCLK8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ch%u: cannot clear CMCNT\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_channel*)* @sh_cmt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_enable(%struct.sh_cmt_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_cmt_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %3, align 8
  %6 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %7 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_get_sync(i32* %11)
  %13 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %14 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @dev_pm_syscore_device(i32* %18, i32 1)
  %20 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %21 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_enable(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %30 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %36 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %111

39:                                               ; preds = %1
  %40 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %41 = call i32 @sh_cmt_start_stop_ch(%struct.sh_cmt_channel* %40, i32 0)
  %42 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %43 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %52 = load i32, i32* @SH_CMT16_CMCSR_CMIE, align 4
  %53 = load i32, i32* @SH_CMT16_CMCSR_CKS512, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @sh_cmt_write_cmcsr(%struct.sh_cmt_channel* %51, i32 %54)
  br label %66

56:                                               ; preds = %39
  %57 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %58 = load i32, i32* @SH_CMT32_CMCSR_CMM, align 4
  %59 = load i32, i32* @SH_CMT32_CMCSR_CMTOUT_IE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SH_CMT32_CMCSR_CMR_IRQ, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SH_CMT32_CMCSR_CKS_RCLK8, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @sh_cmt_write_cmcsr(%struct.sh_cmt_channel* %57, i32 %64)
  br label %66

66:                                               ; preds = %56, %50
  %67 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %68 = call i32 @sh_cmt_write_cmcor(%struct.sh_cmt_channel* %67, i32 -1)
  %69 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %70 = call i32 @sh_cmt_write_cmcnt(%struct.sh_cmt_channel* %69, i32 0)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %81, %66
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 100
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %76 = call i64 @sh_cmt_read_cmcnt(%struct.sh_cmt_channel* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %84

79:                                               ; preds = %74
  %80 = call i32 @udelay(i32 1)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %71

84:                                               ; preds = %78, %71
  %85 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %86 = call i64 @sh_cmt_read_cmcnt(%struct.sh_cmt_channel* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %90 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %96 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @ETIMEDOUT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %104

101:                                              ; preds = %84
  %102 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %103 = call i32 @sh_cmt_start_stop_ch(%struct.sh_cmt_channel* %102, i32 1)
  store i32 0, i32* %2, align 4
  br label %113

104:                                              ; preds = %88
  %105 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %106 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @clk_disable(i32 %109)
  br label %111

111:                                              ; preds = %104, %28
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %101
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dev_pm_syscore_device(i32*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sh_cmt_start_stop_ch(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @sh_cmt_write_cmcsr(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @sh_cmt_write_cmcor(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @sh_cmt_write_cmcnt(%struct.sh_cmt_channel*, i32) #1

declare dso_local i64 @sh_cmt_read_cmcnt(%struct.sh_cmt_channel*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
