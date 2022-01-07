; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__attach_signature_checks_objects.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__attach_signature_checks_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"magic word: pretty please\00", align 1
@.str.1 = private unnamed_addr constant [249 x i8] c"tree 6b79e22d69bf46e289df0345a14ca059dfc9bdf6\0Aparent 34734e478d6cf50c27c9d69026d93974d052c454\0Aauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\0Acommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\0A\0Aa simple commit which does not work\0A\00", align 1
@.str.2 = private unnamed_addr constant [249 x i8] c"tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904\0Aparent 34734e478d6cf50c27c9d69026d93974d052c454\0Aauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\0Acommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\0A\0Aa simple commit which does not work\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"magicsig\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_write__attach_signature_checks_objects() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %5 = load i32, i32* @g_repo, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @git_commit_create_with_signature(i32* %4, i32 %5, i8* %6, i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @cl_git_fail_with(i32 -1, i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @git_commit_create_with_signature(i32* %4, i32 %10, i8* %11, i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @cl_git_fail_with(i32 -1, i32 %13)
  ret void
}

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_commit_create_with_signature(i32*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
