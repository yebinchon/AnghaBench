; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_do_selftest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_do_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_buf = type { i32 }

@TPM2_ST_NO_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_SELF_TEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"attempting the self test\00", align 1
@TPM2_RC_TESTING = common dso_local global i32 0, align 4
@TPM2_RC_SUCCESS = common dso_local global i32 0, align 4
@TPM2_RC_INITIALIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @tpm2_do_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_do_selftest(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_buf, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %40, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = load i32, i32* @TPM2_ST_NO_SESSIONS, align 4
  %12 = load i32, i32* @TPM2_CC_SELF_TEST, align 4
  %13 = call i32 @tpm_buf_init(%struct.tpm_buf* %4, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @tpm_buf_append_u8(%struct.tpm_buf* %4, i32 %19)
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %22 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %21, %struct.tpm_buf* %4, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %4)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TPM2_RC_TESTING, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @TPM2_RC_SUCCESS, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TPM2_RC_INITIALIZE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @TPM2_RC_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %7

43:                                               ; preds = %7
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %37, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u8(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
