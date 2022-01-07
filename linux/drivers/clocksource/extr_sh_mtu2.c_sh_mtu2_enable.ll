; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_mtu2.c_sh_mtu2_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_mtu2.c_sh_mtu2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mtu2_channel = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ch%u: cannot enable clock\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@TCR_CCLR_TGRA = common dso_local global i64 0, align 8
@TCR_TPSC_P64 = common dso_local global i64 0, align 8
@TIOR = common dso_local global i32 0, align 4
@TIOR_OC_0_CLEAR = common dso_local global i32 0, align 4
@TGR = common dso_local global i32 0, align 4
@TCNT = common dso_local global i32 0, align 4
@TMDR = common dso_local global i32 0, align 4
@TMDR_MD_NORMAL = common dso_local global i64 0, align 8
@TIER = common dso_local global i32 0, align 4
@TIER_TGIEA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mtu2_channel*)* @sh_mtu2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mtu2_enable(%struct.sh_mtu2_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mtu2_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sh_mtu2_channel* %0, %struct.sh_mtu2_channel** %3, align 8
  %7 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %8 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_get_sync(i32* %12)
  %14 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %15 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @dev_pm_syscore_device(i32* %19, i32 1)
  %21 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %22 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @clk_enable(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %31 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %37 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %91

41:                                               ; preds = %1
  %42 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %43 = call i32 @sh_mtu2_start_stop_ch(%struct.sh_mtu2_channel* %42, i32 0)
  %44 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %45 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_get_rate(i32 %48)
  %50 = sdiv i32 %49, 64
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* @HZ, align 4
  %54 = sdiv i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = add i64 %52, %55
  %57 = load i32, i32* @HZ, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %56, %58
  store i64 %59, i64* %4, align 8
  %60 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %61 = load i32, i32* @TCR, align 4
  %62 = load i64, i64* @TCR_CCLR_TGRA, align 8
  %63 = load i64, i64* @TCR_TPSC_P64, align 8
  %64 = or i64 %62, %63
  %65 = call i32 @sh_mtu2_write(%struct.sh_mtu2_channel* %60, i32 %61, i64 %64)
  %66 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %67 = load i32, i32* @TIOR, align 4
  %68 = load i32, i32* @TIOR_OC_0_CLEAR, align 4
  %69 = call i64 @TIOC_IOCH(i32 %68)
  %70 = load i32, i32* @TIOR_OC_0_CLEAR, align 4
  %71 = call i64 @TIOC_IOCL(i32 %70)
  %72 = or i64 %69, %71
  %73 = call i32 @sh_mtu2_write(%struct.sh_mtu2_channel* %66, i32 %67, i64 %72)
  %74 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %75 = load i32, i32* @TGR, align 4
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @sh_mtu2_write(%struct.sh_mtu2_channel* %74, i32 %75, i64 %76)
  %78 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %79 = load i32, i32* @TCNT, align 4
  %80 = call i32 @sh_mtu2_write(%struct.sh_mtu2_channel* %78, i32 %79, i64 0)
  %81 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %82 = load i32, i32* @TMDR, align 4
  %83 = load i64, i64* @TMDR_MD_NORMAL, align 8
  %84 = call i32 @sh_mtu2_write(%struct.sh_mtu2_channel* %81, i32 %82, i64 %83)
  %85 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %86 = load i32, i32* @TIER, align 4
  %87 = load i64, i64* @TIER_TGIEA, align 8
  %88 = call i32 @sh_mtu2_write(%struct.sh_mtu2_channel* %85, i32 %86, i64 %87)
  %89 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %90 = call i32 @sh_mtu2_start_stop_ch(%struct.sh_mtu2_channel* %89, i32 1)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %41, %29
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dev_pm_syscore_device(i32*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sh_mtu2_start_stop_ch(%struct.sh_mtu2_channel*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @sh_mtu2_write(%struct.sh_mtu2_channel*, i32, i64) #1

declare dso_local i64 @TIOC_IOCH(i32) #1

declare dso_local i64 @TIOC_IOCL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
