; ModuleID = '/home/carl/AnghaBench/libgit2/tests/delta/extr_apply.c_test_delta_apply__read_at_off.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/delta/extr_apply.c_test_delta_apply__read_at_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_delta_apply__read_at_off.delta = private unnamed_addr constant [10 x i8] c"\10\10\FF\FF\FF\FF\FF\10\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_delta_apply__read_at_off() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca [10 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = bitcast [16 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 16, i1 false)
  %6 = bitcast [10 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_delta_apply__read_at_off.delta, i32 0, i32 0), i64 10, i1 false)
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %9 = call i32 @git_delta_apply(i8** %3, i64* %4, i8* %7, i32 16, i8* %8, i32 10)
  %10 = call i32 @cl_git_fail(i32 %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_delta_apply(i8**, i64*, i8*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
