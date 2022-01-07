; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_print_node_pathname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_print_node_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_buffer = type { i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"[NULL NAME]\00", align 1
@ACPI_ALLOCATE_LOCAL_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_print_node_pathname(%struct.acpi_namespace_node* %0, i8* %1) #0 {
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %8 = icmp ne %struct.acpi_namespace_node* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %34

11:                                               ; preds = %2
  %12 = load i32, i32* @ACPI_ALLOCATE_LOCAL_BUFFER, align 4
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @acpi_ns_handle_to_pathname(%struct.acpi_namespace_node* %14, %struct.acpi_buffer* %5, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @ACPI_SUCCESS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %11
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ACPI_FREE(i64 %32)
  br label %34

34:                                               ; preds = %9, %26, %11
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_ns_handle_to_pathname(%struct.acpi_namespace_node*, %struct.acpi_buffer*, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @ACPI_FREE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
