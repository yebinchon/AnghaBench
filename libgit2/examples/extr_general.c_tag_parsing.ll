; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_general.c_tag_parsing.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_general.c_tag_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"\0A*Tag Parsing*\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"b25fa35b38051e4ae45d4222e795f9df2e43f1d1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"looking up tag\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Tag Name: %s\0ATag Type: %s\0ATag Message: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @tag_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tag_parsing(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @git_tag_lookup(i32** %5, i32* %12, i32* %6)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @check_error(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @git_tag_target(i32** %3, i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @git_tag_name(i32* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @git_tag_target_type(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @git_tag_message(i32* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @git_object_type2string(i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %24, i8* %26, i8* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_commit_free(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @git_tag_free(i32* %31)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tag_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @check_error(i32, i8*) #1

declare dso_local i32 @git_tag_target(i32**, i32*) #1

declare dso_local i8* @git_tag_name(i32*) #1

declare dso_local i32 @git_tag_target_type(i32*) #1

declare dso_local i8* @git_tag_message(i32*) #1

declare dso_local i8* @git_object_type2string(i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_tag_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
