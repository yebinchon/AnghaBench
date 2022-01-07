; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_fromstr.c_test_object_raw_fromstr__succeed_on_valid_oid_string.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_fromstr.c_test_object_raw_fromstr__succeed_on_valid_oid_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@__const.test_object_raw_fromstr__succeed_on_valid_oid_string.exp = private unnamed_addr constant [20 x i8] c"\16\A6wp\B7\D8\D7#\17\C4\B7u!<#\A8\BDt\F5\E0", align 16
@.str = private unnamed_addr constant [41 x i8] c"16a67770b7d8d72317c4b775213c23a8bd74f5e0\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"16A67770B7D8D72317C4b775213C23A8BD74F5E0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_fromstr__succeed_on_valid_oid_string() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca [20 x i8], align 16
  %3 = bitcast [20 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.test_object_raw_fromstr__succeed_on_valid_oid_string.exp, i32 0, i32 0), i64 20, i1 false)
  %4 = call i32 @git_oid_fromstr(%struct.TYPE_3__* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %9 = call i32 @memcmp(i32 %7, i8* %8, i32 4)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_oid_fromstr(%struct.TYPE_3__* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %16 = call i32 @memcmp(i32 %14, i8* %15, i32 4)
  %17 = call i32 @cl_git_pass(i32 %16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(%struct.TYPE_3__*, i8*) #2

declare dso_local i32 @memcmp(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
