; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_xo1_sci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_xo1_sci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't fetch device resource info\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@acpi_base = common dso_local global i64 0, align 8
@CS5536_GPIOM6_PME_EN = common dso_local global i32 0, align 4
@CS5536_GPIOM7_PME_EN = common dso_local global i32 0, align 4
@CS5536_PM_GPE0_EN = common dso_local global i64 0, align 8
@CS5536_PM_GPE0_STS = common dso_local global i64 0, align 8
@EC_SCI_SRC_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xo1_sci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo1_sci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = call i32 (...) @machine_is_olpc()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %98

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @mfd_cell_enable(%struct.platform_device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %98

18:                                               ; preds = %11
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_IO, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %4, align 8
  %22 = load %struct.resource*, %struct.resource** %4, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %98

30:                                               ; preds = %18
  %31 = load %struct.resource*, %struct.resource** %4, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* @acpi_base, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @setup_power_button(%struct.platform_device* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %98

40:                                               ; preds = %30
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = call i32 @setup_ebook_switch(%struct.platform_device* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %95

46:                                               ; preds = %40
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i32 @setup_lid_switch(%struct.platform_device* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %93

52:                                               ; preds = %46
  %53 = call i32 (...) @setup_lid_events()
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %91

57:                                               ; preds = %52
  %58 = call i32 (...) @setup_ec_sci()
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %89

62:                                               ; preds = %57
  %63 = load i32, i32* @CS5536_GPIOM6_PME_EN, align 4
  %64 = load i32, i32* @CS5536_GPIOM7_PME_EN, align 4
  %65 = or i32 %63, %64
  %66 = load i64, i64* @acpi_base, align 8
  %67 = load i64, i64* @CS5536_PM_GPE0_EN, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outl(i32 %65, i64 %68)
  %70 = load i64, i64* @acpi_base, align 8
  %71 = load i64, i64* @CS5536_PM_GPE0_STS, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outl(i32 -1, i64 %72)
  %74 = call i32 @process_sci_queue(i32 0)
  %75 = call i32 (...) @send_ebook_state()
  %76 = call i32 (...) @detect_lid_state()
  %77 = call i32 (...) @send_lid_state()
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = call i32 @setup_sci_interrupt(%struct.platform_device* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %62
  br label %87

83:                                               ; preds = %62
  %84 = load i32, i32* @EC_SCI_SRC_ALL, align 4
  %85 = call i32 @olpc_ec_mask_write(i32 %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %98

87:                                               ; preds = %82
  %88 = call i32 (...) @free_ec_sci()
  br label %89

89:                                               ; preds = %87, %61
  %90 = call i32 (...) @free_lid_events()
  br label %91

91:                                               ; preds = %89, %56
  %92 = call i32 (...) @free_lid_switch()
  br label %93

93:                                               ; preds = %91, %51
  %94 = call i32 (...) @free_ebook_switch()
  br label %95

95:                                               ; preds = %93, %45
  %96 = call i32 (...) @free_power_button()
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %83, %38, %24, %16, %8
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @machine_is_olpc(...) #1

declare dso_local i32 @mfd_cell_enable(%struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @setup_power_button(%struct.platform_device*) #1

declare dso_local i32 @setup_ebook_switch(%struct.platform_device*) #1

declare dso_local i32 @setup_lid_switch(%struct.platform_device*) #1

declare dso_local i32 @setup_lid_events(...) #1

declare dso_local i32 @setup_ec_sci(...) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @process_sci_queue(i32) #1

declare dso_local i32 @send_ebook_state(...) #1

declare dso_local i32 @detect_lid_state(...) #1

declare dso_local i32 @send_lid_state(...) #1

declare dso_local i32 @setup_sci_interrupt(%struct.platform_device*) #1

declare dso_local i32 @olpc_ec_mask_write(i32) #1

declare dso_local i32 @free_ec_sci(...) #1

declare dso_local i32 @free_lid_events(...) #1

declare dso_local i32 @free_lid_switch(...) #1

declare dso_local i32 @free_ebook_switch(...) #1

declare dso_local i32 @free_power_button(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
