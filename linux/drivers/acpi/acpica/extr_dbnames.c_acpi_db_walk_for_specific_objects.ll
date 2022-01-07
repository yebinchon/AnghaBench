; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_walk_for_specific_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_walk_for_specific_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_info = type { i32 }
%struct.acpi_buffer = type { i64, i32 }

@ACPI_ALLOCATE_LOCAL_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could Not get pathname for object %p\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%32s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8**)* @acpi_db_walk_for_specific_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_walk_for_specific_objects(i8* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_walk_info*, align 8
  %11 = alloca %struct.acpi_buffer, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.acpi_walk_info*
  store %struct.acpi_walk_info* %14, %struct.acpi_walk_info** %10, align 8
  %15 = load %struct.acpi_walk_info*, %struct.acpi_walk_info** %10, align 8
  %16 = getelementptr inbounds %struct.acpi_walk_info, %struct.acpi_walk_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @ACPI_ALLOCATE_LOCAL_BUFFER, align 4
  %20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @acpi_ns_handle_to_pathname(i8* %21, %struct.acpi_buffer* %11, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @AE_OK, align 4
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ACPI_FREE(i64 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.acpi_walk_info*, %struct.acpi_walk_info** %10, align 8
  %42 = call i32 @acpi_ns_dump_one_object(i8* %39, i32 %40, %struct.acpi_walk_info* %41, i32* null)
  %43 = load i32, i32* @AE_OK, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %31, %27
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @acpi_ns_handle_to_pathname(i8*, %struct.acpi_buffer*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, i8*) #1

declare dso_local i32 @ACPI_FREE(i64) #1

declare dso_local i32 @acpi_ns_dump_one_object(i8*, i32, %struct.acpi_walk_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
