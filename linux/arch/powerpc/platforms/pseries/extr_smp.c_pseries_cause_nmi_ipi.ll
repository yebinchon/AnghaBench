; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_smp.c_pseries_cause_nmi_ipi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_smp.c_pseries_cause_nmi_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NMI_IPI_ALL_OTHERS = common dso_local global i32 0, align 4
@H_SIGNAL_SYS_RESET_ALL_OTHERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"incorrect cpu parameter %d\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pseries_cause_nmi_ipi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_cause_nmi_ipi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NMI_IPI_ALL_OTHERS, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @H_SIGNAL_SYS_RESET_ALL_OTHERS, align 4
  store i32 %9, i32* %4, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %2, align 4
  br label %26

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @get_hard_smp_processor_id(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @plpar_signal_sys_reset(i32 %20)
  %22 = load i64, i64* @H_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i64 @plpar_signal_sys_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
