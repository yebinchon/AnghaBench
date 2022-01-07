; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/commit/extr_parse.c_test_object_commit_parse__parsing_commit_without_message_succeeds.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/commit/extr_parse.c_test_object_commit_parse__parsing_commit_without_message_succeeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [126 x i8] c"tree 3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8\0Aauthor Author <author@example.com>\0Acommitter Committer <committer@example.com>\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"3e7ac388cadacccdf1c6c5f3445895b71d9cb0f8\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Author <author@example.com>\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Committer <committer@example.com>\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_commit_parse__parsing_commit_without_message_succeeds() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 @assert_commit_parses(i8* %2, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @assert_commit_parses(i8*, i32, i8*, i8*, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
