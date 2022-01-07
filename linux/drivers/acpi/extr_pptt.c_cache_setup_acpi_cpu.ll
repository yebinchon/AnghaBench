; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_cache_setup_acpi_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_cache_setup_acpi_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }
%struct.acpi_pptt_cache = type { i32 }
%struct.cpu_cacheinfo = type { i32, %struct.cacheinfo* }
%struct.cacheinfo = type { i32, i32 }
%struct.acpi_pptt_processor = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"found = %p %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_table_header*, i32)* @cache_setup_acpi_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_setup_acpi_cpu(%struct.acpi_table_header* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_table_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_pptt_cache*, align 8
  %6 = alloca %struct.cpu_cacheinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cacheinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_pptt_processor*, align 8
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %11)
  store %struct.cpu_cacheinfo* %12, %struct.cpu_cacheinfo** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @get_acpi_id_for_cpu(i32 %13)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store %struct.acpi_pptt_processor* null, %struct.acpi_pptt_processor** %10, align 8
  br label %15

15:                                               ; preds = %48, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %17)
  %19 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %15
  %23 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %6, align 8
  %24 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %23, i32 0, i32 1
  %25 = load %struct.cacheinfo*, %struct.cacheinfo** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %25, i64 %27
  store %struct.cacheinfo* %28, %struct.cacheinfo** %8, align 8
  %29 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.cacheinfo*, %struct.cacheinfo** %8, align 8
  %32 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cacheinfo*, %struct.cacheinfo** %8, align 8
  %35 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.acpi_pptt_cache* @acpi_find_cache_node(%struct.acpi_table_header* %29, i32 %30, i32 %33, i32 %36, %struct.acpi_pptt_processor** %10)
  store %struct.acpi_pptt_cache* %37, %struct.acpi_pptt_cache** %5, align 8
  %38 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %39 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %10, align 8
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.acpi_pptt_cache* %38, %struct.acpi_pptt_processor* %39)
  %41 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %42 = icmp ne %struct.acpi_pptt_cache* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %22
  %44 = load %struct.cacheinfo*, %struct.cacheinfo** %8, align 8
  %45 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %5, align 8
  %46 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %10, align 8
  %47 = call i32 @update_cache_properties(%struct.cacheinfo* %44, %struct.acpi_pptt_cache* %45, %struct.acpi_pptt_processor* %46)
  br label %48

48:                                               ; preds = %43, %22
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %15

51:                                               ; preds = %15
  ret void
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @get_acpi_id_for_cpu(i32) #1

declare dso_local %struct.acpi_pptt_cache* @acpi_find_cache_node(%struct.acpi_table_header*, i32, i32, i32, %struct.acpi_pptt_processor**) #1

declare dso_local i32 @pr_debug(i8*, %struct.acpi_pptt_cache*, %struct.acpi_pptt_processor*) #1

declare dso_local i32 @update_cache_properties(%struct.cacheinfo*, %struct.acpi_pptt_cache*, %struct.acpi_pptt_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
