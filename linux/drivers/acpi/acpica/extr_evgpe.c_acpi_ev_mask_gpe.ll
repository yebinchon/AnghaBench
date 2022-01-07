; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_mask_gpe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_mask_gpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { i32, i64, %struct.acpi_gpe_register_info* }
%struct.acpi_gpe_register_info = type { i32 }

@ev_mask_gpe = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_GPE_DISABLE = common dso_local global i32 0, align 4
@ACPI_GPE_ENABLE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_mask_gpe(%struct.acpi_gpe_event_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_gpe_event_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_gpe_register_info*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %0, %struct.acpi_gpe_event_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @ev_mask_gpe, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %10, i32 0, i32 2
  %12 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %11, align 8
  store %struct.acpi_gpe_register_info* %12, %struct.acpi_gpe_register_info** %6, align 8
  %13 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %14 = icmp ne %struct.acpi_gpe_register_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @AE_NOT_EXIST, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %20 = call i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %35 = load i32, i32* @ACPI_GPE_DISABLE, align 4
  %36 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %34, i32 %35)
  %37 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %38 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 @ACPI_SET_BIT(i32 %39, i64 %41)
  br label %74

43:                                               ; preds = %18
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %46 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %55 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 @ACPI_CLEAR_BIT(i32 %56, i64 %58)
  %60 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %61 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %66 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %4, align 8
  %71 = load i32, i32* @ACPI_GPE_ENABLE, align 4
  %72 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %64, %53
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32, i32* @AE_OK, align 4
  %76 = call i32 @return_ACPI_STATUS(i32 %75)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info*) #1

declare dso_local i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info*, i32) #1

declare dso_local i32 @ACPI_SET_BIT(i32, i64) #1

declare dso_local i32 @ACPI_CLEAR_BIT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
