; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_tpm_sign.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_tpm_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_buf = type { i64 }

@TPM_NONCE_SIZE = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@TPM_ORD_SIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"oiap failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"tpm_get_random failed (%d)\0A\00", align 1
@TPM_TAG_RQU_AUTH1_COMMAND = common dso_local global i32 0, align 4
@TPM_SIGN_SIZE = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"authhmac failed (%d)\0A\00", align 1
@TPM_DATA_OFFSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"TSS_checkhmac1 failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_buf*, i32, i8*, i8*, i32, i8*, i32)* @tpm_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_sign(%struct.tpm_buf* %0, i32 %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tpm_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.tpm_buf* %0, %struct.tpm_buf** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %30 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  %33 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i8 0, i8* %21, align 1
  %36 = load i32, i32* @TPM_ORD_SIGN, align 4
  %37 = call i32 @htonl(i32 %36)
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @htonl(i32 %38)
  store i32 %39, i32* %23, align 4
  %40 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %41 = call i32 @oiap(%struct.tpm_buf* %40, i32* %20, i8* %32)
  store i32 %41, i32* %24, align 4
  %42 = load i32, i32* %24, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %7
  %45 = load i32, i32* %24, align 4
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %24, align 4
  store i32 %47, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %151

48:                                               ; preds = %7
  %49 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %50 = call i32 @tpm_get_random(i32* null, i8* %29, i32 %49)
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %24, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %24, align 4
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %24, align 4
  store i32 %56, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %151

57:                                               ; preds = %48
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %60 = load i8, i8* %21, align 1
  %61 = load i32, i32* %13, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @TSS_authhmac(i8* %35, i8* %58, i32 %59, i8* %32, i8* %29, i8 zeroext %60, i32 4, i32* %22, i32 4, i32* %23, i32 %61, i8* %62, i32 0, i32 0)
  store i32 %63, i32* %24, align 4
  %64 = load i32, i32* %24, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %24, align 4
  store i32 %67, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %151

68:                                               ; preds = %57
  %69 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %70 = call i32 @INIT_BUF(%struct.tpm_buf* %69)
  %71 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %72 = load i32, i32* @TPM_TAG_RQU_AUTH1_COMMAND, align 4
  %73 = call i32 @store16(%struct.tpm_buf* %71, i32 %72)
  %74 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %75 = load i32, i32* @TPM_SIGN_SIZE, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @store32(%struct.tpm_buf* %74, i32 %77)
  %79 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %80 = load i32, i32* @TPM_ORD_SIGN, align 4
  %81 = call i32 @store32(%struct.tpm_buf* %79, i32 %80)
  %82 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @store32(%struct.tpm_buf* %82, i32 %83)
  %85 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @store32(%struct.tpm_buf* %85, i32 %86)
  %88 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @storebytes(%struct.tpm_buf* %88, i8* %89, i32 %90)
  %92 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %93 = load i32, i32* %20, align 4
  %94 = call i32 @store32(%struct.tpm_buf* %92, i32 %93)
  %95 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %96 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %97 = call i32 @storebytes(%struct.tpm_buf* %95, i8* %29, i32 %96)
  %98 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %99 = load i8, i8* %21, align 1
  %100 = call i32 @store8(%struct.tpm_buf* %98, i8 zeroext %99)
  %101 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %102 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %103 = call i32 @storebytes(%struct.tpm_buf* %101, i8* %35, i32 %102)
  %104 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %105 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @MAX_BUF_SIZE, align 4
  %108 = call i32 @trusted_tpm_send(i64 %106, i32 %107)
  store i32 %108, i32* %24, align 4
  %109 = load i32, i32* %24, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %68
  %112 = load i32, i32* %24, align 4
  %113 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %24, align 4
  store i32 %114, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %151

115:                                              ; preds = %68
  %116 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %117 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %120 = call i32 @LOAD32(i64 %118, i64 %119)
  store i32 %120, i32* %23, align 4
  %121 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %122 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %22, align 4
  %125 = load i8*, i8** %11, align 8
  %126 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %127 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %128 = load i32, i32* %23, align 4
  %129 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %130 = add i64 %129, 4
  %131 = call i32 @TSS_checkhmac1(i64 %123, i32 %124, i8* %29, i8* %125, i32 %126, i32 4, i64 %127, i32 %128, i64 %130, i32 0, i32 0)
  store i32 %131, i32* %24, align 4
  %132 = load i32, i32* %24, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %115
  %135 = load i32, i32* %24, align 4
  %136 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %24, align 4
  store i32 %137, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %151

138:                                              ; preds = %115
  %139 = load i8*, i8** %14, align 8
  %140 = load %struct.tpm_buf*, %struct.tpm_buf** %9, align 8
  %141 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %144 = add nsw i64 %142, %143
  %145 = add i64 %144, 4
  %146 = load i32, i32* %23, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @min(i32 %146, i32 %147)
  %149 = call i32 @memcpy(i8* %139, i64 %145, i32 %148)
  %150 = load i32, i32* %23, align 4
  store i32 %150, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %151

151:                                              ; preds = %138, %134, %111, %66, %53, %44
  %152 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @oiap(%struct.tpm_buf*, i32*, i8*) #2

declare dso_local i32 @pr_info(i8*, i32) #2

declare dso_local i32 @tpm_get_random(i32*, i8*, i32) #2

declare dso_local i32 @TSS_authhmac(i8*, i8*, i32, i8*, i8*, i8 zeroext, i32, i32*, i32, i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @INIT_BUF(%struct.tpm_buf*) #2

declare dso_local i32 @store16(%struct.tpm_buf*, i32) #2

declare dso_local i32 @store32(%struct.tpm_buf*, i32) #2

declare dso_local i32 @storebytes(%struct.tpm_buf*, i8*, i32) #2

declare dso_local i32 @store8(%struct.tpm_buf*, i8 zeroext) #2

declare dso_local i32 @trusted_tpm_send(i64, i32) #2

declare dso_local i32 @LOAD32(i64, i64) #2

declare dso_local i32 @TSS_checkhmac1(i64, i32, i8*, i8*, i32, i32, i64, i32, i64, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i64, i32) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
