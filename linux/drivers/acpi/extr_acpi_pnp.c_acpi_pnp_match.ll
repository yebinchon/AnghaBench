; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pnp.c_acpi_pnp_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pnp.c_acpi_pnp_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_id = type { i64* }

@acpi_pnp_device_ids = common dso_local global %struct.acpi_device_id* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.acpi_device_id**)* @acpi_pnp_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pnp_match(i8* %0, %struct.acpi_device_id** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_device_id**, align 8
  %6 = alloca %struct.acpi_device_id*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.acpi_device_id** %1, %struct.acpi_device_id*** %5, align 8
  %7 = load %struct.acpi_device_id*, %struct.acpi_device_id** @acpi_pnp_device_ids, align 8
  store %struct.acpi_device_id* %7, %struct.acpi_device_id** %6, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.acpi_device_id*, %struct.acpi_device_id** %6, align 8
  %10 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.acpi_device_id*, %struct.acpi_device_id** %6, align 8
  %18 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = bitcast i64* %19 to i8*
  %21 = call i64 @matching_id(i8* %16, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.acpi_device_id**, %struct.acpi_device_id*** %5, align 8
  %25 = icmp ne %struct.acpi_device_id** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.acpi_device_id*, %struct.acpi_device_id** %6, align 8
  %28 = load %struct.acpi_device_id**, %struct.acpi_device_id*** %5, align 8
  store %struct.acpi_device_id* %27, %struct.acpi_device_id** %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  store i32 1, i32* %3, align 4
  br label %35

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.acpi_device_id*, %struct.acpi_device_id** %6, align 8
  %33 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %32, i32 1
  store %struct.acpi_device_id* %33, %struct.acpi_device_id** %6, align 8
  br label %8

34:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @matching_id(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
