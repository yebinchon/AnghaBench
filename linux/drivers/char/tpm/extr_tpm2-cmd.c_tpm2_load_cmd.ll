; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_load_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_load_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.trusted_key_payload = type { i32, i32* }
%struct.trusted_key_options = type { i32, i32 }
%struct.tpm_buf = type { i32, i32* }

@E2BIG = common dso_local global i32 0, align 4
@TPM2_ST_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_LOAD = common dso_local global i32 0, align 4
@TPM2_RS_PW = common dso_local global i32 0, align 4
@TPM_DIGEST_SIZE = common dso_local global i32 0, align 4
@TPM_BUF_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"loading blob\00", align 1
@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, %struct.trusted_key_payload*, %struct.trusted_key_options*, i32*)* @tpm2_load_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_load_cmd(%struct.tpm_chip* %0, %struct.trusted_key_payload* %1, %struct.trusted_key_options* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca %struct.trusted_key_payload*, align 8
  %8 = alloca %struct.trusted_key_options*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tpm_buf, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store %struct.trusted_key_payload* %1, %struct.trusted_key_payload** %7, align 8
  store %struct.trusted_key_options* %2, %struct.trusted_key_options** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %16 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @be16_to_cpup(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %22 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 2
  %25 = icmp ugt i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @E2BIG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %104

29:                                               ; preds = %4
  %30 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %31 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = add i32 2, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i32 @be16_to_cpup(i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add i32 %38, %39
  %41 = add i32 %40, 4
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %44 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load i32, i32* @E2BIG, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %104

50:                                               ; preds = %29
  %51 = load i32, i32* @TPM2_ST_SESSIONS, align 4
  %52 = load i32, i32* @TPM2_CC_LOAD, align 4
  %53 = call i32 @tpm_buf_init(%struct.tpm_buf* %10, i32 %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %104

58:                                               ; preds = %50
  %59 = load %struct.trusted_key_options*, %struct.trusted_key_options** %8, align 8
  %60 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %10, i32 %61)
  %63 = load i32, i32* @TPM2_RS_PW, align 4
  %64 = load %struct.trusted_key_options*, %struct.trusted_key_options** %8, align 8
  %65 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %68 = call i32 @tpm2_buf_append_auth(%struct.tpm_buf* %10, i32 %63, i32* null, i32 0, i32 0, i32 %66, i32 %67)
  %69 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %70 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @tpm_buf_append(%struct.tpm_buf* %10, i32* %71, i32 %72)
  %74 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TPM_BUF_OVERFLOW, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %58
  %80 = load i32, i32* @E2BIG, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  br label %95

82:                                               ; preds = %58
  %83 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %84 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %83, %struct.tpm_buf* %10, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %10, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = call i32 @be32_to_cpup(i32* %91)
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %87, %82
  br label %95

95:                                               ; preds = %94, %79
  %96 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %10)
  %97 = load i32, i32* %14, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @EPERM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %56, %47, %26
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm2_buf_append_auth(%struct.tpm_buf*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @tpm_buf_append(%struct.tpm_buf*, i32*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
