; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_cram.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_cram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"invalid challenge %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"HMAC error\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"EVP_EncodeBlock error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @cram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cram(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca [33 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i8* @xmalloc(i32 %18)
  store i8* %19, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @EVP_DecodeBlock(i8* %20, i8* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %3
  %30 = call i32 (...) @EVP_md5()
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = load i8*, i8** %15, align 8
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %37 = call i32 @HMAC(i32 %30, i8* %31, i32 %33, i8* %34, i32 %35, i8* %36, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %29
  %40 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %29
  %42 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 32
  store i8 0, i8* %42, align 16
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %73, %41
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = ashr i32 %51, 4
  %53 = and i32 %52, 15
  %54 = trunc i32 %53 to i8
  %55 = call signext i8 @hexchar(i8 zeroext %54)
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 2, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 %58
  store i8 %55, i8* %59, align 1
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 15
  %66 = trunc i32 %65 to i8
  %67 = call signext i8 @hexchar(i8 zeroext %66)
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 %71
  store i8 %67, i8* %72, align 1
  br label %73

73:                                               ; preds = %46
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %43

76:                                               ; preds = %43
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds [33 x i8], [33 x i8]* %12, i64 0, i64 0
  %79 = call i8* @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %77, i8* %78)
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @strlen(i8* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ENCODED_SIZE(i32 %82)
  %84 = call i8* @xmallocz(i32 %83)
  store i8* %84, i8** %14, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @EVP_EncodeBlock(i8* %85, i8* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %76
  %94 = load i8*, i8** %14, align 8
  ret i8* %94
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @EVP_DecodeBlock(i8*, i8*, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @HMAC(i32, i8*, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local signext i8 @hexchar(i8 zeroext) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

declare dso_local i8* @xmallocz(i32) #1

declare dso_local i32 @ENCODED_SIZE(i32) #1

declare dso_local i32 @EVP_EncodeBlock(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
