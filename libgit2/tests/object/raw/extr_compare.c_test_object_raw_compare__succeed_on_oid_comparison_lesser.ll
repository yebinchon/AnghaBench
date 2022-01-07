; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_compare.c_test_object_raw_compare__succeed_on_oid_comparison_lesser.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_compare.c_test_object_raw_compare__succeed_on_oid_comparison_lesser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_object_raw_compare__succeed_on_oid_comparison_lesser.a_in = private unnamed_addr constant [20 x i8] c"\16\A6wp\B7\D8\D7#\17\C4\B7u!<#\A8\BDt\F5\E0", align 16
@__const.test_object_raw_compare__succeed_on_oid_comparison_lesser.b_in = private unnamed_addr constant [20 x i8] c"\16\A6wp\B7\D8\D7#\17\C4\B7u!<#\A8\BDt\F5\F0", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_compare__succeed_on_oid_comparison_lesser() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = bitcast [20 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.test_object_raw_compare__succeed_on_oid_comparison_lesser.a_in, i32 0, i32 0), i64 20, i1 false)
  %6 = bitcast [20 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.test_object_raw_compare__succeed_on_oid_comparison_lesser.b_in, i32 0, i32 0), i64 20, i1 false)
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %8 = call i32 @git_oid_fromraw(i32* %1, i8* %7)
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %10 = call i32 @git_oid_fromraw(i32* %2, i8* %9)
  %11 = call i64 @git_oid_cmp(i32* %1, i32* %2)
  %12 = icmp slt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromraw(i32*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_oid_cmp(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
