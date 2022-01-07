; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_get_irqresource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_get_irqresource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32, i32 }

@ACPI_LEVEL_SENSITIVE = common dso_local global i64 0, align 8
@ACPI_EDGE_SENSITIVE = common dso_local global i64 0, align 8
@ACPI_ACTIVE_LOW = common dso_local global i64 0, align 8
@ACPI_ACTIVE_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ACPI: IRQ %d override to %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource*, i32, i64, i64, i64, i32)* @acpi_dev_get_irqresource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_dev_get_irqresource(%struct.resource* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.resource* %0, %struct.resource** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @valid_IRQ(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load %struct.resource*, %struct.resource** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @acpi_dev_irqresource_disabled(%struct.resource* %22, i32 %23)
  br label %94

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @acpi_get_override_irq(i32 %29, i32* %15, i32* %14)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64, i64* @ACPI_LEVEL_SENSITIVE, align 8
  br label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @ACPI_EDGE_SENSITIVE, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %16, align 8
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @ACPI_ACTIVE_LOW, align 8
  br label %47

45:                                               ; preds = %39
  %46 = load i64, i64* @ACPI_ACTIVE_HIGH, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %16, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %17, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %66 = call i32 @pr_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57, i8* %61, i8* %65)
  %67 = load i64, i64* %16, align 8
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %17, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %56, %52
  br label %70

70:                                               ; preds = %69, %28, %25
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @acpi_dev_irq_flags(i64 %71, i64 %72, i64 %73)
  %75 = load %struct.resource*, %struct.resource** %7, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @acpi_register_gsi(i32* null, i32 %77, i64 %78, i64 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %70
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.resource*, %struct.resource** %7, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.resource*, %struct.resource** %7, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %70
  %91 = load %struct.resource*, %struct.resource** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @acpi_dev_irqresource_disabled(%struct.resource* %91, i32 %92)
  br label %94

94:                                               ; preds = %21, %90, %83
  ret void
}

declare dso_local i32 @valid_IRQ(i32) #1

declare dso_local i32 @acpi_dev_irqresource_disabled(%struct.resource*, i32) #1

declare dso_local i32 @acpi_get_override_irq(i32, i32*, i32*) #1

declare dso_local i32 @pr_warning(i8*, i32, i8*, i8*) #1

declare dso_local i32 @acpi_dev_irq_flags(i64, i64, i64) #1

declare dso_local i32 @acpi_register_gsi(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
