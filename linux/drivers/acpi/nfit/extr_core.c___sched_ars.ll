; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c___sched_ars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c___sched_ars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i32, i32, i32, i32 }

@ARS_BUSY = common dso_local global i32 0, align 4
@nfit_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_nfit_desc*, i32)* @__sched_ars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sched_ars(%struct.acpi_nfit_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_nfit_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %6 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %5, i32 0, i32 3
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load i32, i32* @ARS_BUSY, align 4
  %9 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %9, i32 0, i32 2
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @nfit_wq, align 4
  %20 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %20, i32 0, i32 1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul i32 %22, %23
  %25 = call i32 @queue_delayed_work(i32 %19, i32* %21, i32 %24)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
