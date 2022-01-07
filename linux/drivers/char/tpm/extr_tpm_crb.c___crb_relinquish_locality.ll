; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c___crb_relinquish_locality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c___crb_relinquish_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.crb_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CRB_LOC_STATE_LOC_ASSIGNED = common dso_local global i32 0, align 4
@CRB_LOC_STATE_TPM_REG_VALID_STS = common dso_local global i32 0, align 4
@CRB_LOC_CTRL_RELINQUISH = common dso_local global i32 0, align 4
@TPM2_TIMEOUT_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TPM_LOC_STATE_x.requestAccess timed out\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.crb_priv*, i32)* @__crb_relinquish_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__crb_relinquish_locality(%struct.device* %0, %struct.crb_priv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.crb_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.crb_priv* %1, %struct.crb_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @CRB_LOC_STATE_LOC_ASSIGNED, align 4
  %11 = load i32, i32* @CRB_LOC_STATE_TPM_REG_VALID_STS, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @CRB_LOC_STATE_TPM_REG_VALID_STS, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.crb_priv*, %struct.crb_priv** %6, align 8
  %15 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load i32, i32* @CRB_LOC_CTRL_RELINQUISH, align 4
  %21 = load %struct.crb_priv*, %struct.crb_priv** %6, align 8
  %22 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @iowrite32(i32 %20, i32* %24)
  %26 = load %struct.crb_priv*, %struct.crb_priv** %6, align 8
  %27 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @TPM2_TIMEOUT_C, align 4
  %33 = call i32 @crb_wait_for_reg_32(i32* %29, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %19
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @dev_warn(%struct.device* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ETIME, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %35, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @crb_wait_for_reg_32(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
