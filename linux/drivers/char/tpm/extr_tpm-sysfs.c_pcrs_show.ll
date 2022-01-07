; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_pcrs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_pcrs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tpm_chip = type { i32 }

@TPM_DIGEST_SIZE = common dso_local global i32 0, align 4
@TPM_CAP_PROP_PCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"attempting to determine the number of PCRS\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PCR-%02d: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pcrs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcrs_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.tpm_chip*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %14, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call %struct.tpm_chip* @to_tpm_chip(%struct.device* %22)
  store %struct.tpm_chip* %23, %struct.tpm_chip** %15, align 8
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %25 = call i64 @tpm_try_get_ops(%struct.tpm_chip* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

28:                                               ; preds = %3
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %30 = load i32, i32* @TPM_CAP_PROP_PCR, align 4
  %31 = call i64 @tpm1_getcap(%struct.tpm_chip* %29, i32 %30, %struct.TYPE_3__* %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %35 = call i32 @tpm_put_ops(%struct.tpm_chip* %34)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be32_to_cpu(i32 %38)
  store i64 %39, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %40

40:                                               ; preds = %81, %36
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %40
  %45 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @tpm1_pcr_read(%struct.tpm_chip* %45, i64 %46, i32* %20)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  store i8* %50, i8** %14, align 8
  br label %84

51:                                               ; preds = %44
  %52 = load i8*, i8** %14, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i8*, i8** %14, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %14, align 8
  store i64 0, i64* %12, align 8
  br label %58

58:                                               ; preds = %72, %51
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i8*, i8** %14, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i32, i32* %20, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** %14, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %14, align 8
  br label %72

72:                                               ; preds = %63
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %12, align 8
  br label %58

75:                                               ; preds = %58
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8*, i8** %14, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %14, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %11, align 8
  br label %40

84:                                               ; preds = %49, %40
  %85 = load %struct.tpm_chip*, %struct.tpm_chip** %15, align 8
  %86 = call i32 @tpm_put_ops(%struct.tpm_chip* %85)
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

93:                                               ; preds = %84, %33, %27
  %94 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tpm_chip* @to_tpm_chip(%struct.device*) #2

declare dso_local i64 @tpm_try_get_ops(%struct.tpm_chip*) #2

declare dso_local i64 @tpm1_getcap(%struct.tpm_chip*, i32, %struct.TYPE_3__*, i8*, i32) #2

declare dso_local i32 @tpm_put_ops(%struct.tpm_chip*) #2

declare dso_local i64 @be32_to_cpu(i32) #2

declare dso_local i64 @tpm1_pcr_read(%struct.tpm_chip*, i64, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
