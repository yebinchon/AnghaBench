; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exnames.c_acpi_ex_allocate_name_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exnames.c_acpi_ex_allocate_name_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ex_allocate_name_string = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate size %u\00", align 1
@AML_ROOT_PREFIX = common dso_local global i32 0, align 4
@AML_PARENT_PREFIX = common dso_local global i32 0, align 4
@AML_MULTI_NAME_PREFIX = common dso_local global i32 0, align 4
@AML_DUAL_NAME_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @acpi_ex_allocate_name_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @acpi_ex_allocate_name_string(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ex_allocate_name_string, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %15, %16
  %18 = add nsw i32 1, %17
  %19 = add nsw i32 %18, 2
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %23, %24
  %26 = add nsw i32 %22, %25
  %27 = add nsw i32 %26, 2
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %21, %14
  %30 = load i32, i32* %8, align 4
  %31 = call i8* @ACPI_ALLOCATE(i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @AE_INFO, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ACPI_ERROR(i32 %36)
  %38 = call i32 @return_PTR(i8* null)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @AML_ROOT_PREFIX, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  store i8 %46, i8* %47, align 1
  br label %60

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %54, %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @AML_PARENT_PREFIX, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  store i8 %56, i8* %57, align 1
  br label %50

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* @AML_MULTI_NAME_PREFIX, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32, i32* %5, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  store i8 %69, i8* %70, align 1
  br label %81

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 2, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* @AML_DUAL_NAME_PREFIX, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  store i8 %77, i8* %78, align 1
  br label %80

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %63
  %82 = load i8*, i8** %6, align 8
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @return_PTR(i8* %83)
  %85 = load i8*, i8** %3, align 8
  ret i8* %85
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i8* @ACPI_ALLOCATE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
