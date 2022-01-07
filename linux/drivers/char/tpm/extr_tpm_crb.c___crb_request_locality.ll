; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c___crb_request_locality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c___crb_request_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.crb_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CRB_LOC_STATE_LOC_ASSIGNED = common dso_local global i32 0, align 4
@CRB_LOC_STATE_TPM_REG_VALID_STS = common dso_local global i32 0, align 4
@CRB_LOC_CTRL_REQUEST_ACCESS = common dso_local global i32 0, align 4
@TPM2_TIMEOUT_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TPM_LOC_STATE_x.requestAccess timed out\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.crb_priv*, i32)* @__crb_request_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__crb_request_locality(%struct.device* %0, %struct.crb_priv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.crb_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.crb_priv* %1, %struct.crb_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @CRB_LOC_STATE_LOC_ASSIGNED, align 4
  %10 = load i32, i32* @CRB_LOC_STATE_TPM_REG_VALID_STS, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.crb_priv*, %struct.crb_priv** %6, align 8
  %13 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* @CRB_LOC_CTRL_REQUEST_ACCESS, align 4
  %19 = load %struct.crb_priv*, %struct.crb_priv** %6, align 8
  %20 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @iowrite32(i32 %18, i32* %22)
  %24 = load %struct.crb_priv*, %struct.crb_priv** %6, align 8
  %25 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @TPM2_TIMEOUT_C, align 4
  %31 = call i32 @crb_wait_for_reg_32(i32* %27, i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %17
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @dev_warn(%struct.device* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ETIME, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %33, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
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
