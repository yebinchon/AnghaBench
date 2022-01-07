; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_rtas_parse_epow_errlog.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_rtas_parse_epow_errlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_error_log = type { i32 }
%struct.pseries_errorlog = type { i64 }
%struct.epow_errorlog = type { i32, i32 }

@PSERIES_ELOG_SECT_ID_EPOW = common dso_local global i32 0, align 4
@num_epow_events = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Non critical power/cooling issue cleared\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Non-critical cooling issue detected. Check RTAS error log for details\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Non-critical power issue detected. Check RTAS error log for details\0A\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"Critical power/cooling issue detected. Check RTAS error log for details. Powering off.\0A\00", align 1
@.str.4 = private unnamed_addr constant [90 x i8] c"System about to lose power. Check RTAS error log  for details. Powering off immediately.\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Unknown power/cooling event (action code  = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtas_error_log*)* @rtas_parse_epow_errlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtas_parse_epow_errlog(%struct.rtas_error_log* %0) #0 {
  %2 = alloca %struct.rtas_error_log*, align 8
  %3 = alloca %struct.pseries_errorlog*, align 8
  %4 = alloca %struct.epow_errorlog*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.rtas_error_log* %0, %struct.rtas_error_log** %2, align 8
  %7 = load %struct.rtas_error_log*, %struct.rtas_error_log** %2, align 8
  %8 = load i32, i32* @PSERIES_ELOG_SECT_ID_EPOW, align 4
  %9 = call %struct.pseries_errorlog* @get_pseries_errorlog(%struct.rtas_error_log* %7, i32 %8)
  store %struct.pseries_errorlog* %9, %struct.pseries_errorlog** %3, align 8
  %10 = load %struct.pseries_errorlog*, %struct.pseries_errorlog** %3, align 8
  %11 = icmp eq %struct.pseries_errorlog* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %64

13:                                               ; preds = %1
  %14 = load %struct.pseries_errorlog*, %struct.pseries_errorlog** %3, align 8
  %15 = getelementptr inbounds %struct.pseries_errorlog, %struct.pseries_errorlog* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.epow_errorlog*
  store %struct.epow_errorlog* %17, %struct.epow_errorlog** %4, align 8
  %18 = load %struct.epow_errorlog*, %struct.epow_errorlog** %4, align 8
  %19 = getelementptr inbounds %struct.epow_errorlog, %struct.epow_errorlog* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load %struct.epow_errorlog*, %struct.epow_errorlog** %4, align 8
  %24 = getelementptr inbounds %struct.epow_errorlog, %struct.epow_errorlog* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %6, align 1
  %28 = load i8, i8* %5, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %54 [
    i32 132, label %30
    i32 129, label %38
    i32 128, label %40
    i32 130, label %42
    i32 131, label %47
    i32 134, label %50
    i32 133, label %50
  ]

30:                                               ; preds = %13
  %31 = load i64, i64* @num_epow_events, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @num_epow_events, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* @num_epow_events, align 8
  br label %37

37:                                               ; preds = %33, %30
  br label %57

38:                                               ; preds = %13
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %57

40:                                               ; preds = %13
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %57

42:                                               ; preds = %13
  %43 = load %struct.epow_errorlog*, %struct.epow_errorlog** %4, align 8
  %44 = getelementptr inbounds %struct.epow_errorlog, %struct.epow_errorlog* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @handle_system_shutdown(i32 %45)
  br label %57

47:                                               ; preds = %13
  %48 = call i32 @pr_emerg(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 @orderly_poweroff(i32 1)
  br label %57

50:                                               ; preds = %13, %13
  %51 = call i32 @pr_emerg(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0))
  %52 = call i32 (...) @emergency_sync()
  %53 = call i32 (...) @kernel_power_off()
  br label %57

54:                                               ; preds = %13
  %55 = load i8, i8* %5, align 1
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8 signext %55)
  br label %57

57:                                               ; preds = %54, %50, %47, %42, %40, %38, %37
  %58 = load i8, i8* %5, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 132
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* @num_epow_events, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* @num_epow_events, align 8
  br label %64

64:                                               ; preds = %12, %61, %57
  ret void
}

declare dso_local %struct.pseries_errorlog* @get_pseries_errorlog(%struct.rtas_error_log*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @handle_system_shutdown(i32) #1

declare dso_local i32 @pr_emerg(i8*) #1

declare dso_local i32 @orderly_poweroff(i32) #1

declare dso_local i32 @emergency_sync(...) #1

declare dso_local i32 @kernel_power_off(...) #1

declare dso_local i32 @pr_err(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
