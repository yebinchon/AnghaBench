; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_dock_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_dock_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dock_station = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dock_station*)* @dock_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dock_present(%struct.dock_station* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dock_station*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dock_station* %0, %struct.dock_station** %3, align 8
  %6 = load %struct.dock_station*, %struct.dock_station** %3, align 8
  %7 = icmp ne %struct.dock_station* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.dock_station*, %struct.dock_station** %3, align 8
  %10 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @acpi_evaluate_integer(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @ACPI_SUCCESS(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %22

20:                                               ; preds = %16, %8
  br label %21

21:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
