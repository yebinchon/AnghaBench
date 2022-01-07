; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm1-cmd.c_tpm1_getcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm1-cmd.c_tpm1_getcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_buf = type { i32* }

@TPM_TAG_RQU_COMMAND = common dso_local global i32 0, align 4
@TPM_ORD_GET_CAP = common dso_local global i32 0, align 4
@TPM_CAP_VERSION_1_1 = common dso_local global i32 0, align 4
@TPM_CAP_VERSION_1_2 = common dso_local global i32 0, align 4
@TPM_CAP_FLAG_PERM = common dso_local global i32 0, align 4
@TPM_CAP_FLAG_VOL = common dso_local global i32 0, align 4
@TPM_CAP_FLAG = common dso_local global i32 0, align 4
@TPM_CAP_PROP = common dso_local global i32 0, align 4
@TPM_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm1_getcap(%struct.tpm_chip* %0, i32 %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tpm_buf, align 8
  %13 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* @TPM_TAG_RQU_COMMAND, align 4
  %15 = load i32, i32* @TPM_ORD_GET_CAP, align 4
  %16 = call i32 @tpm_buf_init(%struct.tpm_buf* %12, i32 %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %6, align 4
  br label %70

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TPM_CAP_VERSION_1_1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @TPM_CAP_VERSION_1_2, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %12, i32 %30)
  %32 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %12, i32 0)
  br label %51

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @TPM_CAP_FLAG_PERM, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @TPM_CAP_FLAG_VOL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @TPM_CAP_FLAG, align 4
  %43 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %12, i32 %42)
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @TPM_CAP_PROP, align 4
  %46 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %12, i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %12, i32 4)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %12, i32 %49)
  br label %51

51:                                               ; preds = %47, %29
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %52, %struct.tpm_buf* %12, i64 %53, i8* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %12, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %62 = add nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %51
  %68 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %12)
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %19
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i64, i8*) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
