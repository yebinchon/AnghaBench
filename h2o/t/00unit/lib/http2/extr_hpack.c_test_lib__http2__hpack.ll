; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_hpack.c_test_lib__http2__hpack.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_hpack.c_test_lib__http2__hpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hpack\00", align 1
@test_hpack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hpack-push\00", align 1
@test_hpack_push = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"hpack-dynamic-table\00", align 1
@test_hpack_dynamic_table = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"token-wo-hpack-id\00", align 1
@test_token_wo_hpack_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lib__http2__hpack() #0 {
  %1 = load i32, i32* @test_hpack, align 4
  %2 = call i32 @subtest(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @test_hpack_push, align 4
  %4 = call i32 @subtest(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @test_hpack_dynamic_table, align 4
  %6 = call i32 @subtest(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @test_token_wo_hpack_id, align 4
  %8 = call i32 @subtest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  ret void
}

declare dso_local i32 @subtest(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
