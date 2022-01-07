; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utosi.c_acpi_ut_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utosi.c_acpi_ut_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_interface_info = type { i32, %struct.acpi_interface_info*, %struct.acpi_interface_info* }

@acpi_gbl_supported_interfaces = common dso_local global %struct.acpi_interface_info* null, align 8
@ACPI_OSI_DYNAMIC = common dso_local global i32 0, align 4
@ACPI_OSI_INVALID = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_remove_interface(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_interface_info*, align 8
  %5 = alloca %struct.acpi_interface_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8
  store %struct.acpi_interface_info* %6, %struct.acpi_interface_info** %5, align 8
  store %struct.acpi_interface_info* %6, %struct.acpi_interface_info** %4, align 8
  br label %7

7:                                                ; preds = %62, %1
  %8 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %9 = icmp ne %struct.acpi_interface_info* %8, null
  br i1 %9, label %10, label %67

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %12, i32 0, i32 2
  %14 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %13, align 8
  %15 = call i32 @strcmp(i32 %11, %struct.acpi_interface_info* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %10
  %18 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ACPI_OSI_DYNAMIC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %4, align 8
  %26 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %27 = icmp eq %struct.acpi_interface_info* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %29, i32 0, i32 1
  %31 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %30, align 8
  store %struct.acpi_interface_info* %31, %struct.acpi_interface_info** @acpi_gbl_supported_interfaces, align 8
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %33, i32 0, i32 1
  %35 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %34, align 8
  %36 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %36, i32 0, i32 1
  store %struct.acpi_interface_info* %35, %struct.acpi_interface_info** %37, align 8
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %40 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %39, i32 0, i32 2
  %41 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %40, align 8
  %42 = call i32 @ACPI_FREE(%struct.acpi_interface_info* %41)
  %43 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %44 = call i32 @ACPI_FREE(%struct.acpi_interface_info* %43)
  br label %60

45:                                               ; preds = %17
  %46 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ACPI_OSI_INVALID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %53, i32* %2, align 4
  br label %69

54:                                               ; preds = %45
  %55 = load i32, i32* @ACPI_OSI_INVALID, align 4
  %56 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %38
  %61 = load i32, i32* @AE_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %10
  %63 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  store %struct.acpi_interface_info* %63, %struct.acpi_interface_info** %4, align 8
  %64 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %5, align 8
  %65 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %64, i32 0, i32 1
  %66 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %65, align 8
  store %struct.acpi_interface_info* %66, %struct.acpi_interface_info** %5, align 8
  br label %7

67:                                               ; preds = %7
  %68 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %60, %52
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @strcmp(i32, %struct.acpi_interface_info*) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
