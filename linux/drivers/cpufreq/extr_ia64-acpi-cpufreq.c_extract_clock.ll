; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_extract_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_extract_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_acpi_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"extract_clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_acpi_io*, i32)* @extract_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_clock(%struct.cpufreq_acpi_io* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_acpi_io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cpufreq_acpi_io* %0, %struct.cpufreq_acpi_io** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %4, align 8
  %11 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %4, align 8
  %18 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %16, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %4, align 8
  %28 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %8

39:                                               ; preds = %8
  %40 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %4, align 8
  %41 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %26
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
