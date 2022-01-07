; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_loose_parse_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_loose_parse_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"corrupted loose reference file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @loose_parse_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_parse_oid(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i8* @git_buf_cstr(i32* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @git_buf_len(i32* %11)
  %13 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %37

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @git_oid_fromstr(i32* %17, i8* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %37

22:                                               ; preds = %16
  %23 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @git__isspace(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %22
  store i32 0, i32* %4, align 4
  br label %41

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %21, %15
  %38 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @git_error_set(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i64 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i64 @git__isspace(i8 signext) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
