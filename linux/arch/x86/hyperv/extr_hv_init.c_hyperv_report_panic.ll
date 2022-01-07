; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hyperv_report_panic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hyperv_report_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64 }

@hyperv_report_panic.panic_reported = internal global i32 0, align 4
@HV_X64_MSR_GUEST_OS_ID = common dso_local global i32 0, align 4
@HV_X64_MSR_CRASH_P0 = common dso_local global i32 0, align 4
@HV_X64_MSR_CRASH_P1 = common dso_local global i32 0, align 4
@HV_X64_MSR_CRASH_P2 = common dso_local global i32 0, align 4
@HV_X64_MSR_CRASH_P3 = common dso_local global i32 0, align 4
@HV_X64_MSR_CRASH_P4 = common dso_local global i32 0, align 4
@HV_X64_MSR_CRASH_CTL = common dso_local global i32 0, align 4
@HV_CRASH_CTL_CRASH_NOTIFY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hyperv_report_panic(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @hyperv_report_panic.panic_reported, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %37

9:                                                ; preds = %2
  store i32 1, i32* @hyperv_report_panic.panic_reported, align 4
  %10 = load i32, i32* @HV_X64_MSR_GUEST_OS_ID, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @rdmsrl(i32 %10, i64 %11)
  %13 = load i32, i32* @HV_X64_MSR_CRASH_P0, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @wrmsrl(i32 %13, i64 %14)
  %16 = load i32, i32* @HV_X64_MSR_CRASH_P1, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @wrmsrl(i32 %16, i64 %17)
  %19 = load i32, i32* @HV_X64_MSR_CRASH_P2, align 4
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @wrmsrl(i32 %19, i64 %22)
  %24 = load i32, i32* @HV_X64_MSR_CRASH_P3, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @wrmsrl(i32 %24, i64 %27)
  %29 = load i32, i32* @HV_X64_MSR_CRASH_P4, align 4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @wrmsrl(i32 %29, i64 %32)
  %34 = load i32, i32* @HV_X64_MSR_CRASH_CTL, align 4
  %35 = load i64, i64* @HV_CRASH_CTL_CRASH_NOTIFY, align 8
  %36 = call i32 @wrmsrl(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
