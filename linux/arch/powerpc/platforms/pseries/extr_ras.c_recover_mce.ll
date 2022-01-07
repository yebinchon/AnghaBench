; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_recover_mce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_recover_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32 }
%struct.machine_check_event = type { i64, i64, i64 }

@MSR_RI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Machine check interrupt unrecoverable: MSR(RI=0)\0A\00", align 1
@MCE_DISPOSITION_RECOVERED = common dso_local global i64 0, align 8
@MCE_SEV_FATAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Machine check interrupt is fatal\0A\00", align 1
@SIGBUS = common dso_local global i32 0, align 4
@BUS_MCEERR_AR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Machine check\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.machine_check_event*)* @recover_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_mce(%struct.pt_regs* %0, %struct.machine_check_event* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.machine_check_event*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.machine_check_event* %1, %struct.machine_check_event** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MSR_RI, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %16 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MCE_DISPOSITION_RECOVERED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %23 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MCE_SEV_FATAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %21
  br label %30

30:                                               ; preds = %29, %20
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %31
  %35 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %36 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %41 = call i64 @user_mode(%struct.pt_regs* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @SIGBUS, align 4
  %45 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %46 = load i32, i32* @BUS_MCEERR_AR, align 4
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @_exception(i32 %44, %struct.pt_regs* %45, i32 %46, i32 %49)
  store i32 1, i32* %5, align 4
  br label %60

51:                                               ; preds = %39
  %52 = call i64 (...) @die_will_crash()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %59

55:                                               ; preds = %51
  %56 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %57 = load i32, i32* @SIGBUS, align 4
  %58 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.pt_regs* %56, i32 %57)
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %54
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %34, %31
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @_exception(i32, %struct.pt_regs*, i32, i32) #1

declare dso_local i64 @die_will_crash(...) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
