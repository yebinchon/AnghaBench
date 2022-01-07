; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_pSeries_machine_check_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_pSeries_machine_check_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.machine_check_event = type { i64 }

@MCE_EVENT_RELEASE = common dso_local global i32 0, align 4
@MCE_V1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Machine Check Exception, Unknown event version %d !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pSeries_machine_check_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.machine_check_event, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %5 = load i32, i32* @MCE_EVENT_RELEASE, align 4
  %6 = call i32 @get_mce_event(%struct.machine_check_event* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MCE_V1, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32 0, i32* %2, align 4
  br label %27

18:                                               ; preds = %9
  %19 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %20 = call i32 @user_mode(%struct.pt_regs* %19)
  %21 = call i32 @machine_check_print_event_info(%struct.machine_check_event* %4, i32 %20, i32 0)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %23 = call i64 @recover_mce(%struct.pt_regs* %22, %struct.machine_check_event* %4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %14, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @get_mce_event(%struct.machine_check_event*, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @machine_check_print_event_info(%struct.machine_check_event*, i32, i32) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @recover_mce(%struct.pt_regs*, %struct.machine_check_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
