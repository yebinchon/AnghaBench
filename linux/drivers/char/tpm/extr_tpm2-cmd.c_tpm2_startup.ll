; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_buf = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"starting up the TPM manually\0A\00", align 1
@TPM2_ST_NO_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_STARTUP = common dso_local global i32 0, align 4
@TPM2_SU_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"attempting to start the TPM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @tpm2_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_startup(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_buf, align 4
  %5 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %6 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %7 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %6, i32 0, i32 0
  %8 = call i32 @dev_info(i32* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @TPM2_ST_NO_SESSIONS, align 4
  %10 = load i32, i32* @TPM2_CC_STARTUP, align 4
  %11 = call i32 @tpm_buf_init(%struct.tpm_buf* %4, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @TPM2_SU_CLEAR, align 4
  %18 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %4, i32 %17)
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %20 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %19, %struct.tpm_buf* %4, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %5, align 4
  %21 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %4)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %16, %14
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u16(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
