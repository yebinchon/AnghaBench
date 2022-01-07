; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_efi.c_tpm_read_log_efi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_efi.c_tpm_read_log_efi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.tpm_chip = type { i32, %struct.tpm_bios_log }
%struct.tpm_bios_log = type { i8*, i8* }
%struct.efi_tcg2_final_events_table = type { i32, i32, i64, i64, i32 }
%struct.linux_efi_tpm_eventlog = type { i32, i32, i64, i64, i32 }

@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@efi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EFI_INVALID_TABLE_ADDR = common dso_local global i64 0, align 8
@MEMREMAP_WB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not map UEFI TPM log table !\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not map UEFI TPM log table payload!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@efi_tpm_final_log_size = common dso_local global i32 0, align 4
@EFI_TCG2_EVENT_LOG_FORMAT_TCG_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not map UEFI TPM final log\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_read_log_efi(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.efi_tcg2_final_events_table*, align 8
  %5 = alloca %struct.linux_efi_tpm_eventlog*, align 8
  %6 = alloca %struct.tpm_bios_log*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  store %struct.efi_tcg2_final_events_table* null, %struct.efi_tcg2_final_events_table** %4, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %179

20:                                               ; preds = %1
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %22 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %179

27:                                               ; preds = %20
  %28 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %29 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %28, i32 0, i32 1
  store %struct.tpm_bios_log* %29, %struct.tpm_bios_log** %6, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %31 = load i32, i32* @MEMREMAP_WB, align 4
  %32 = call %struct.linux_efi_tpm_eventlog* @memremap(i64 %30, i32 32, i32 %31)
  store %struct.linux_efi_tpm_eventlog* %32, %struct.linux_efi_tpm_eventlog** %5, align 8
  %33 = load %struct.linux_efi_tpm_eventlog*, %struct.linux_efi_tpm_eventlog** %5, align 8
  %34 = icmp ne %struct.linux_efi_tpm_eventlog* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %179

39:                                               ; preds = %27
  %40 = load %struct.linux_efi_tpm_eventlog*, %struct.linux_efi_tpm_eventlog** %5, align 8
  %41 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, %struct.linux_efi_tpm_eventlog* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  %43 = load %struct.linux_efi_tpm_eventlog*, %struct.linux_efi_tpm_eventlog** %5, align 8
  %44 = call i32 @memunmap(%struct.linux_efi_tpm_eventlog* %43)
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 32, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @MEMREMAP_WB, align 4
  %51 = call %struct.linux_efi_tpm_eventlog* @memremap(i64 %45, i32 %49, i32 %50)
  store %struct.linux_efi_tpm_eventlog* %51, %struct.linux_efi_tpm_eventlog** %5, align 8
  %52 = load %struct.linux_efi_tpm_eventlog*, %struct.linux_efi_tpm_eventlog** %5, align 8
  %53 = icmp ne %struct.linux_efi_tpm_eventlog* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %39
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %179

58:                                               ; preds = %39
  %59 = load %struct.linux_efi_tpm_eventlog*, %struct.linux_efi_tpm_eventlog** %5, align 8
  %60 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, %struct.linux_efi_tpm_eventlog* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kmemdup(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %66 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %68 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %58
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %172

74:                                               ; preds = %58
  %75 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %76 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, i8* %77, i64 %79
  %81 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %82 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.linux_efi_tpm_eventlog*, %struct.linux_efi_tpm_eventlog** %5, align 8
  %84 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, %struct.linux_efi_tpm_eventlog* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %10, align 4
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 1), align 8
  %88 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %74
  %91 = load i32, i32* @efi_tpm_final_log_size, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @EFI_TCG2_EVENT_LOG_FORMAT_TCG_2, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %90, %74
  br label %172

98:                                               ; preds = %93
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 1), align 8
  %100 = load i32, i32* @efi_tpm_final_log_size, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 32, %101
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @MEMREMAP_WB, align 4
  %105 = call %struct.linux_efi_tpm_eventlog* @memremap(i64 %99, i32 %103, i32 %104)
  %106 = bitcast %struct.linux_efi_tpm_eventlog* %105 to %struct.efi_tcg2_final_events_table*
  store %struct.efi_tcg2_final_events_table* %106, %struct.efi_tcg2_final_events_table** %4, align 8
  %107 = load %struct.efi_tcg2_final_events_table*, %struct.efi_tcg2_final_events_table** %4, align 8
  %108 = icmp ne %struct.efi_tcg2_final_events_table* %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %98
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %112 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @kfree(i8* %113)
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %10, align 4
  br label %172

117:                                              ; preds = %98
  %118 = load %struct.linux_efi_tpm_eventlog*, %struct.linux_efi_tpm_eventlog** %5, align 8
  %119 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, %struct.linux_efi_tpm_eventlog* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @efi_tpm_final_log_size, align 4
  %122 = sext i32 %121 to i64
  %123 = sub nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* @efi_tpm_final_log_size, align 4
  %125 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %126 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @efi_tpm_final_log_size, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i8* @krealloc(i8* %127, i32 %130, i32 %131)
  store i8* %132, i8** %9, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %117
  %136 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %137 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @kfree(i8* %138)
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %10, align 4
  br label %172

142:                                              ; preds = %117
  %143 = load i8*, i8** %9, align 8
  %144 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %145 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  %146 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %147 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr i8, i8* %148, i64 %150
  %152 = load %struct.efi_tcg2_final_events_table*, %struct.efi_tcg2_final_events_table** %4, align 8
  %153 = getelementptr inbounds %struct.efi_tcg2_final_events_table, %struct.efi_tcg2_final_events_table* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.linux_efi_tpm_eventlog*, %struct.linux_efi_tpm_eventlog** %5, align 8
  %156 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, %struct.linux_efi_tpm_eventlog* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %154, %157
  %159 = load i32, i32* @efi_tpm_final_log_size, align 4
  %160 = call i32 @memcpy(i8* %151, i64 %158, i32 %159)
  %161 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %162 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr i8, i8* %163, i64 %165
  %167 = load i32, i32* @efi_tpm_final_log_size, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr i8, i8* %166, i64 %168
  %170 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %6, align 8
  %171 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %142, %135, %109, %97, %71
  %173 = load %struct.efi_tcg2_final_events_table*, %struct.efi_tcg2_final_events_table** %4, align 8
  %174 = bitcast %struct.efi_tcg2_final_events_table* %173 to %struct.linux_efi_tpm_eventlog*
  %175 = call i32 @memunmap(%struct.linux_efi_tpm_eventlog* %174)
  %176 = load %struct.linux_efi_tpm_eventlog*, %struct.linux_efi_tpm_eventlog** %5, align 8
  %177 = call i32 @memunmap(%struct.linux_efi_tpm_eventlog* %176)
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %172, %54, %35, %24, %17
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.linux_efi_tpm_eventlog* @memremap(i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memunmap(%struct.linux_efi_tpm_eventlog*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @krealloc(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
