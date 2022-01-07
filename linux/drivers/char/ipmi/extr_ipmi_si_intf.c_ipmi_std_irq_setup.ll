; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_ipmi_std_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_ipmi_std_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_io = type { i64, i32, i32, i32 }

@ipmi_si_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@SI_DEVICE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s unable to claim interrupt %d, running polled\0A\00", align 1
@std_irq_cleanup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Using irq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_std_irq_setup(%struct.si_sm_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si_sm_io*, align 8
  %4 = alloca i32, align 4
  store %struct.si_sm_io* %0, %struct.si_sm_io** %3, align 8
  %5 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %6 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

10:                                               ; preds = %1
  %11 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %12 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @ipmi_si_irq_handler, align 4
  %15 = load i32, i32* @IRQF_SHARED, align 4
  %16 = load i32, i32* @SI_DEVICE_NAME, align 4
  %17 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %18 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @request_irq(i64 %13, i32 %14, i32 %15, i32 %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %10
  %24 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %25 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SI_DEVICE_NAME, align 4
  %28 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %29 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %30)
  %32 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %33 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %47

34:                                               ; preds = %10
  %35 = load i32, i32* @std_irq_cleanup, align 4
  %36 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %37 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %39 = call i32 @ipmi_irq_finish_setup(%struct.si_sm_io* %38)
  %40 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %41 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %44 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dev_info(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %34, %23
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @request_irq(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i64) #1

declare dso_local i32 @ipmi_irq_finish_setup(%struct.si_sm_io*) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
