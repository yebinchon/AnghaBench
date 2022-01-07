; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_osc_control_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_osc_control_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_root = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@OSC_PCI_CONTROL_MASKS = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@osc_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"platform does not support\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"not requesting control; platform does not support\00", align 1
@AE_SUPPORT = common dso_local global i32 0, align 4
@OSC_QUERY_DWORD = common dso_local global i64 0, align 8
@OSC_SUPPORT_DWORD = common dso_local global i64 0, align 8
@OSC_CONTROL_DWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_pci_osc_control_set(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_pci_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %16, i32* %4, align 4
  br label %125

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OSC_PCI_CONTROL_MASKS, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @AE_TYPE, align 4
  store i32 %28, i32* %4, align 4
  br label %125

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.acpi_pci_root* @acpi_pci_find_root(i32 %30)
  store %struct.acpi_pci_root* %31, %struct.acpi_pci_root** %8, align 8
  %32 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %8, align 8
  %33 = icmp ne %struct.acpi_pci_root* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %35, i32* %4, align 4
  br label %125

36:                                               ; preds = %29
  %37 = call i32 @mutex_lock(i32* @osc_lock)
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %8, align 8
  %40 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %8, align 8
  %45 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %122

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %8, align 8
  %59 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %8, align 8
  %60 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @acpi_pci_query_osc(%struct.acpi_pci_root* %58, i32 %61, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @ACPI_FAILURE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %122

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %84

74:                                               ; preds = %68
  %75 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %76, %79
  %81 = call i32 @decode_osc_control(%struct.acpi_pci_root* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  br label %53

84:                                               ; preds = %73, %53
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %10, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = call i32 @decode_osc_control(%struct.acpi_pci_root* %91, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %97, i32* %9, align 4
  br label %122

98:                                               ; preds = %84
  %99 = load i64, i64* @OSC_QUERY_DWORD, align 8
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %99
  store i32 0, i32* %100, align 4
  %101 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %8, align 8
  %102 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* @OSC_SUPPORT_DWORD, align 8
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %104
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i64, i64* @OSC_CONTROL_DWORD, align 8
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %107
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %5, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @acpi_pci_run_osc(i32 %109, i32* %110, i32* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @ACPI_SUCCESS(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %98
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %8, align 8
  %120 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %98
  br label %122

122:                                              ; preds = %121, %90, %67, %51
  %123 = call i32 @mutex_unlock(i32* @osc_lock)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %122, %34, %27, %15
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.acpi_pci_root* @acpi_pci_find_root(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_pci_query_osc(%struct.acpi_pci_root*, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @decode_osc_control(%struct.acpi_pci_root*, i8*, i32) #1

declare dso_local i32 @acpi_pci_run_osc(i32, i32*, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
