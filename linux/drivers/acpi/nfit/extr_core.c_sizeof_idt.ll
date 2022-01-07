; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_sizeof_idt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_sizeof_idt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_interleave = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.acpi_nfit_interleave*)* @sizeof_idt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sizeof_idt(%struct.acpi_nfit_interleave* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.acpi_nfit_interleave*, align 8
  store %struct.acpi_nfit_interleave* %0, %struct.acpi_nfit_interleave** %3, align 8
  %4 = load %struct.acpi_nfit_interleave*, %struct.acpi_nfit_interleave** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_nfit_interleave, %struct.acpi_nfit_interleave* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.acpi_nfit_interleave*, %struct.acpi_nfit_interleave** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_nfit_interleave, %struct.acpi_nfit_interleave* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = add i64 8, %17
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i64, i64* %2, align 8
  ret i64 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
