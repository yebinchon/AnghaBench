; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/efi/extr_quirks.c_efi_query_variable_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/efi/extr_quirks.c_efi_query_variable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i64*, i64*, i64*)*, i64 (i32*, i32*, i32, i64, i8*)* }

@EFI_VARIABLE_NON_VOLATILE = common dso_local global i32 0, align 4
@efi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EFI_MIN_RESERVE = common dso_local global i64 0, align 8
@efi_no_storage_paranoia = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EFI_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@efi_dummy_name = common dso_local global i64 0, align 8
@EFI_DUMMY_GUID = common dso_local global i32 0, align 4
@EFI_VARIABLE_BOOTSERVICE_ACCESS = common dso_local global i32 0, align 4
@EFI_VARIABLE_RUNTIME_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_query_variable_store(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @EFI_VARIABLE_NON_VOLATILE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %93

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @query_variable_store_nonblocking(i32 %23, i64 %24)
  store i64 %25, i64* %4, align 8
  br label %93

26:                                               ; preds = %19
  %27 = load i64 (i32, i64*, i64*, i64*)*, i64 (i32, i64*, i64*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 %27(i32 %28, i64* %9, i64* %10, i64* %11)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @EFI_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %93

35:                                               ; preds = %26
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %36, %37
  %39 = load i64, i64* @EFI_MIN_RESERVE, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %35
  %42 = load i32, i32* @efi_no_storage_paranoia, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %91, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1024
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kzalloc(i64 %47, i32 %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = load i64, i64* @EFI_OUT_OF_RESOURCES, align 8
  store i64 %53, i64* %4, align 8
  br label %93

54:                                               ; preds = %44
  %55 = load i64 (i32*, i32*, i32, i64, i8*)*, i64 (i32*, i32*, i32, i64, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 1), align 8
  %56 = load i64, i64* @efi_dummy_name, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* @EFI_VARIABLE_NON_VOLATILE, align 4
  %59 = load i32, i32* @EFI_VARIABLE_BOOTSERVICE_ACCESS, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @EFI_VARIABLE_RUNTIME_ACCESS, align 4
  %62 = or i32 %60, %61
  %63 = load i64, i64* %12, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i64 %55(i32* %57, i32* @EFI_DUMMY_GUID, i32 %62, i64 %63, i8* %64)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @EFI_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = call i32 (...) @efi_delete_dummy_variable()
  br label %71

71:                                               ; preds = %69, %54
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = load i64 (i32, i64*, i64*, i64*)*, i64 (i32, i64*, i64*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i64 %74(i32 %75, i64* %9, i64* %10, i64* %11)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @EFI_SUCCESS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i64, i64* %8, align 8
  store i64 %81, i64* %4, align 8
  br label %93

82:                                               ; preds = %71
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub i64 %83, %84
  %86 = load i64, i64* @EFI_MIN_RESERVE, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i64, i64* @EFI_OUT_OF_RESOURCES, align 8
  store i64 %89, i64* %4, align 8
  br label %93

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %41, %35
  %92 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %91, %88, %80, %52, %33, %22, %18
  %94 = load i64, i64* %4, align 8
  ret i64 %94
}

declare dso_local i64 @query_variable_store_nonblocking(i32, i64) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @efi_delete_dummy_variable(...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
