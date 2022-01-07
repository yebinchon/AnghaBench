; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_mscode_parser.c_mscode_note_digest_algo.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_mscode_parser.c_mscode_note_digest_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pefile_context = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Unknown OID: %s\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Unsupported content type: %u\0A\00", align 1
@ENOPKG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mscode_note_digest_algo(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pefile_context*, align 8
  %13 = alloca [50 x i8], align 16
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.pefile_context*
  store %struct.pefile_context* %16, %struct.pefile_context** %12, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @look_up_OID(i8* %17, i64 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  switch i32 %20, label %51 [
    i32 134, label %21
    i32 133, label %24
    i32 132, label %27
    i32 130, label %30
    i32 129, label %33
    i32 128, label %36
    i32 131, label %39
    i32 135, label %42
  ]

21:                                               ; preds = %5
  %22 = load %struct.pefile_context*, %struct.pefile_context** %12, align 8
  %23 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  br label %56

24:                                               ; preds = %5
  %25 = load %struct.pefile_context*, %struct.pefile_context** %12, align 8
  %26 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  br label %56

27:                                               ; preds = %5
  %28 = load %struct.pefile_context*, %struct.pefile_context** %12, align 8
  %29 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 8
  br label %56

30:                                               ; preds = %5
  %31 = load %struct.pefile_context*, %struct.pefile_context** %12, align 8
  %32 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 8
  br label %56

33:                                               ; preds = %5
  %34 = load %struct.pefile_context*, %struct.pefile_context** %12, align 8
  %35 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %35, align 8
  br label %56

36:                                               ; preds = %5
  %37 = load %struct.pefile_context*, %struct.pefile_context** %12, align 8
  %38 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %38, align 8
  br label %56

39:                                               ; preds = %5
  %40 = load %struct.pefile_context*, %struct.pefile_context** %12, align 8
  %41 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %41, align 8
  br label %56

42:                                               ; preds = %5
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %46 = call i32 @sprint_oid(i8* %43, i64 %44, i8* %45, i32 50)
  %47 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @EBADMSG, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %57

51:                                               ; preds = %5
  %52 = load i32, i32* %14, align 4
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENOPKG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %57

56:                                               ; preds = %39, %36, %33, %30, %27, %24, %21
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %51, %42
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @look_up_OID(i8*, i64) #1

declare dso_local i32 @sprint_oid(i8*, i64, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
