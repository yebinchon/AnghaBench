; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__empty_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__empty_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [171 x i8] c"---\0A file | 0\0A 1 file changed, 0 insertions(+), 0 deletions(-)\0A created mode 100644 file\0A\0Adiff --git a/file b/file\0Anew file mode 100644\0Aindex 0000000..e69de29\0A-- \0A2.20.1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_parse__empty_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  store i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @strlen(i8* %4)
  %6 = call i32 @git_diff_from_buffer(i32** %2, i8* %3, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @git_diff_free(i32* %8)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_from_buffer(i32**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
