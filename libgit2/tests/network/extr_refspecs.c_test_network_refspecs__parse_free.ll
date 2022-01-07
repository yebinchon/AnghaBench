; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_refspecs.c_test_network_refspecs__parse_free.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_refspecs.c_test_network_refspecs__parse_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":::\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"HEAD:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_refspecs__parse_free() #0 {
  %1 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %2 = call i32 @git_refspec_parse(i32** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %3 = call i32 @cl_git_fail(i32 %2)
  %4 = call i32 @git_refspec_parse(i32** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %5 = call i32 @cl_git_fail(i32 %4)
  %6 = call i32 @git_refspec_parse(i32** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_refspec_free(i32* %12)
  ret void
}

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_refspec_parse(i32**, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_refspec_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
