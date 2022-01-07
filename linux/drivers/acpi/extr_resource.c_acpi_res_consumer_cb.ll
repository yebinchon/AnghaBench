; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_res_consumer_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_res_consumer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.acpi_device = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @acpi_res_consumer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_res_consumer_cb(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.acpi_device**, align 8
  %12 = alloca %struct.acpi_device*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.resource*
  store %struct.resource* %14, %struct.resource** %10, align 8
  %15 = load i8**, i8*** %9, align 8
  %16 = bitcast i8** %15 to %struct.acpi_device**
  store %struct.acpi_device** %16, %struct.acpi_device*** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @acpi_bus_get_device(i32 %17, %struct.acpi_device** %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @AE_OK, align 4
  store i32 %21, i32* %5, align 4
  br label %33

22:                                               ; preds = %4
  %23 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %24 = load %struct.resource*, %struct.resource** %10, align 8
  %25 = call i64 @acpi_dev_consumes_res(%struct.acpi_device* %23, %struct.resource* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %29 = load %struct.acpi_device**, %struct.acpi_device*** %11, align 8
  store %struct.acpi_device* %28, %struct.acpi_device** %29, align 8
  %30 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @AE_OK, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %27, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i64 @acpi_dev_consumes_res(%struct.acpi_device*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
