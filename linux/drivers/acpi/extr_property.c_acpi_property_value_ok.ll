; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_property_value_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_property_value_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_object*)* @acpi_property_value_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_property_value_ok(%union.acpi_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca i32, align 4
  store %union.acpi_object* %0, %union.acpi_object** %3, align 8
  %5 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %6 = bitcast %union.acpi_object* %5 to i32*
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %33 [
    i32 131, label %8
    i32 128, label %8
    i32 130, label %8
    i32 129, label %9
  ]

8:                                                ; preds = %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %29, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %13 = bitcast %union.acpi_object* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %19 = bitcast %union.acpi_object* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %28 [
    i32 131, label %27
    i32 128, label %27
    i32 130, label %27
  ]

27:                                               ; preds = %17, %17, %17
  br label %29

28:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %34

29:                                               ; preds = %27
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %10

32:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %28, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
