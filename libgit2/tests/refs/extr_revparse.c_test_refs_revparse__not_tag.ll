; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__not_tag.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__not_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"point_to_blob^{}\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"1385f264afb75a56a5bec74243be9b367ba4ca08\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wrapped_tag^{}\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"master^{}\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"master^{tree}^{}\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"944c0f6e4dfa41595e6eb3ceecdb14f50fe18162\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"e90810b^{}\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"e90810b8df3e80c413d903f631643c716887138d\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"tags/e90810b^{}\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"e908^{}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_revparse__not_tag() #0 {
  %1 = call i32 @test_object(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @test_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %3 = call i32 @test_object(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %4 = call i32 @test_object(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %5 = call i32 @test_object(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %6 = call i32 @test_object(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %7 = call i32 @test_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @test_object(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
