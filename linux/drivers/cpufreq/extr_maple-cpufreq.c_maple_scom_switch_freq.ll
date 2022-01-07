; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_maple-cpufreq.c_maple_scom_switch_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_maple-cpufreq.c_maple_scom_switch_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SCOM_PCR = common dso_local global i32 0, align 4
@PCR_HILO_SELECT = common dso_local global i64 0, align 8
@maple_pmode_data = common dso_local global i64* null, align 8
@SCOM_PSR = common dso_local global i32 0, align 4
@PSR_CMD_RECEIVED = common dso_local global i64 0, align 8
@PSR_CUR_SPEED_SHIFT = common dso_local global i64 0, align 8
@PCR_SPEED_SHIFT = common dso_local global i64 0, align 8
@PSR_CMD_COMPLETED = common dso_local global i64 0, align 8
@maple_pmode_cur = common dso_local global i32 0, align 4
@maple_cpu_freqs = common dso_local global %struct.TYPE_2__* null, align 8
@ppc_proc_freq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @maple_scom_switch_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maple_scom_switch_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i32, i32* @SCOM_PCR, align 4
  %9 = call i32 @scom970_write(i32 %8, i64 0)
  %10 = load i32, i32* @SCOM_PCR, align 4
  %11 = load i64, i64* @PCR_HILO_SELECT, align 8
  %12 = call i32 @scom970_write(i32 %10, i64 %11)
  %13 = load i32, i32* @SCOM_PCR, align 4
  %14 = load i64, i64* @PCR_HILO_SELECT, align 8
  %15 = load i64*, i64** @maple_pmode_data, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = or i64 %14, %19
  %21 = call i32 @scom970_write(i32 %13, i64 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %55, %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load i32, i32* @SCOM_PSR, align 4
  %27 = call i64 @scom970_read(i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @PSR_CMD_RECEIVED, align 8
  %30 = and i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @PSR_CUR_SPEED_SHIFT, align 8
  %35 = lshr i64 %33, %34
  %36 = load i64*, i64** @maple_pmode_data, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCR_SPEED_SHIFT, align 8
  %42 = lshr i64 %40, %41
  %43 = xor i64 %35, %42
  %44 = and i64 %43, 3
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %58

47:                                               ; preds = %32, %25
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @PSR_CMD_COMPLETED, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %58

53:                                               ; preds = %47
  %54 = call i32 @udelay(i32 100)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %22

58:                                               ; preds = %52, %46, %22
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  %61 = load i32, i32* %2, align 4
  store i32 %61, i32* @maple_pmode_cur, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @maple_cpu_freqs, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = mul i64 %67, 1000
  store i64 %68, i64* @ppc_proc_freq, align 8
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @scom970_write(i32, i64) #1

declare dso_local i64 @scom970_read(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
