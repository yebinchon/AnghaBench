; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_generate_lm_hash.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_generate_lm_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NTLM_LM_PLAINTEXT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @generate_lm_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_lm_hash(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** @NTLM_LM_PLAINTEXT, align 8
  store i8* %14, i8** %5, align 8
  %15 = call i32 @memset(i8** %6, i32 0, i32 8)
  %16 = call i32 @memset(i8** %7, i32 0, i32 8)
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20)
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i64 [ %21, %19 ], [ 0, %22 ]
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @MIN(i32 7, i64 %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp ugt i64 %28, 7
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @MIN(i32 14, i64 %31)
  %33 = sub nsw i32 %32, 7
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 0, %34 ]
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %38

38:                                               ; preds = %52, %35
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @toupper(i8 signext %46)
  %48 = trunc i64 %47 to i8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 %48, i8* %51, align 1
  br label %52

52:                                               ; preds = %42
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %38

55:                                               ; preds = %38
  store i64 0, i64* %13, align 8
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, 7
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @toupper(i8 signext %65)
  %67 = trunc i64 %66 to i8
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 %67, i8* %70, align 1
  br label %71

71:                                               ; preds = %60
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %13, align 8
  br label %56

74:                                               ; preds = %56
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @des_key_from_password(i8** %10, i8* %75, i64 %76)
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @des_key_from_password(i8** %11, i8* %78, i64 %79)
  %81 = load i8**, i8*** %3, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = call i64 @ntlm_des_encrypt(i8** %82, i8** %5, i8** %10)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load i8**, i8*** %3, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = call i64 @ntlm_des_encrypt(i8** %87, i8** %5, i8** %11)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %85, %74
  %91 = phi i1 [ false, %74 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  ret i32 %92
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i64 @toupper(i8 signext) #1

declare dso_local i32 @des_key_from_password(i8**, i8*, i64) #1

declare dso_local i64 @ntlm_des_encrypt(i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
