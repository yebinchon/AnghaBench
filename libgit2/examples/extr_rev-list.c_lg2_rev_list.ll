; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_rev-list.c_lg2_rev_list.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_rev-list.c_lg2_rev_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"allocating revwalk\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"parsing options\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_rev_list(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %11 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @git_revwalk_new(i32** %7, i32* %16)
  %18 = call i32 @check_lg2(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = call i32 @revwalk_parseopts(i32* %19, i32* %20, i32 %22, i8** %24)
  %26 = call i32 @check_lg2(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %27

27:                                               ; preds = %32, %3
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @git_revwalk_next(i32* %8, i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = call i32 @git_oid_fmt(i8* %15, i32* %8)
  %34 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %15, i64 %35
  store i8 0, i8* %36, align 1
  %37 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  br label %27

38:                                               ; preds = %27
  %39 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %39)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_lg2(i32, i8*, i32*) #2

declare dso_local i32 @git_revwalk_new(i32**, i32*) #2

declare dso_local i32 @revwalk_parseopts(i32*, i32*, i32, i8**) #2

declare dso_local i32 @git_revwalk_next(i32*, i32*) #2

declare dso_local i32 @git_oid_fmt(i8*, i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
