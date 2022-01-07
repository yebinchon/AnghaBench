; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_tpm_loadkey2.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_tpm_loadkey2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_buf = type { i32 }

@TPM_NONCE_SIZE = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@TPM_ORD_LOADKEY2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"oiap failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"tpm_get_random failed (%d)\0A\00", align 1
@TPM_TAG_RQU_AUTH1_COMMAND = common dso_local global i32 0, align 4
@TPM_LOADKEY2_SIZE = common dso_local global i64 0, align 8
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"authhmac failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"TSS_checkhmac1 failed (%d)\0A\00", align 1
@TPM_DATA_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_buf*, i64, i8*, i8*, i32, i64*)* @tpm_loadkey2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_loadkey2(%struct.tpm_buf* %0, i64 %1, i8* %2, i8* %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tpm_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.tpm_buf* %0, %struct.tpm_buf** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %23 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %30 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i8 0, i8* %19, align 1
  %33 = load i64, i64* @TPM_ORD_LOADKEY2, align 8
  %34 = call i64 @htonl(i64 %33)
  store i64 %34, i64* %20, align 8
  %35 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %36 = call i32 @oiap(%struct.tpm_buf* %35, i64* %18, i8* %29)
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %21, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %6
  %40 = load i32, i32* %21, align 4
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %21, align 4
  store i32 %42, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %129

43:                                               ; preds = %6
  %44 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %45 = call i32 @tpm_get_random(i32* null, i8* %26, i32 %44)
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %21, align 4
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %21, align 4
  store i32 %51, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %129

52:                                               ; preds = %43
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %55 = load i8, i8* %19, align 1
  %56 = load i32, i32* %12, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @TSS_authhmac(i8* %32, i8* %53, i32 %54, i8* %29, i8* %26, i8 zeroext %55, i32 8, i64* %20, i32 %56, i8* %57, i32 0, i32 0)
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %21, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %21, align 4
  store i32 %62, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %129

63:                                               ; preds = %52
  %64 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %65 = call i32 @INIT_BUF(%struct.tpm_buf* %64)
  %66 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %67 = load i32, i32* @TPM_TAG_RQU_AUTH1_COMMAND, align 4
  %68 = call i32 @store16(%struct.tpm_buf* %66, i32 %67)
  %69 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %70 = load i64, i64* @TPM_LOADKEY2_SIZE, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @store32(%struct.tpm_buf* %69, i64 %73)
  %75 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %76 = load i64, i64* @TPM_ORD_LOADKEY2, align 8
  %77 = call i32 @store32(%struct.tpm_buf* %75, i64 %76)
  %78 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @store32(%struct.tpm_buf* %78, i64 %79)
  %81 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @storebytes(%struct.tpm_buf* %81, i8* %82, i32 %83)
  %85 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %86 = load i64, i64* %18, align 8
  %87 = call i32 @store32(%struct.tpm_buf* %85, i64 %86)
  %88 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %89 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %90 = call i32 @storebytes(%struct.tpm_buf* %88, i8* %26, i32 %89)
  %91 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %92 = load i8, i8* %19, align 1
  %93 = call i32 @store8(%struct.tpm_buf* %91, i8 zeroext %92)
  %94 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %95 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %96 = call i32 @storebytes(%struct.tpm_buf* %94, i8* %32, i32 %95)
  %97 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %98 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MAX_BUF_SIZE, align 4
  %101 = call i32 @trusted_tpm_send(i32 %99, i32 %100)
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* %21, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %63
  %105 = load i32, i32* %21, align 4
  %106 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %21, align 4
  store i32 %107, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %129

108:                                              ; preds = %63
  %109 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %110 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %20, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %115 = call i32 @TSS_checkhmac1(i32 %111, i64 %112, i8* %26, i8* %113, i32 %114, i32 0, i32 0)
  store i32 %115, i32* %21, align 4
  %116 = load i32, i32* %21, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load i32, i32* %21, align 4
  %120 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %21, align 4
  store i32 %121, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %129

122:                                              ; preds = %108
  %123 = load %struct.tpm_buf*, %struct.tpm_buf** %8, align 8
  %124 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @TPM_DATA_OFFSET, align 4
  %127 = call i64 @LOAD32(i32 %125, i32 %126)
  %128 = load i64*, i64** %13, align 8
  store i64 %127, i64* %128, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %129

129:                                              ; preds = %122, %118, %104, %61, %48, %39
  %130 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @htonl(i64) #2

declare dso_local i32 @oiap(%struct.tpm_buf*, i64*, i8*) #2

declare dso_local i32 @pr_info(i8*, i32) #2

declare dso_local i32 @tpm_get_random(i32*, i8*, i32) #2

declare dso_local i32 @TSS_authhmac(i8*, i8*, i32, i8*, i8*, i8 zeroext, i32, i64*, i32, i8*, i32, i32) #2

declare dso_local i32 @INIT_BUF(%struct.tpm_buf*) #2

declare dso_local i32 @store16(%struct.tpm_buf*, i32) #2

declare dso_local i32 @store32(%struct.tpm_buf*, i64) #2

declare dso_local i32 @storebytes(%struct.tpm_buf*, i8*, i32) #2

declare dso_local i32 @store8(%struct.tpm_buf*, i8 zeroext) #2

declare dso_local i32 @trusted_tpm_send(i32, i32) #2

declare dso_local i32 @TSS_checkhmac1(i32, i64, i8*, i8*, i32, i32, i32) #2

declare dso_local i64 @LOAD32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
