; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.file = type { i32 }
%struct.inode = type { i32 }

@acpi_aml_io = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@acpi_aml_active_reader = common dso_local global %struct.file* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Closing debugger reader.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Closing debugger interface.\0A\00", align 1
@ACPI_AML_CLOSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Terminating debugger thread.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Debugger thread terminated.\0A\00", align 1
@ACPI_AML_OPENED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Debugger interface closed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @acpi_aml_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_aml_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 1))
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 0), align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 0), align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** @acpi_aml_active_reader, align 8
  %10 = icmp eq %struct.file* %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.file* null, %struct.file** @acpi_aml_active_reader, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @ACPI_AML_CLOSED, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 2), align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 2), align 4
  %17 = call i32 @wake_up_interruptible(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 3))
  %18 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 1))
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 3), align 8
  %20 = call i32 (...) @acpi_aml_busy()
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @wait_event(i32 %19, i32 %23)
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (...) @acpi_terminate_debugger()
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 3), align 8
  %28 = call i32 (...) @acpi_aml_used()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @wait_event(i32 %27, i32 %31)
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 1))
  %35 = load i32, i32* @ACPI_AML_OPENED, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 2), align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 2), align 4
  br label %39

39:                                               ; preds = %11, %2
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 0), align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* @ACPI_AML_CLOSED, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 2), align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 2), align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 1))
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @acpi_aml_busy(...) #1

declare dso_local i32 @acpi_terminate_debugger(...) #1

declare dso_local i32 @acpi_aml_used(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
