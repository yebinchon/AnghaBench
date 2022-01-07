; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_pci_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_pci_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64 }

@ifccr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"lantiq,ar9\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"lantiq,vr9\00", align 1
@CLOCK_33M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @pci_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_enable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load i32, i32* @ifccr, align 4
  %5 = call i32 @ltq_cgu_r32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, -32505857
  store i32 %13, i32* %3, align 4
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CLOCK_33M, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, 14680064
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, 7340032
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %19
  br label %41

26:                                               ; preds = %8
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, -15728641
  store i32 %28, i32* %3, align 4
  %29 = load %struct.clk*, %struct.clk** %2, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CLOCK_33M, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, 8388608
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, 4194304
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @ifccr, align 4
  %44 = call i32 @ltq_cgu_w32(i32 %42, i32 %43)
  %45 = load %struct.clk*, %struct.clk** %2, align 8
  %46 = call i32 @pmu_enable(%struct.clk* %45)
  ret i32 0
}

declare dso_local i32 @ltq_cgu_r32(i32) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @ltq_cgu_w32(i32, i32) #1

declare dso_local i32 @pmu_enable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
