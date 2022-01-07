; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_check_mpx_erratum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_check_mpx_erratum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }

@forcempx = common dso_local global i64 0, align 8
@X86_FEATURE_MPX = common dso_local global i32 0, align 4
@X86_FEATURE_SMEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"x86/mpx: Disabling MPX since SMEP not present\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_mpx_erratum(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %3 = load i64, i64* @forcempx, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %20

6:                                                ; preds = %1
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = load i32, i32* @X86_FEATURE_MPX, align 4
  %9 = call i64 @cpu_has(%struct.cpuinfo_x86* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %13 = load i32, i32* @X86_FEATURE_SMEP, align 4
  %14 = call i64 @cpu_has(%struct.cpuinfo_x86* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @X86_FEATURE_MPX, align 4
  %18 = call i32 @setup_clear_cpu_cap(i32 %17)
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %5, %16, %11, %6
  ret void
}

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @setup_clear_cpu_cap(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
