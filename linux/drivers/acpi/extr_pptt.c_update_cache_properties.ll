; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_update_cache_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_update_cache_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cacheinfo = type { i32, i64, i32, i32, i32, i32, %struct.acpi_pptt_processor* }
%struct.acpi_pptt_cache = type { i32, i32, i32, i32, i32, i32 }
%struct.acpi_pptt_processor = type { i32 }

@ACPI_PPTT_SIZE_PROPERTY_VALID = common dso_local global i32 0, align 4
@ACPI_PPTT_LINE_SIZE_VALID = common dso_local global i32 0, align 4
@ACPI_PPTT_NUMBER_OF_SETS_VALID = common dso_local global i32 0, align 4
@ACPI_PPTT_ASSOCIATIVITY_VALID = common dso_local global i32 0, align 4
@ACPI_PPTT_WRITE_POLICY_VALID = common dso_local global i32 0, align 4
@ACPI_PPTT_MASK_WRITE_POLICY = common dso_local global i32 0, align 4
@CACHE_WRITE_THROUGH = common dso_local global i32 0, align 4
@CACHE_WRITE_BACK = common dso_local global i32 0, align 4
@ACPI_PPTT_ALLOCATION_TYPE_VALID = common dso_local global i32 0, align 4
@ACPI_PPTT_MASK_ALLOCATION_TYPE = common dso_local global i32 0, align 4
@CACHE_READ_ALLOCATE = common dso_local global i32 0, align 4
@CACHE_WRITE_ALLOCATE = common dso_local global i32 0, align 4
@CACHE_TYPE_NOCACHE = common dso_local global i64 0, align 8
@ACPI_PPTT_CACHE_TYPE_VALID = common dso_local global i32 0, align 4
@CACHE_TYPE_UNIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cacheinfo*, %struct.acpi_pptt_cache*, %struct.acpi_pptt_processor*)* @update_cache_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cache_properties(%struct.cacheinfo* %0, %struct.acpi_pptt_cache* %1, %struct.acpi_pptt_processor* %2) #0 {
  %4 = alloca %struct.cacheinfo*, align 8
  %5 = alloca %struct.acpi_pptt_cache*, align 8
  %6 = alloca %struct.acpi_pptt_processor*, align 8
  store %struct.cacheinfo* %0, %struct.cacheinfo** %4, align 8
  store %struct.acpi_pptt_cache* %1, %struct.acpi_pptt_cache** %5, align 8
  store %struct.acpi_pptt_processor* %2, %struct.acpi_pptt_processor** %6, align 8
  %7 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %6, align 8
  %8 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %9 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %8, i32 0, i32 6
  store %struct.acpi_pptt_processor* %7, %struct.acpi_pptt_processor** %9, align 8
  %10 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ACPI_PPTT_SIZE_PROPERTY_VALID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %21 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %16, %3
  %23 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ACPI_PPTT_LINE_SIZE_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %31 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %34 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %37 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ACPI_PPTT_NUMBER_OF_SETS_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %47 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %50 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ACPI_PPTT_ASSOCIATIVITY_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %60 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %63 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ACPI_PPTT_WRITE_POLICY_VALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %70 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ACPI_PPTT_MASK_WRITE_POLICY, align 4
  %73 = and i32 %71, %72
  switch i32 %73, label %82 [
    i32 132, label %74
    i32 133, label %78
  ]

74:                                               ; preds = %68
  %75 = load i32, i32* @CACHE_WRITE_THROUGH, align 4
  %76 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %77 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %68
  %79 = load i32, i32* @CACHE_WRITE_BACK, align 4
  %80 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %81 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %68, %78, %74
  br label %83

83:                                               ; preds = %82, %61
  %84 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %85 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ACPI_PPTT_ALLOCATION_TYPE_VALID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %83
  %91 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %92 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ACPI_PPTT_MASK_ALLOCATION_TYPE, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %116 [
    i32 131, label %96
    i32 128, label %102
    i32 130, label %108
    i32 129, label %108
  ]

96:                                               ; preds = %90
  %97 = load i32, i32* @CACHE_READ_ALLOCATE, align 4
  %98 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %99 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %116

102:                                              ; preds = %90
  %103 = load i32, i32* @CACHE_WRITE_ALLOCATE, align 4
  %104 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %105 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %116

108:                                              ; preds = %90, %90
  %109 = load i32, i32* @CACHE_READ_ALLOCATE, align 4
  %110 = load i32, i32* @CACHE_WRITE_ALLOCATE, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %113 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %90, %108, %102, %96
  br label %117

117:                                              ; preds = %116, %83
  %118 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %119 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CACHE_TYPE_NOCACHE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %125 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ACPI_PPTT_CACHE_TYPE_VALID, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i64, i64* @CACHE_TYPE_UNIFIED, align 8
  %132 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %133 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %123, %117
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
