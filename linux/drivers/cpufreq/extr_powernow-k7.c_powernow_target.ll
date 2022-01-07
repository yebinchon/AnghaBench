; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_powernow_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k7.c_powernow_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_freqs = type { i32, i32 }
%union.msr_fidvidstatus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@powernow_table = common dso_local global %struct.TYPE_4__* null, align 8
@MSR_K7_FID_VID_STATUS = common dso_local global i32 0, align 4
@fsb = common dso_local global i32 0, align 4
@fid_codes = common dso_local global i32* null, align 8
@have_a0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @powernow_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernow_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpufreq_freqs, align 4
  %8 = alloca %union.msr_fidvidstatus, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernow_table, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernow_table, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 65280
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @MSR_K7_FID_VID_STATUS, align 4
  %26 = bitcast %union.msr_fidvidstatus* %8 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rdmsrl(i32 %25, i32 %27)
  %29 = bitcast %union.msr_fidvidstatus* %8 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @fsb, align 4
  %33 = load i32*, i32** @fid_codes, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %32, %37
  %39 = sdiv i32 %38, 10
  %40 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernow_table, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @have_a0, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %2
  %51 = call i32 (...) @local_irq_disable()
  br label %52

52:                                               ; preds = %50, %2
  %53 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @change_FID(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @change_VID(i32 %61)
  br label %68

63:                                               ; preds = %52
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @change_VID(i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @change_FID(i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @have_a0, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (...) @local_irq_enable()
  br label %73

73:                                               ; preds = %71, %68
  ret i32 0
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @change_FID(i32) #1

declare dso_local i32 @change_VID(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
