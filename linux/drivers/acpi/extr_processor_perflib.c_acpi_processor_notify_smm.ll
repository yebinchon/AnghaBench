; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_notify_smm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_notify_smm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@acpi_processor_notify_smm.is_done = internal global i32 0, align 4
@acpi_processor_cpufreq_init = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No SMI port or pstate_control\0A\00", align 1
@acpi_processor_ppc_in_use = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_notify_smm(%struct.module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.module*, align 8
  %4 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %3, align 8
  %5 = load i32, i32* @acpi_processor_cpufreq_init, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.module*, %struct.module** %3, align 8
  %12 = call i32 @try_module_get(%struct.module* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %56

17:                                               ; preds = %10
  %18 = load i32, i32* @acpi_processor_notify_smm.is_done, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.module*, %struct.module** %3, align 8
  %22 = call i32 @module_put(%struct.module* %21)
  store i32 0, i32* %2, align 4
  br label %56

23:                                               ; preds = %17
  %24 = load i32, i32* @acpi_processor_notify_smm.is_done, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.module*, %struct.module** %3, align 8
  %28 = call i32 @module_put(%struct.module* %27)
  %29 = load i32, i32* @acpi_processor_notify_smm.is_done, align 4
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* @acpi_processor_notify_smm.is_done, align 4
  %34 = call i32 (...) @acpi_processor_pstate_control()
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ACPI_DB_INFO, align 4
  %39 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([31 x i8]* @.str to i32))
  %40 = load %struct.module*, %struct.module** %3, align 8
  %41 = call i32 @module_put(%struct.module* %40)
  store i32 0, i32* %2, align 4
  br label %56

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.module*, %struct.module** %3, align 8
  %47 = call i32 @module_put(%struct.module* %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %56

49:                                               ; preds = %42
  store i32 1, i32* @acpi_processor_notify_smm.is_done, align 4
  %50 = load i32, i32* @acpi_processor_ppc_in_use, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.module*, %struct.module** %3, align 8
  %54 = call i32 @module_put(%struct.module* %53)
  br label %55

55:                                               ; preds = %52, %49
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %45, %37, %26, %20, %14, %7
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @acpi_processor_pstate_control(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
