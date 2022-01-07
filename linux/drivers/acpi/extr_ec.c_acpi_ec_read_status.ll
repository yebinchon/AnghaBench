; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"EC_SC(R) = 0x%2.2x SCI_EVT=%d BURST=%d CMD=%d IBF=%d OBF=%d\00", align 1
@ACPI_EC_FLAG_SCI = common dso_local global i32 0, align 4
@ACPI_EC_FLAG_BURST = common dso_local global i32 0, align 4
@ACPI_EC_FLAG_CMD = common dso_local global i32 0, align 4
@ACPI_EC_FLAG_IBF = common dso_local global i32 0, align 4
@ACPI_EC_FLAG_OBF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*)* @acpi_ec_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_read_status(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  %4 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @inb(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ACPI_EC_FLAG_SCI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ACPI_EC_FLAG_BURST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ACPI_EC_FLAG_CMD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ACPI_EC_FLAG_IBF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ACPI_EC_FLAG_OBF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @ec_dbg_raw(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %15, i32 %22, i32 %29, i32 %36, i32 %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ec_dbg_raw(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
