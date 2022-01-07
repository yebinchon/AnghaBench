; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac64-cpufreq.c_g5_pfunc_switch_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac64-cpufreq.c_g5_pfunc_switch_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.pmf_args = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@.str = private unnamed_addr constant [26 x i8] c"g5_pfunc_switch_freq(%d)\0A\00", align 1
@g5_pmode_cur = common dso_local global i32 0, align 4
@CPUFREQ_HIGH = common dso_local global i32 0, align 4
@pfunc_cpu_setfreq_high = common dso_local global i32 0, align 4
@pfunc_cpu_setfreq_low = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"pfunc switch error %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@pfunc_slewing_done = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Timeout in clock slewing !\0A\00", align 1
@g5_cpu_freqs = common dso_local global %struct.TYPE_4__* null, align 8
@ppc_proc_freq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @g5_pfunc_switch_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g5_pfunc_switch_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmf_args, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @g5_pmode_cur, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @g5_switch_volt(i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @CPUFREQ_HIGH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @pfunc_cpu_setfreq_high, align 4
  %21 = call i32 @pmf_call_one(i32 %20, %struct.pmf_args* null)
  store i32 %21, i32* %6, align 4
  br label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @pfunc_cpu_setfreq_low, align 4
  %24 = call i32 @pmf_call_one(i32 %23, %struct.pmf_args* null)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @jiffies, align 4
  %33 = load i32, i32* @HZ, align 4
  %34 = sdiv i32 %33, 10
  %35 = add nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %54, %31
  %38 = load i32, i32* @jiffies, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @time_after(i32 %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.pmf_args, %struct.pmf_args* %3, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.pmf_args, %struct.pmf_args* %3, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64* %4, i64** %48, align 8
  %49 = load i32, i32* @pfunc_slewing_done, align 4
  %50 = call i32 @pmf_call_one(i32 %49, %struct.pmf_args* %3)
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %56

54:                                               ; preds = %43
  %55 = call i32 @usleep_range(i32 500, i32 500)
  br label %37

56:                                               ; preds = %53, %37
  %57 = load i64, i64* %4, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @g5_pmode_cur, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @g5_switch_volt(i32 %66)
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %2, align 4
  store i32 %69, i32* @g5_pmode_cur, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g5_cpu_freqs, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = mul i64 %75, 1000
  store i64 %76, i64* @ppc_proc_freq, align 8
  ret i32 0
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @g5_switch_volt(i32) #1

declare dso_local i32 @pmf_call_one(i32, %struct.pmf_args*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
