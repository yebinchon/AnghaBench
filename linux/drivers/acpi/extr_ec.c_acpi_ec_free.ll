; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32 }

@first_ec = common dso_local global %struct.acpi_ec* null, align 8
@boot_ec = common dso_local global %struct.acpi_ec* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*)* @acpi_ec_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ec_free(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  %3 = load %struct.acpi_ec*, %struct.acpi_ec** @first_ec, align 8
  %4 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %5 = icmp eq %struct.acpi_ec* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.acpi_ec* null, %struct.acpi_ec** @first_ec, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %9 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %10 = icmp eq %struct.acpi_ec* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store %struct.acpi_ec* null, %struct.acpi_ec** @boot_ec, align 8
  br label %12

12:                                               ; preds = %11, %7
  %13 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %14 = call i32 @kfree(%struct.acpi_ec* %13)
  ret void
}

declare dso_local i32 @kfree(%struct.acpi_ec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
