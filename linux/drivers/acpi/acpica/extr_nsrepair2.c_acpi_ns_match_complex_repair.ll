; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_match_complex_repair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_match_complex_repair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_repair_info = type { i32, i64 }
%struct.acpi_namespace_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@acpi_ns_repairable_names = common dso_local global %struct.acpi_repair_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_repair_info* (%struct.acpi_namespace_node*)* @acpi_ns_match_complex_repair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_repair_info* @acpi_ns_match_complex_repair(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %struct.acpi_repair_info*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca %struct.acpi_repair_info*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  %5 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** @acpi_ns_repairable_names, align 8
  store %struct.acpi_repair_info* %5, %struct.acpi_repair_info** %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_repair_info, %struct.acpi_repair_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_repair_info, %struct.acpi_repair_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ACPI_COMPARE_NAMESEG(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %4, align 8
  store %struct.acpi_repair_info* %22, %struct.acpi_repair_info** %2, align 8
  br label %27

23:                                               ; preds = %11
  %24 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_repair_info, %struct.acpi_repair_info* %24, i32 1
  store %struct.acpi_repair_info* %25, %struct.acpi_repair_info** %4, align 8
  br label %6

26:                                               ; preds = %6
  store %struct.acpi_repair_info* null, %struct.acpi_repair_info** %2, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %2, align 8
  ret %struct.acpi_repair_info* %28
}

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
