; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_ibm_smbus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_ibm_smbus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8*, i32 }

@ACPI_PATH_SEGMENT_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IBM\00", align 1
@ACPI_SINGLE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SMBS\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SBI\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SBR\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"SBW\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_ibm_smbus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ibm_smbus_match(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @ACPI_PATH_SEGMENT_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %13 = trunc i64 %9 to i32
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i8* %11, i8** %14, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = call i32 @dmi_name_in_vendors(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ACPI_SINGLE_NAME, align 4
  %22 = call i32 @acpi_get_name(i32 %20, i32 %21, %struct.acpi_buffer* %6)
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %19
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @acpi_has_method(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @acpi_has_method(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @acpi_has_method(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

44:                                               ; preds = %39, %35, %31
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %43, %30, %18
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dmi_name_in_vendors(i8*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @acpi_get_name(i32, i32, %struct.acpi_buffer*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i64 @acpi_has_method(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
