; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_public_key.c_software_key_determine_akcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_public_key.c_software_key_determine_akcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.public_key = type { i8* }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"pkcs1pad(%s)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"pkcs1pad(%s,%s)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.public_key*, i8*)* @software_key_determine_akcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @software_key_determine_akcipher(i8* %0, i8* %1, %struct.public_key* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.public_key*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.public_key* %2, %struct.public_key** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %12 = zext i32 %11 to i64
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %22 = load %struct.public_key*, %struct.public_key** %8, align 8
  %23 = getelementptr inbounds %struct.public_key, %struct.public_key* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %10, align 4
  br label %34

26:                                               ; preds = %16
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %29 = load %struct.public_key*, %struct.public_key** %8, align 8
  %30 = getelementptr inbounds %struct.public_key, %struct.public_key* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %26, %19
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  store i32 %43, i32* %5, align 4
  br label %57

44:                                               ; preds = %4
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.public_key*, %struct.public_key** %8, align 8
  %51 = getelementptr inbounds %struct.public_key, %struct.public_key* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcpy(i8* %49, i8* %52)
  store i32 0, i32* %5, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOPKG, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %48, %42
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
