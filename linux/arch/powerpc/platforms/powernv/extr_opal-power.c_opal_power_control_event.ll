; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-power.c_opal_power_control_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-power.c_opal_power_control_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.opal_msg = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"EPOW msg received. Powering off system\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"DPO msg received. Powering off system\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Reboot requested\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Poweroff requested\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unknown power-control type %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Unknown OPAL message type %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @opal_power_control_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_power_control_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* %5, align 8
  switch i64 %8, label %38 [
    i64 131, label %9
    i64 132, label %16
    i64 130, label %19
  ]

9:                                                ; preds = %3
  %10 = call i32 (...) @detect_epow()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @orderly_poweroff(i32 1)
  br label %15

15:                                               ; preds = %12, %9
  br label %41

16:                                               ; preds = %3
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @orderly_poweroff(i32 1)
  br label %41

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.opal_msg*
  %22 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @be64_to_cpu(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  switch i64 %27, label %34 [
    i64 128, label %28
    i64 129, label %31
  ]

28:                                               ; preds = %19
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 (...) @orderly_reboot()
  br label %37

31:                                               ; preds = %19
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @orderly_poweroff(i32 1)
  br label %37

34:                                               ; preds = %19
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %34, %31, %28
  br label %41

38:                                               ; preds = %3
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %38, %37, %16, %15
  ret i32 0
}

declare dso_local i32 @detect_epow(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @orderly_poweroff(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @orderly_reboot(...) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
