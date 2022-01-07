; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pcc-cpufreq.c_pcc_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pcc-cpufreq.c_pcc_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cpufreq_policy = type { i32, i32 }
%struct.pcc_cpu = type { i64 }
%struct.cpufreq_freqs = type { i32, i32 }

@pcc_cpu_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"target: CPU %d should go to target freq: %d (virtual) input_offset is 0x%p\0A\00", align 1
@pcch_virt_addr = common dso_local global i64 0, align 8
@pcc_lock = common dso_local global i32 0, align 4
@pcch_hdr = common dso_local global %struct.TYPE_2__* null, align 8
@CMD_SET_FREQ = common dso_local global i32 0, align 4
@BUF_SZ = common dso_local global i32 0, align 4
@CMD_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"target: FAILED for cpu %d, with status: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"target: was SUCCESSFUL for cpu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @pcc_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcc_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcc_cpu*, align 8
  %9 = alloca %struct.cpufreq_freqs, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @pcc_cpu_info, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call %struct.pcc_cpu* @per_cpu_ptr(i32 %16, i32 %17)
  store %struct.pcc_cpu* %18, %struct.pcc_cpu** %8, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* @pcch_virt_addr, align 8
  %22 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %23 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i64 %25)
  %27 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %28 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %34 = call i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy* %33, %struct.cpufreq_freqs* %9)
  %35 = call i32 @spin_lock(i32* @pcc_lock)
  %36 = load i32, i32* %6, align 4
  %37 = mul i32 %36, 100
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcch_hdr, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = call i32 @ioread32(i32* %39)
  %41 = mul nsw i32 %40, 1000
  %42 = udiv i32 %37, %41
  %43 = shl i32 %42, 8
  %44 = or i32 1, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i64, i64* @pcch_virt_addr, align 8
  %47 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %48 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @iowrite32(i32 %45, i64 %50)
  %52 = load i32, i32* @CMD_SET_FREQ, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcch_hdr, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @iowrite16(i32 %52, i32* %54)
  %56 = call i32 (...) @pcc_cmd()
  %57 = load i64, i64* @pcch_virt_addr, align 8
  %58 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %59 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i32, i32* @BUF_SZ, align 4
  %63 = call i32 @memset_io(i64 %61, i32 0, i32 %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcch_hdr, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @ioread16(i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcch_hdr, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @iowrite16(i32 0, i32* %68)
  %70 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @CMD_COMPLETE, align 4
  %73 = icmp ne i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy* %70, %struct.cpufreq_freqs* %9, i32 %74)
  %76 = call i32 @spin_unlock(i32* @pcc_lock)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @CMD_COMPLETE, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %3
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %89

86:                                               ; preds = %3
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.pcc_cpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @cpufreq_freq_transition_begin(%struct.cpufreq_policy*, %struct.cpufreq_freqs*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @iowrite16(i32, i32*) #1

declare dso_local i32 @pcc_cmd(...) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i32 @cpufreq_freq_transition_end(%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
