; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_check_deletions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_check_deletions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { %struct.device* }
%struct.device = type { i32 }
%struct.nfit_table_prev = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"new nfit deletes entries (unsupported)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_nfit_desc*, %struct.nfit_table_prev*)* @acpi_nfit_check_deletions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nfit_check_deletions(%struct.acpi_nfit_desc* %0, %struct.nfit_table_prev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_nfit_desc*, align 8
  %5 = alloca %struct.nfit_table_prev*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %4, align 8
  store %struct.nfit_table_prev* %1, %struct.nfit_table_prev** %5, align 8
  %7 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %5, align 8
  %11 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %10, i32 0, i32 5
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %5, align 8
  %16 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %15, i32 0, i32 4
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %5, align 8
  %21 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %20, i32 0, i32 3
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %5, align 8
  %26 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %25, i32 0, i32 2
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %5, align 8
  %31 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %30, i32 0, i32 1
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %5, align 8
  %36 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %35, i32 0, i32 0
  %37 = call i32 @list_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34, %29, %24, %19, %14, %2
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
