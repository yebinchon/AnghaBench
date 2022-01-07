; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_amd_filter_mce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_amd_filter_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }
%struct.mce = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 4
@SMCA_IF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_filter_mce(%struct.mce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuinfo_x86*, align 8
  %6 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %3, align 8
  %7 = load %struct.mce*, %struct.mce** %3, align 8
  %8 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @smca_get_bank_type(i32 %9)
  store i32 %10, i32* %4, align 4
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %5, align 8
  %11 = load %struct.mce*, %struct.mce** %3, align 8
  %12 = getelementptr inbounds %struct.mce, %struct.mce* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 63
  store i32 %15, i32* %6, align 4
  %16 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 23
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %22 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 16
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 47
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SMCA_IF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %39

38:                                               ; preds = %34, %30, %25, %20, %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @smca_get_bank_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
