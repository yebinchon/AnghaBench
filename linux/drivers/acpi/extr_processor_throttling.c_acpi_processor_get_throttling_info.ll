; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.acpi_processor = type { %struct.TYPE_5__, %struct.acpi_processor_throttling, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.acpi_processor_throttling = type { i64, i32, i32, i32, i64, i32*, i32*, i32, i32, i32 }

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"pblk_address[0x%08x] duty_offset[%d] duty_width[%d]\0A\00", align 1
@acpi_processor_get_throttling_fadt = common dso_local global i32 0, align 4
@acpi_processor_set_throttling_fadt = common dso_local global i32 0, align 4
@acpi_processor_get_throttling_ptc = common dso_local global i32 0, align 4
@acpi_processor_set_throttling_ptc = common dso_local global i32 0, align 4
@DOMAIN_COORD_TYPE_SW_ALL = common dso_local global i32 0, align 4
@errata = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Throttling not supported on PIIX4 A- or B-step\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Found %d throttling states\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Disabling throttling (was T%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_get_throttling_info(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_processor_throttling*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @ACPI_DB_INFO, align 4
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ACPI_DEBUG_PRINT(i32 %18)
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %21 = call i64 @acpi_processor_get_throttling_control(%struct.acpi_processor* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %25 = call i64 @acpi_processor_get_throttling_states(%struct.acpi_processor* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %29 = call i64 @acpi_processor_get_platform_limit(%struct.acpi_processor* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27, %23, %1
  %32 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %33, i32 0, i32 6
  store i32* @acpi_processor_get_throttling_fadt, i32** %34, align 8
  %35 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %36, i32 0, i32 5
  store i32* @acpi_processor_set_throttling_fadt, i32** %37, align 8
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %39 = call i64 @acpi_processor_get_fadt_info(%struct.acpi_processor* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %120

42:                                               ; preds = %31
  br label %50

43:                                               ; preds = %27
  %44 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %45, i32 0, i32 6
  store i32* @acpi_processor_get_throttling_ptc, i32** %46, align 8
  %47 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %48, i32 0, i32 5
  store i32* @acpi_processor_set_throttling_ptc, i32** %49, align 8
  br label %50

50:                                               ; preds = %43, %42
  %51 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %52 = call i64 @acpi_processor_get_tsd(%struct.acpi_processor* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %55, i32 0, i32 1
  store %struct.acpi_processor_throttling* %56, %struct.acpi_processor_throttling** %5, align 8
  %57 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %5, align 8
  %58 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %60 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %5, align 8
  %63 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @cpumask_set_cpu(i32 %61, i32 %64)
  %66 = load i32, i32* @DOMAIN_COORD_TYPE_SW_ALL, align 4
  %67 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %5, align 8
  %68 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %54, %50
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @errata, i32 0, i32 0, i32 0), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @ACPI_DB_INFO, align 4
  %74 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([48 x i8]* @.str.1 to i32))
  store i32 0, i32* %2, align 4
  br label %120

75:                                               ; preds = %69
  %76 = load i32, i32* @ACPI_DB_INFO, align 4
  %77 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %78 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ACPI_DEBUG_PRINT(i32 %80)
  %82 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %83 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %86 = call i32 @acpi_processor_get_throttling(%struct.acpi_processor* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %111

90:                                               ; preds = %75
  %91 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %92 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load i32, i32* @ACPI_DB_INFO, align 4
  %98 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %99 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @ACPI_DEBUG_PRINT(i32 %102)
  %104 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %105 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %104, i32 0, i32 0)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %111

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %108, %89
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %116 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %72, %41
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @acpi_processor_get_throttling_control(%struct.acpi_processor*) #1

declare dso_local i64 @acpi_processor_get_throttling_states(%struct.acpi_processor*) #1

declare dso_local i64 @acpi_processor_get_platform_limit(%struct.acpi_processor*) #1

declare dso_local i64 @acpi_processor_get_fadt_info(%struct.acpi_processor*) #1

declare dso_local i64 @acpi_processor_get_tsd(%struct.acpi_processor*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @acpi_processor_get_throttling(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_set_throttling(%struct.acpi_processor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
