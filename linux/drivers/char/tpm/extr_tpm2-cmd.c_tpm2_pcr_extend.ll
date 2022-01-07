; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_pcr_extend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_pcr_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tpm_digest = type { i32, i32 }
%struct.tpm_buf = type { i32 }
%struct.tpm2_null_auth_area = type { i64, i64, i64, i32 }

@TPM2_ST_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_PCR_EXTEND = common dso_local global i32 0, align 4
@TPM2_RS_PW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"attempting extend a PCR value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm2_pcr_extend(%struct.tpm_chip* %0, i32 %1, %struct.tpm_digest* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_digest*, align 8
  %8 = alloca %struct.tpm_buf, align 4
  %9 = alloca %struct.tpm2_null_auth_area, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tpm_digest* %2, %struct.tpm_digest** %7, align 8
  %12 = load i32, i32* @TPM2_ST_SESSIONS, align 4
  %13 = load i32, i32* @TPM2_CC_PCR_EXTEND, align 4
  %14 = call i32 @tpm_buf_init(%struct.tpm_buf* %8, i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %72

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %8, i32 %20)
  %22 = load i32, i32* @TPM2_RS_PW, align 4
  %23 = call i32 @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.tpm2_null_auth_area, %struct.tpm2_null_auth_area* %9, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.tpm2_null_auth_area, %struct.tpm2_null_auth_area* %9, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.tpm2_null_auth_area, %struct.tpm2_null_auth_area* %9, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.tpm2_null_auth_area, %struct.tpm2_null_auth_area* %9, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %8, i32 32)
  %29 = bitcast %struct.tpm2_null_auth_area* %9 to i8*
  %30 = call i32 @tpm_buf_append(%struct.tpm_buf* %8, i8* %29, i32 32)
  %31 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %32 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %8, i32 %33)
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %64, %19
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %38 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %35
  %42 = load %struct.tpm_digest*, %struct.tpm_digest** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.tpm_digest, %struct.tpm_digest* %42, i64 %44
  %46 = getelementptr inbounds %struct.tpm_digest, %struct.tpm_digest* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @tpm_buf_append_u16(%struct.tpm_buf* %8, i32 %47)
  %49 = load %struct.tpm_digest*, %struct.tpm_digest** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.tpm_digest, %struct.tpm_digest* %49, i64 %51
  %53 = getelementptr inbounds %struct.tpm_digest, %struct.tpm_digest* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to i8*
  %55 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %56 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @tpm_buf_append(%struct.tpm_buf* %8, i8* %54, i32 %62)
  br label %64

64:                                               ; preds = %41
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %35

67:                                               ; preds = %35
  %68 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %69 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %68, %struct.tpm_buf* %8, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %69, i32* %10, align 4
  %70 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %8)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @tpm_buf_append(%struct.tpm_buf*, i8*, i32) #1

declare dso_local i32 @tpm_buf_append_u16(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
