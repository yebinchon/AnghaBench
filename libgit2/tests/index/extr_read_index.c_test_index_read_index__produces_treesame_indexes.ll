; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_test_index_read_index__produces_treesame_indexes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_test_index_read_index__produces_treesame_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"53fc32d17276939fc79ed05badaef2db09990016\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"944c0f6e4dfa41595e6eb3ceecdb14f50fe18162\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"1810dff58d8a660512d4832e740f692884338ccd\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"d52a8fe84ceedf260afe4f0287bbfca04a117e83\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"c36d8ea75da8cb510fcb0c408c1d7e53f9a99dbe\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"7b2417a23b63e1fdde88c80e14b33247c6e5785a\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"f82a8eb4cb20e88d1030fd10d89286215a715396\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"fd093bff70906175335656e6ce6ae05783708765\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"ae90f12eea699729ed24555e40b9fd669da12a12\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_read_index__produces_treesame_indexes() #0 {
  %1 = call i32 @roundtrip_with_read_index(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @roundtrip_with_read_index(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @roundtrip_with_read_index(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @roundtrip_with_read_index(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @roundtrip_with_read_index(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @roundtrip_with_read_index(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @roundtrip_with_read_index(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @roundtrip_with_read_index(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @roundtrip_with_read_index(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @roundtrip_with_read_index(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
