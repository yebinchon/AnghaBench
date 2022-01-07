; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_shared.c_strhashcategory.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_shared.c_strhashcategory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_CATEGORY_UNDEFINED_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_RAW_HASH_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_RAW_HASH_SALTED_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_RAW_HASH_AUTHENTICATED_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_RAW_CIPHER_KPA_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_GENERIC_KDF_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_NETWORK_PROTOCOL_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_FORUM_SOFTWARE_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_DATABASE_SERVER_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_NETWORK_SERVER_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_RAW_CHECKSUM_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_OS_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_EAS_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_ARCHIVE_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_FDE_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_DOCUMENTS_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_PASSWORD_MANAGER_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_OTP_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_PLAIN_STR = common dso_local global i8* null, align 8
@HASH_CATEGORY_FRAMEWORK_STR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strhashcategory(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %45 [
    i32 128, label %5
    i32 131, label %7
    i32 129, label %9
    i32 130, label %11
    i32 132, label %13
    i32 140, label %15
    i32 139, label %17
    i32 142, label %19
    i32 146, label %21
    i32 138, label %23
    i32 133, label %25
    i32 137, label %27
    i32 144, label %29
    i32 147, label %31
    i32 143, label %33
    i32 145, label %35
    i32 135, label %37
    i32 136, label %39
    i32 134, label %41
    i32 141, label %43
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @HASH_CATEGORY_UNDEFINED_STR, align 8
  store i8* %6, i8** %2, align 8
  br label %46

7:                                                ; preds = %1
  %8 = load i8*, i8** @HASH_CATEGORY_RAW_HASH_STR, align 8
  store i8* %8, i8** %2, align 8
  br label %46

9:                                                ; preds = %1
  %10 = load i8*, i8** @HASH_CATEGORY_RAW_HASH_SALTED_STR, align 8
  store i8* %10, i8** %2, align 8
  br label %46

11:                                               ; preds = %1
  %12 = load i8*, i8** @HASH_CATEGORY_RAW_HASH_AUTHENTICATED_STR, align 8
  store i8* %12, i8** %2, align 8
  br label %46

13:                                               ; preds = %1
  %14 = load i8*, i8** @HASH_CATEGORY_RAW_CIPHER_KPA_STR, align 8
  store i8* %14, i8** %2, align 8
  br label %46

15:                                               ; preds = %1
  %16 = load i8*, i8** @HASH_CATEGORY_GENERIC_KDF_STR, align 8
  store i8* %16, i8** %2, align 8
  br label %46

17:                                               ; preds = %1
  %18 = load i8*, i8** @HASH_CATEGORY_NETWORK_PROTOCOL_STR, align 8
  store i8* %18, i8** %2, align 8
  br label %46

19:                                               ; preds = %1
  %20 = load i8*, i8** @HASH_CATEGORY_FORUM_SOFTWARE_STR, align 8
  store i8* %20, i8** %2, align 8
  br label %46

21:                                               ; preds = %1
  %22 = load i8*, i8** @HASH_CATEGORY_DATABASE_SERVER_STR, align 8
  store i8* %22, i8** %2, align 8
  br label %46

23:                                               ; preds = %1
  %24 = load i8*, i8** @HASH_CATEGORY_NETWORK_SERVER_STR, align 8
  store i8* %24, i8** %2, align 8
  br label %46

25:                                               ; preds = %1
  %26 = load i8*, i8** @HASH_CATEGORY_RAW_CHECKSUM_STR, align 8
  store i8* %26, i8** %2, align 8
  br label %46

27:                                               ; preds = %1
  %28 = load i8*, i8** @HASH_CATEGORY_OS_STR, align 8
  store i8* %28, i8** %2, align 8
  br label %46

29:                                               ; preds = %1
  %30 = load i8*, i8** @HASH_CATEGORY_EAS_STR, align 8
  store i8* %30, i8** %2, align 8
  br label %46

31:                                               ; preds = %1
  %32 = load i8*, i8** @HASH_CATEGORY_ARCHIVE_STR, align 8
  store i8* %32, i8** %2, align 8
  br label %46

33:                                               ; preds = %1
  %34 = load i8*, i8** @HASH_CATEGORY_FDE_STR, align 8
  store i8* %34, i8** %2, align 8
  br label %46

35:                                               ; preds = %1
  %36 = load i8*, i8** @HASH_CATEGORY_DOCUMENTS_STR, align 8
  store i8* %36, i8** %2, align 8
  br label %46

37:                                               ; preds = %1
  %38 = load i8*, i8** @HASH_CATEGORY_PASSWORD_MANAGER_STR, align 8
  store i8* %38, i8** %2, align 8
  br label %46

39:                                               ; preds = %1
  %40 = load i8*, i8** @HASH_CATEGORY_OTP_STR, align 8
  store i8* %40, i8** %2, align 8
  br label %46

41:                                               ; preds = %1
  %42 = load i8*, i8** @HASH_CATEGORY_PLAIN_STR, align 8
  store i8* %42, i8** %2, align 8
  br label %46

43:                                               ; preds = %1
  %44 = load i8*, i8** @HASH_CATEGORY_FRAMEWORK_STR, align 8
  store i8* %44, i8** %2, align 8
  br label %46

45:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %46

46:                                               ; preds = %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
