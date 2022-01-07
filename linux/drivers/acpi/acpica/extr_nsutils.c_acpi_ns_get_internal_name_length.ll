; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_get_internal_name_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_get_internal_name_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namestring_info = type { i8*, i32, i8*, i64, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_get_internal_name_length(%struct.acpi_namestring_info* %0) #0 {
  %2 = alloca %struct.acpi_namestring_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.acpi_namestring_info* %0, %struct.acpi_namestring_info** %2, align 8
  %5 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %6 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %11, i32 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @ACPI_IS_ROOT_PREFIX(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load i32, i32* @TRUE, align 4
  %22 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %23 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %31, %20
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @ACPI_IS_ROOT_PREFIX(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  br label %26

34:                                               ; preds = %26
  br label %49

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %41, %35
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @ACPI_IS_PARENT_PREFIX(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %43 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  br label %36

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %55 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  store i64 0, i64* %4, align 8
  br label %56

56:                                               ; preds = %75, %53
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @ACPI_IS_PATH_SEPARATOR(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %71 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %62
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %4, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %4, align 8
  br label %56

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78, %49
  %80 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %81 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %82 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  %85 = add nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %88 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %92 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %2, align 8
  %95 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i64 @ACPI_IS_ROOT_PREFIX(i8 signext) #1

declare dso_local i64 @ACPI_IS_PARENT_PREFIX(i8 signext) #1

declare dso_local i64 @ACPI_IS_PATH_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
