; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_allocate_logical_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_allocate_logical_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_logical_cpuids = common dso_local global i32 0, align 4
@cpuid_to_apicid = common dso_local global i32* null, align 8
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"APIC: NR_CPUS/possible_cpus limit of %u reached. Processor %d/0x%x and the rest are ignored.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @allocate_logical_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_logical_cpuid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @nr_logical_cpuids, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i32*, i32** @cpuid_to_apicid, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load i32, i32* @nr_logical_cpuids, align 4
  %25 = load i32, i32* @nr_cpu_ids, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @nr_cpu_ids, align 4
  %29 = load i32, i32* @nr_logical_cpuids, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = load i32*, i32** @cpuid_to_apicid, align 8
  %37 = load i32, i32* @nr_logical_cpuids, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @nr_logical_cpuids, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @nr_logical_cpuids, align 4
  store i32 %40, i32* %2, align 4
  br label %42

42:                                               ; preds = %34, %27, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
