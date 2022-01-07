; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_sdrc2xxx.c_omap2xxx_sdrc_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_sdrc2xxx.c_omap2xxx_sdrc_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@SDRC_MR_0 = common dso_local global i32 0, align 4
@mem_timings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@M_DDR = common dso_local global i32 0, align 4
@M_LOCK_CTRL = common dso_local global i32 0, align 4
@M_UNLOCK = common dso_local global i32 0, align 4
@M_LOCK = common dso_local global i32 0, align 4
@SDRC_DLLA_CTRL = common dso_local global i32 0, align 4
@SDRC_DLLA_STATUS = common dso_local global i32 0, align 4
@SDRC_DLLB_CTRL = common dso_local global i32 0, align 4
@SDRC_DLLB_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2xxx_sdrc_init_params(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @SDRC_MR_0, align 4
  %6 = call i32 @sdrc_read_reg(i32 %5)
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 1
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 0), align 4
  %11 = call i64 (...) @cpu_is_omap2422()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 1), align 4
  br label %15

14:                                               ; preds = %1
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 1), align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 0), align 4
  %17 = load i32, i32* @M_DDR, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %73

20:                                               ; preds = %15
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 2), align 4
  %22 = and i32 %21, 4
  %23 = load i32, i32* @M_LOCK_CTRL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @M_UNLOCK, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 4), align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @M_LOCK, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 4), align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 1), align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* @SDRC_DLLA_CTRL, align 4
  %34 = call i32 @sdrc_read_reg(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @SDRC_DLLA_STATUS, align 4
  %36 = call i32 @sdrc_read_reg(i32 %35)
  %37 = and i32 %36, 65280
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %3, align 8
  br label %46

39:                                               ; preds = %29
  %40 = load i32, i32* @SDRC_DLLB_CTRL, align 4
  %41 = call i32 @sdrc_read_reg(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @SDRC_DLLB_STATUS, align 4
  %43 = call i32 @sdrc_read_reg(i32 %42)
  %44 = and i32 %43, 65280
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, -65281
  store i32 %51, i32* %4, align 4
  %52 = load i64, i64* %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = or i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, 768
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 2), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 2), align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 1), align 4
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @omap2_sram_ddr_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 3), i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 3), align 4
  %65 = and i32 %64, 65280
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 3), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 2), align 4
  %67 = and i32 %66, 15
  %68 = or i32 %67, 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 3), align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 3), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 3), align 4
  %72 = or i32 %71, 770
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_timings, i32 0, i32 3), align 4
  br label %73

73:                                               ; preds = %57, %19
  ret void
}

declare dso_local i32 @sdrc_read_reg(i32) #1

declare dso_local i64 @cpu_is_omap2422(...) #1

declare dso_local i32 @omap2_sram_ddr_init(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
