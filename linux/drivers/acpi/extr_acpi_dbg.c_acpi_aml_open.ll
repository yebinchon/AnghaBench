; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.file = type { i32 }
%struct.inode = type { i32 }

@acpi_aml_io = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ACPI_AML_CLOSED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@acpi_aml_active_reader = common dso_local global %struct.file* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Opening debugger reader.\0A\00", align 1
@ACPI_AML_OPENED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Opening debugger interface.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Initializing debugger thread.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to initialize debugger.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Debugger thread initialized.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Debugger interface opened.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @acpi_aml_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_aml_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 1))
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 0), align 8
  %9 = load i32, i32* @ACPI_AML_CLOSED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @O_ACCMODE, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.file*, %struct.file** @acpi_aml_active_reader, align 8
  %25 = icmp ne %struct.file* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %23
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %31, %struct.file** @acpi_aml_active_reader, align 8
  br label %32

32:                                               ; preds = %29
  br label %42

33:                                               ; preds = %15
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 0), align 8
  %35 = load i32, i32* @ACPI_AML_OPENED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %68

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.file*, %struct.file** @acpi_aml_active_reader, align 8
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = icmp eq %struct.file* %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 1))
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 (...) @acpi_initialize_debugger()
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @ACPI_FAILURE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %79

58:                                               ; preds = %46
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 1))
  %61 = load i32, i32* @ACPI_AML_OPENED, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 0), align 8
  %63 = or i32 %62, %61
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 4, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 4, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 3, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 3, i32 1), align 8
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58, %42
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 2), align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 2), align 8
  br label %68

68:                                               ; preds = %65, %38, %26, %12
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.file*, %struct.file** @acpi_aml_active_reader, align 8
  %73 = load %struct.file*, %struct.file** %4, align 8
  %74 = icmp eq %struct.file* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store %struct.file* null, %struct.file** @acpi_aml_active_reader, align 8
  br label %76

76:                                               ; preds = %75, %71
  br label %77

77:                                               ; preds = %76, %68
  %78 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_aml_io, i32 0, i32 1))
  br label %79

79:                                               ; preds = %77, %54
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acpi_initialize_debugger(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
