; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_fadt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_fadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ACPI CPU throttle\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Throttling state is T%d (%d%% throttling applied)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_get_throttling_fadt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_throttling_fadt(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %9 = icmp ne %struct.acpi_processor* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %89

13:                                               ; preds = %1
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %89

22:                                               ; preds = %13
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @request_region(i32 %26, i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = call i32 (...) @local_irq_disable()
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @inl(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %22
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %65 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %63, %51
  br label %71

71:                                               ; preds = %70, %22
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %74 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = call i32 (...) @local_irq_enable()
  %77 = load i32, i32* @ACPI_DB_INFO, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %80 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ACPI_DEBUG_PRINT(i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %71, %19, %10
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
