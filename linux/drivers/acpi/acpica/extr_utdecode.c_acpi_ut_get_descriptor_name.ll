; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdecode.c_acpi_ut_get_descriptor_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdecode.c_acpi_ut_get_descriptor_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"NULL OBJECT\00", align 1
@ACPI_DESC_TYPE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Not a Descriptor\00", align 1
@acpi_gbl_desc_type_names = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_ut_get_descriptor_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %19

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(i8* %8)
  %10 = load i64, i64* @ACPI_DESC_TYPE_MAX, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %19

13:                                               ; preds = %7
  %14 = load i8**, i8*** @acpi_gbl_desc_type_names, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(i8* %15)
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %13, %12, %6
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
