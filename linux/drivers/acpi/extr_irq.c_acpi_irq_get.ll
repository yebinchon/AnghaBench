; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_irq.c_acpi_irq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_irq.c_acpi_irq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32, i64 }
%struct.irq_fwspec = type { i32 }
%struct.irq_domain = type { i32 }

@DOMAIN_BUS_ANY = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_irq_get(i32 %0, i32 %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.irq_fwspec, align 4
  %9 = alloca %struct.irq_domain*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.resource* %2, %struct.resource** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @acpi_irq_parse_one(i32 %12, i32 %13, %struct.irq_fwspec* %8, i64* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DOMAIN_BUS_ANY, align 4
  %23 = call %struct.irq_domain* @irq_find_matching_fwnode(i32 %21, i32 %22)
  store %struct.irq_domain* %23, %struct.irq_domain** %9, align 8
  %24 = load %struct.irq_domain*, %struct.irq_domain** %9, align 8
  %25 = icmp ne %struct.irq_domain* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %19
  %30 = call i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* %8)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %46

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.resource*, %struct.resource** %7, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %36, %33, %26, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @acpi_irq_parse_one(i32, i32, %struct.irq_fwspec*, i64*) #1

declare dso_local %struct.irq_domain* @irq_find_matching_fwnode(i32, i32) #1

declare dso_local i32 @irq_create_fwspec_mapping(%struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
