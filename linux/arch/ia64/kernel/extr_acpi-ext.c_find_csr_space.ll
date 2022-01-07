; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_acpi-ext.c_find_csr_space.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_acpi-ext.c_find_csr_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32 }
%struct.csr_space = type { i64, i32 }
%struct.acpi_resource_address64 = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ACPI_MEMORY_RANGE = common dso_local global i64 0, align 8
@ACPI_CONSUMER = common dso_local global i64 0, align 8
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @find_csr_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_csr_space(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.csr_space*, align 8
  %7 = alloca %struct.acpi_resource_address64, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.csr_space*
  store %struct.csr_space* %10, %struct.csr_space** %6, align 8
  %11 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %12 = call i32 @acpi_resource_to_address64(%struct.acpi_resource* %11, %struct.acpi_resource_address64* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @ACPI_SUCCESS(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACPI_MEMORY_RANGE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_CONSUMER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.csr_space*, %struct.csr_space** %6, align 8
  %36 = getelementptr inbounds %struct.csr_space, %struct.csr_space* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.csr_space*, %struct.csr_space** %6, align 8
  %41 = getelementptr inbounds %struct.csr_space, %struct.csr_space* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %26, %21, %16, %2
  %44 = load i32, i32* @AE_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource*, %struct.acpi_resource_address64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
