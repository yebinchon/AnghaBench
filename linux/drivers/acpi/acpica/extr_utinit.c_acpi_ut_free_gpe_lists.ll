; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utinit.c_acpi_ut_free_gpe_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utinit.c_acpi_ut_free_gpe_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info* }
%struct.acpi_gpe_block_info = type { %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info* }

@acpi_gbl_gpe_xrupt_list_head = common dso_local global %struct.acpi_gpe_xrupt_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpi_ut_free_gpe_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ut_free_gpe_lists() #0 {
  %1 = alloca %struct.acpi_gpe_block_info*, align 8
  %2 = alloca %struct.acpi_gpe_block_info*, align 8
  %3 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %4 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %5 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  store %struct.acpi_gpe_xrupt_info* %5, %struct.acpi_gpe_xrupt_info** %3, align 8
  br label %6

6:                                                ; preds = %35, %0
  %7 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %8 = icmp ne %struct.acpi_gpe_xrupt_info* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %10, i32 0, i32 3
  %12 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %11, align 8
  %13 = bitcast %struct.acpi_gpe_xrupt_info* %12 to %struct.acpi_gpe_block_info*
  store %struct.acpi_gpe_block_info* %13, %struct.acpi_gpe_block_info** %1, align 8
  br label %14

14:                                               ; preds = %17, %9
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %16 = icmp ne %struct.acpi_gpe_block_info* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %19 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %18, i32 0, i32 0
  %20 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %19, align 8
  store %struct.acpi_gpe_block_info* %20, %struct.acpi_gpe_block_info** %2, align 8
  %21 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %22 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %21, i32 0, i32 2
  %23 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %22, align 8
  %24 = bitcast %struct.acpi_gpe_block_info* %23 to %struct.acpi_gpe_xrupt_info*
  %25 = call i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info* %24)
  %26 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %27 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %26, i32 0, i32 1
  %28 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %27, align 8
  %29 = bitcast %struct.acpi_gpe_block_info* %28 to %struct.acpi_gpe_xrupt_info*
  %30 = call i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info* %29)
  %31 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %32 = bitcast %struct.acpi_gpe_block_info* %31 to %struct.acpi_gpe_xrupt_info*
  %33 = call i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info* %32)
  %34 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %2, align 8
  store %struct.acpi_gpe_block_info* %34, %struct.acpi_gpe_block_info** %1, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %36, i32 0, i32 0
  %38 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %37, align 8
  store %struct.acpi_gpe_xrupt_info* %38, %struct.acpi_gpe_xrupt_info** %4, align 8
  %39 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %40 = call i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info* %39)
  %41 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  store %struct.acpi_gpe_xrupt_info* %41, %struct.acpi_gpe_xrupt_info** %3, align 8
  br label %6

42:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
