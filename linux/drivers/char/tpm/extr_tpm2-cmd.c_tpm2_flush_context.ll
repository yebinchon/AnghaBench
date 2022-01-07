; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_flush_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_flush_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_buf = type { i32 }

@TPM2_ST_NO_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_FLUSH_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"0x%08x was not flushed, out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"flushing context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm2_flush_context(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_buf, align 4
  %6 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @TPM2_ST_NO_SESSIONS, align 4
  %8 = load i32, i32* @TPM2_CC_FLUSH_CONTEXT, align 4
  %9 = call i32 @tpm_buf_init(%struct.tpm_buf* %5, i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_warn(i32* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %5, i32 %18)
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %21 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %20, %struct.tpm_buf* %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %5)
  br label %23

23:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
