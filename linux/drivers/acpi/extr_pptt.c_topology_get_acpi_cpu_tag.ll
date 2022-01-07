; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_topology_get_acpi_cpu_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_topology_get_acpi_cpu_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }
%struct.acpi_pptt_processor = type { i32, i32 }

@ACPI_PPTT_ACPI_PROCESSOR_ID_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"PPTT table found, but unable to locate core %d (%d)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_table_header*, i32, i32, i32)* @topology_get_acpi_cpu_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @topology_get_acpi_cpu_tag(%struct.acpi_table_header* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_table_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_pptt_processor*, align 8
  %11 = alloca i32, align 4
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @get_acpi_id_for_cpu(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.acpi_pptt_processor* @acpi_find_processor_node(%struct.acpi_table_header* %14, i32 %15)
  store %struct.acpi_pptt_processor* %16, %struct.acpi_pptt_processor** %10, align 8
  %17 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %10, align 8
  %18 = icmp ne %struct.acpi_pptt_processor* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %4
  %20 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %21 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.acpi_pptt_processor* @acpi_find_processor_tag(%struct.acpi_table_header* %20, %struct.acpi_pptt_processor* %21, i32 %22, i32 %23)
  store %struct.acpi_pptt_processor* %24, %struct.acpi_pptt_processor** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %10, align 8
  %29 = getelementptr inbounds %struct.acpi_pptt_processor, %struct.acpi_pptt_processor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ACPI_PPTT_ACPI_PROCESSOR_ID_VALID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27, %19
  %35 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %10, align 8
  %36 = getelementptr inbounds %struct.acpi_pptt_processor, %struct.acpi_pptt_processor* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %27
  %39 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %10, align 8
  %40 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %41 = call i32 @ACPI_PTR_DIFF(%struct.acpi_pptt_processor* %39, %struct.acpi_table_header* %40)
  store i32 %41, i32* %5, align 4
  br label %48

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @pr_warn_once(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %38, %34
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @get_acpi_id_for_cpu(i32) #1

declare dso_local %struct.acpi_pptt_processor* @acpi_find_processor_node(%struct.acpi_table_header*, i32) #1

declare dso_local %struct.acpi_pptt_processor* @acpi_find_processor_tag(%struct.acpi_table_header*, %struct.acpi_pptt_processor*, i32, i32) #1

declare dso_local i32 @ACPI_PTR_DIFF(%struct.acpi_pptt_processor*, %struct.acpi_table_header*) #1

declare dso_local i32 @pr_warn_once(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
