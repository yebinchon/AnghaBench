; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_match_simple_repair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_match_simple_repair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_simple_repair_info = type { i64, i64, i32, i64 }
%struct.acpi_namespace_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@acpi_object_repair_info = common dso_local global %struct.acpi_simple_repair_info* null, align 8
@ACPI_ALL_PACKAGE_ELEMENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_simple_repair_info* (%struct.acpi_namespace_node*, i64, i64)* @acpi_ns_match_simple_repair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_simple_repair_info* @acpi_ns_match_simple_repair(%struct.acpi_namespace_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.acpi_simple_repair_info*, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.acpi_simple_repair_info*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** @acpi_object_repair_info, align 8
  store %struct.acpi_simple_repair_info* %9, %struct.acpi_simple_repair_info** %8, align 8
  br label %10

10:                                               ; preds = %47, %3
  %11 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %8, align 8
  %12 = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %10
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %8, align 8
  %21 = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ACPI_COMPARE_NAMESEG(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %15
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %8, align 8
  %28 = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %26, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %8, align 8
  %34 = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ACPI_ALL_PACKAGE_ELEMENTS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %8, align 8
  %41 = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %32
  %45 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %8, align 8
  store %struct.acpi_simple_repair_info* %45, %struct.acpi_simple_repair_info** %4, align 8
  br label %51

46:                                               ; preds = %38, %25
  store %struct.acpi_simple_repair_info* null, %struct.acpi_simple_repair_info** %4, align 8
  br label %51

47:                                               ; preds = %15
  %48 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %8, align 8
  %49 = getelementptr inbounds %struct.acpi_simple_repair_info, %struct.acpi_simple_repair_info* %48, i32 1
  store %struct.acpi_simple_repair_info* %49, %struct.acpi_simple_repair_info** %8, align 8
  br label %10

50:                                               ; preds = %10
  store %struct.acpi_simple_repair_info* null, %struct.acpi_simple_repair_info** %4, align 8
  br label %51

51:                                               ; preds = %50, %46, %44
  %52 = load %struct.acpi_simple_repair_info*, %struct.acpi_simple_repair_info** %4, align 8
  ret %struct.acpi_simple_repair_info* %52
}

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
