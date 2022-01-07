; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_power.c_acpi_extract_power_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_power.c_acpi_extract_power_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.list_head = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_extract_power_resources(%union.acpi_object* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca i32, align 4
  store %union.acpi_object* %0, %union.acpi_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %66, %3
  %13 = load i32, i32* %7, align 4
  %14 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %15 = bitcast %union.acpi_object* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %12
  %20 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %union.acpi_object*, %union.acpi_object** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %23, i64 %25
  store %union.acpi_object* %26, %union.acpi_object** %9, align 8
  %27 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %28 = bitcast %union.acpi_object* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %69

35:                                               ; preds = %19
  %36 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %69

45:                                               ; preds = %35
  %46 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @acpi_power_resource_is_dup(%union.acpi_object* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %66

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @acpi_add_power_resource(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %69

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.list_head*, %struct.list_head** %6, align 8
  %61 = call i32 @acpi_power_resources_list_add(i32 %59, %struct.list_head* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %69

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %12

69:                                               ; preds = %64, %57, %42, %32, %12
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.list_head*, %struct.list_head** %6, align 8
  %74 = call i32 @acpi_power_resources_list_free(%struct.list_head* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i64 @acpi_power_resource_is_dup(%union.acpi_object*, i32, i32) #1

declare dso_local i32 @acpi_add_power_resource(i32) #1

declare dso_local i32 @acpi_power_resources_list_add(i32, %struct.list_head*) #1

declare dso_local i32 @acpi_power_resources_list_free(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
