; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_low_get_gpe_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_low_get_gpe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { i32 }
%struct.acpi_gpe_block_info = type { i64, i64, %struct.acpi_gpe_event_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_gpe_event_info* @acpi_ev_low_get_gpe_info(i64 %0, %struct.acpi_gpe_block_info* %1) #0 {
  %3 = alloca %struct.acpi_gpe_event_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_gpe_block_info*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.acpi_gpe_block_info* %1, %struct.acpi_gpe_block_info** %5, align 8
  %7 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %8 = icmp ne %struct.acpi_gpe_block_info* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %12 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %3, align 8
  br label %34

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %3, align 8
  br label %34

28:                                               ; preds = %16
  %29 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %29, i32 0, i32 2
  %31 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %31, i64 %32
  store %struct.acpi_gpe_event_info* %33, %struct.acpi_gpe_event_info** %3, align 8
  br label %34

34:                                               ; preds = %28, %27, %15
  %35 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  ret %struct.acpi_gpe_event_info* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
