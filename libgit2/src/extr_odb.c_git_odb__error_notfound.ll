; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__error_notfound.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__error_notfound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_ERROR_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"object not found - %s (%.*s)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"object not found - %s\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb__error_notfound(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, 1
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @git_oid_tostr(i8* %16, i64 %18, i32* %19)
  %21 = load i32, i32* @GIT_ERROR_ODB, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i32, i8*, i8*, ...) @git_error_set(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %24, i8* %16)
  %26 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %26)
  br label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @GIT_ERROR_ODB, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i32, i8*, i8*, ...) @git_error_set(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %11
  %32 = load i32, i32* @GIT_ENOTFOUND, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_oid_tostr(i8*, i64, i32*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
