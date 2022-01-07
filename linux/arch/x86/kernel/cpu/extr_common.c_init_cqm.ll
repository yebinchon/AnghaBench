; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_init_cqm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_init_cqm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }

@X86_FEATURE_CQM_LLC = common dso_local global i32 0, align 4
@X86_FEATURE_CQM_OCCUP_LLC = common dso_local global i32 0, align 4
@X86_FEATURE_CQM_MBM_TOTAL = common dso_local global i32 0, align 4
@X86_FEATURE_CQM_MBM_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_cqm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cqm(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = load i32, i32* @X86_FEATURE_CQM_LLC, align 4
  %9 = call i64 @cpu_has(%struct.cpuinfo_x86* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %13 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %14, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  br label %44

16:                                               ; preds = %1
  %17 = call i32 @cpuid_ebx(i32 15)
  %18 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %19 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %21 = load i32, i32* @X86_FEATURE_CQM_OCCUP_LLC, align 4
  %22 = call i64 @cpu_has(%struct.cpuinfo_x86* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %26 = load i32, i32* @X86_FEATURE_CQM_MBM_TOTAL, align 4
  %27 = call i64 @cpu_has(%struct.cpuinfo_x86* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %31 = load i32, i32* @X86_FEATURE_CQM_MBM_LOCAL, align 4
  %32 = call i64 @cpu_has(%struct.cpuinfo_x86* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29, %24, %16
  %35 = call i32 @cpuid_count(i32 15, i32 1, i8** %3, i8** %4, i8** %5, i8** %6)
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %39 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %43 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %11, %34, %29
  ret void
}

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @cpuid_ebx(i32) #1

declare dso_local i32 @cpuid_count(i32, i32, i8**, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
