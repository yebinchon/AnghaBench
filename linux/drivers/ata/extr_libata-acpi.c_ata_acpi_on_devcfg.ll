; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_on_devcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_on_devcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ata_port* }
%struct.ata_port = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ATA_FLAG_ACPI_SATA = common dso_local global i32 0, align 4
@ATA_DFLAG_ACPI_PENDING = common dso_local global i32 0, align 4
@ATA_EHI_DID_HARDRESET = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to IDENTIFY after ACPI commands\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@ATA_DFLAG_ACPI_FAILED = common dso_local global i32 0, align 4
@ATA_DFLAG_ACPI_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ACPI: failed the second time, disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_acpi_on_devcfg(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_eh_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  store %struct.ata_port* %13, %struct.ata_port** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.ata_eh_context* %16, %struct.ata_eh_context** %5, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATA_FLAG_ACPI_SATA, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %23 = call i32 @ata_dev_acpi_handle(%struct.ata_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %136

26:                                               ; preds = %1
  %27 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATA_DFLAG_ACPI_PENDING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %38 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ATA_EHI_DID_HARDRESET, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36, %33
  store i32 0, i32* %2, align 4
  br label %136

45:                                               ; preds = %36, %26
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %50 = call i32 @ata_acpi_push_id(%struct.ata_device* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %86

59:                                               ; preds = %53, %48
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %62 = call i32 @ata_acpi_exec_tfs(%struct.ata_device* %61, i32* %7)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %86

66:                                               ; preds = %60
  %67 = load i32, i32* @ATA_DFLAG_ACPI_PENDING, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %70 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %77 = call i32 @ata_dev_reread_id(%struct.ata_device* %76, i32 0)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %82 = call i32 @ata_dev_err(%struct.ata_device* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %136

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %66
  store i32 0, i32* %2, align 4
  br label %136

86:                                               ; preds = %65, %58
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %96 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %136

102:                                              ; preds = %94, %91, %86
  %103 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %104 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ATA_DFLAG_ACPI_FAILED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* @ATA_DFLAG_ACPI_FAILED, align 4
  %111 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %112 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %136

116:                                              ; preds = %102
  %117 = load i32, i32* @ATA_DFLAG_ACPI_DISABLED, align 4
  %118 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %119 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %123 = call i32 @ata_dev_warn(%struct.ata_device* %122, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %116
  %127 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %128 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %136

134:                                              ; preds = %126, %116
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %133, %109, %101, %85, %80, %44, %25
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @ata_dev_acpi_handle(%struct.ata_device*) #1

declare dso_local i32 @ata_acpi_push_id(%struct.ata_device*) #1

declare dso_local i32 @ata_acpi_exec_tfs(%struct.ata_device*, i32*) #1

declare dso_local i32 @ata_dev_reread_id(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_dev_err(%struct.ata_device*, i8*) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
