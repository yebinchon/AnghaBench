; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_irq.c_acpi_irq_parse_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_irq.c_acpi_irq_parse_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_fwspec = type { i32 }
%struct.acpi_irq_parse_one_ctx = type { i32, i64*, i32, %struct.irq_fwspec*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@METHOD_NAME__CRS = common dso_local global i32 0, align 4
@acpi_irq_parse_one_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.irq_fwspec*, i64*)* @acpi_irq_parse_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_irq_parse_one(i32 %0, i32 %1, %struct.irq_fwspec* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.acpi_irq_parse_one_ctx, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.irq_fwspec* %2, %struct.irq_fwspec** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 8
  %13 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %9, i32 0, i32 1
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %13, align 8
  %17 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %9, i32 0, i32 2
  %18 = load i64*, i64** %8, align 8
  %19 = ptrtoint i64* %18 to i32
  store i32 %19, i32* %17, align 8
  %20 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %9, i32 0, i32 3
  %21 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  store %struct.irq_fwspec* %21, %struct.irq_fwspec** %20, align 8
  %22 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %9, i32 0, i32 4
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @METHOD_NAME__CRS, align 4
  %25 = load i32, i32* @acpi_irq_parse_one_cb, align 4
  %26 = call i32 @acpi_walk_resources(i32 %23, i32 %24, i32 %25, %struct.acpi_irq_parse_one_ctx* %9)
  %27 = getelementptr inbounds %struct.acpi_irq_parse_one_ctx, %struct.acpi_irq_parse_one_ctx* %9, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  ret i32 %28
}

declare dso_local i32 @acpi_walk_resources(i32, i32, i32, %struct.acpi_irq_parse_one_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
