; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_acpi_pad_handle_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_acpi_pad_handle_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8* }

@isolated_cpus_lock = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_AGGREGATOR_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_pad_handle_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pad_handle_notify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_buffer, align 8
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  store i32 4, i32* %6, align 8
  %7 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  %8 = bitcast i32* %4 to i8*
  store i8* %8, i8** %7, align 8
  %9 = call i32 @mutex_lock(i32* @isolated_cpus_lock)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @acpi_pad_pur(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @mutex_unlock(i32* @isolated_cpus_lock)
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @acpi_pad_idle_cpus(i32 %17)
  %19 = call i32 (...) @acpi_pad_idle_cpus_num()
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @ACPI_PROCESSOR_AGGREGATOR_NOTIFY, align 4
  %22 = call i32 @acpi_evaluate_ost(i32 %20, i32 %21, i32 0, %struct.acpi_buffer* %5)
  %23 = call i32 @mutex_unlock(i32* @isolated_cpus_lock)
  br label %24

24:                                               ; preds = %16, %14
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_pad_pur(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acpi_pad_idle_cpus(i32) #1

declare dso_local i32 @acpi_pad_idle_cpus_num(...) #1

declare dso_local i32 @acpi_evaluate_ost(i32, i32, i32, %struct.acpi_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
