; ModuleID = '/home/carl/AnghaBench/libgit2/tests/transports/smart/extr_packet.c_test_transports_smart_packet__ref_pkt.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/transports/smart/extr_packet.c_test_transports_smart_packet__ref_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"002C0000000000000000000000000000000000000000\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"002D0000000000000000000000000000000000000000\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"00300000000000000000000000000000000000000000HEAD\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"004800000000x0000000000000000000000000000000 refs/heads/master\00multi_ack\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"003F0000000000000000000000000000000000000000 refs/heads/master\00\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"0000000000000000000000000000000000000000\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"00480000000000000000000000000000000000000000 refs/heads/master\00multi_ack\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"multi_ack\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"00460000000000000000000000000000000000000000 refs/heads/master\00one two\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"one two\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"00310000000000000000000000000000000000000000 HEAD\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"0031000000000000000000000000000000000000000 HEAD\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"00360000000000000000000000000000000000000000 HEAD HEAD\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"HEAD HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_transports_smart_packet__ref_pkt() #0 {
  %1 = call i32 @assert_pkt_fails(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @assert_pkt_fails(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @assert_pkt_fails(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @assert_pkt_fails(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @assert_ref_parses(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %6 = call i32 @assert_ref_parses(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %7 = call i32 @assert_ref_parses(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %8 = call i32 @assert_ref_parses(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* null)
  %9 = call i32 @assert_pkt_fails(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0))
  %10 = call i32 @assert_ref_parses(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* null)
  ret void
}

declare dso_local i32 @assert_pkt_fails(i8*) #1

declare dso_local i32 @assert_ref_parses(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
