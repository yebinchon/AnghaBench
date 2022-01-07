; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_cpu_detect_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_cpu_detect_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpuinfo_x86*)* }
%struct.cpuinfo_x86 = type { i32 }

@this_cpu = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Last level iTLB entries: 4KB %d, 2MB %d, 4MB %d\0A\00", align 1
@tlb_lli_4k = common dso_local global i32* null, align 8
@ENTRIES = common dso_local global i64 0, align 8
@tlb_lli_2m = common dso_local global i32* null, align 8
@tlb_lli_4m = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Last level dTLB entries: 4KB %d, 2MB %d, 4MB %d, 1GB %d\0A\00", align 1
@tlb_lld_4k = common dso_local global i32* null, align 8
@tlb_lld_2m = common dso_local global i32* null, align 8
@tlb_lld_4m = common dso_local global i32* null, align 8
@tlb_lld_1g = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @cpu_detect_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_detect_tlb(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_cpu, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32 (%struct.cpuinfo_x86*)*, i32 (%struct.cpuinfo_x86*)** %4, align 8
  %6 = icmp ne i32 (%struct.cpuinfo_x86*)* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_cpu, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.cpuinfo_x86*)*, i32 (%struct.cpuinfo_x86*)** %9, align 8
  %11 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %12 = call i32 %10(%struct.cpuinfo_x86* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i32*, i32** @tlb_lli_4k, align 8
  %15 = load i64, i64* @ENTRIES, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @tlb_lli_2m, align 8
  %19 = load i64, i64* @ENTRIES, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @tlb_lli_4m, align 8
  %23 = load i64, i64* @ENTRIES, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25)
  %27 = load i32*, i32** @tlb_lld_4k, align 8
  %28 = load i64, i64* @ENTRIES, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @tlb_lld_2m, align 8
  %32 = load i64, i64* @ENTRIES, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @tlb_lld_4m, align 8
  %36 = load i64, i64* @ENTRIES, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @tlb_lld_1g, align 8
  %40 = load i64, i64* @ENTRIES, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %34, i32 %38, i32 %42)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
