; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_peel.c_test_refs_peel__can_peel_a_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_peel.c_test_refs_peel__can_peel_a_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"944c0f6e4dfa41595e6eb3ceecdb14f50fe18162\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_peel__can_peel_a_branch() #0 {
  %1 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %2 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %3 = call i32 @assert_peel(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %5 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %6 = call i32 @assert_peel(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  ret void
}

declare dso_local i32 @assert_peel(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
