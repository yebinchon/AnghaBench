; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_parse_io_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_parse_io_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.acpi_ec = type { i64, i64 }

@ACPI_RESOURCE_TYPE_IO = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @ec_parse_io_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_parse_io_ports(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_ec*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.acpi_ec*
  store %struct.acpi_ec* %8, %struct.acpi_ec** %6, align 8
  %9 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %10 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ACPI_RESOURCE_TYPE_IO, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.acpi_ec*, %struct.acpi_ec** %6, align 8
  %18 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.acpi_ec*, %struct.acpi_ec** %6, align 8
  %28 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %45

29:                                               ; preds = %16
  %30 = load %struct.acpi_ec*, %struct.acpi_ec** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.acpi_ec*, %struct.acpi_ec** %6, align 8
  %41 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i32, i32* @AE_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %42, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
