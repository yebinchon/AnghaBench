; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid__parse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_oid.c_git_oid__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_oid__parse(i32* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* @GIT_OID_HEXSZ, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %11, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %19, %20
  %22 = add i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ugt i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %60

27:                                               ; preds = %4
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @memcmp(i8* %28, i8* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %60

34:                                               ; preds = %27
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %36, %37
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 10
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %60

44:                                               ; preds = %34
  %45 = load i32*, i32** %6, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = call i64 @git_oid_fromstr(i32* %45, i8* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %60

52:                                               ; preds = %44
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %54, %55
  %57 = add i64 %56, 1
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i8**, i8*** %7, align 8
  store i8* %58, i8** %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %51, %43, %33, %26
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @git_oid_fromstr(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
