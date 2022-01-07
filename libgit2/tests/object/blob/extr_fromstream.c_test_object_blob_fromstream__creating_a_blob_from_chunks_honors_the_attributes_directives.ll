; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/blob/extr_fromstream.c_test_object_blob_fromstream__creating_a_blob_from_chunks_honors_the_attributes_directives.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/blob/extr_fromstream.c_test_object_blob_fromstream__creating_a_blob_from_chunks_honors_the_attributes_directives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"321cbdf08803c744082332332838df6bd160f8f9\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dummy.data\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"e9671e138a780833cb689753570fd10a55be84fb\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dummy.txt\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"dummy.dunno\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_blob_fromstream__creating_a_blob_from_chunks_honors_the_attributes_directives() #0 {
  %1 = load i32, i32* @repo, align 4
  %2 = call i32 @write_attributes(i32 %1)
  %3 = call i32 @assert_named_chunked_blob(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @assert_named_chunked_blob(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @assert_named_chunked_blob(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @write_attributes(i32) #1

declare dso_local i32 @assert_named_chunked_blob(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
