; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_apei.c_apei_mce_report_mem_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_apei.c_apei_mce_report_mem_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cper_sec_mem_err = type { i32, i32 }
%struct.mce = type { i32, i32, i32, i32 }

@CPER_MEM_VALID_PA = common dso_local global i32 0, align 4
@MCI_STATUS_VAL = common dso_local global i32 0, align 4
@MCI_STATUS_EN = common dso_local global i32 0, align 4
@MCI_STATUS_ADDRV = common dso_local global i32 0, align 4
@GHES_SEV_RECOVERABLE = common dso_local global i32 0, align 4
@MCI_STATUS_UC = common dso_local global i32 0, align 4
@GHES_SEV_PANIC = common dso_local global i32 0, align 4
@MCI_STATUS_PCC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apei_mce_report_mem_error(i32 %0, %struct.cper_sec_mem_err* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cper_sec_mem_err*, align 8
  %5 = alloca %struct.mce, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cper_sec_mem_err* %1, %struct.cper_sec_mem_err** %4, align 8
  %6 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %7 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CPER_MEM_VALID_PA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %48

13:                                               ; preds = %2
  %14 = call i32 @mce_setup(%struct.mce* %5)
  %15 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* @MCI_STATUS_VAL, align 4
  %17 = load i32, i32* @MCI_STATUS_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %20 = or i32 %18, %19
  %21 = or i32 %20, 159
  %22 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @GHES_SEV_RECOVERABLE, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load i32, i32* @MCI_STATUS_UC, align 4
  %28 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %13
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @GHES_SEV_PANIC, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @MCI_STATUS_PCC, align 4
  %37 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = call i32 (...) @rdtsc()
  %41 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %31
  %43 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %44 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = call i32 @mce_log(%struct.mce* %5)
  br label %48

48:                                               ; preds = %42, %12
  ret void
}

declare dso_local i32 @mce_setup(%struct.mce*) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @mce_log(%struct.mce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
