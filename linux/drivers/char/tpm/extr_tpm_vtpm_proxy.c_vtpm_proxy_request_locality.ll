; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_request_locality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_request_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32 }
%struct.tpm_buf = type { i64 }
%struct.tpm_header = type { i32 }
%struct.proxy_dev = type { i32 }

@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@TPM2_ST_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_SET_LOCALITY = common dso_local global i32 0, align 4
@TPM_TAG_RQU_COMMAND = common dso_local global i32 0, align 4
@TPM_ORD_SET_LOCALITY = common dso_local global i32 0, align 4
@STATE_DRIVER_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"attempting to set locality\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @vtpm_proxy_request_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpm_proxy_request_locality(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_buf, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tpm_header*, align 8
  %9 = alloca %struct.proxy_dev*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %11 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %10, i32 0, i32 1
  %12 = call %struct.proxy_dev* @dev_get_drvdata(i32* %11)
  store %struct.proxy_dev* %12, %struct.proxy_dev** %9, align 8
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @TPM2_ST_SESSIONS, align 4
  %21 = load i32, i32* @TPM2_CC_SET_LOCALITY, align 4
  %22 = call i32 @tpm_buf_init(%struct.tpm_buf* %6, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @TPM_TAG_RQU_COMMAND, align 4
  %25 = load i32, i32* @TPM_ORD_SET_LOCALITY, align 4
  %26 = call i32 @tpm_buf_init(%struct.tpm_buf* %6, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @tpm_buf_append_u8(%struct.tpm_buf* %6, i32 %33)
  %35 = load i32, i32* @STATE_DRIVER_COMMAND, align 4
  %36 = load %struct.proxy_dev*, %struct.proxy_dev** %9, align 8
  %37 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %41 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %40, %struct.tpm_buf* %6, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @STATE_DRIVER_COMMAND, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.proxy_dev*, %struct.proxy_dev** %9, align 8
  %45 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %5, align 4
  br label %64

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %6, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.tpm_header*
  store %struct.tpm_header* %55, %struct.tpm_header** %8, align 8
  %56 = load %struct.tpm_header*, %struct.tpm_header** %8, align 8
  %57 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %50
  %65 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %6)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %30
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.proxy_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u8(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
