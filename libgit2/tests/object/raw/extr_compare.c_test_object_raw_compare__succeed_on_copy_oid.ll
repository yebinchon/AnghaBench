; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_compare.c_test_object_raw_compare__succeed_on_copy_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_compare.c_test_object_raw_compare__succeed_on_copy_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@__const.test_object_raw_compare__succeed_on_copy_oid.exp = private unnamed_addr constant [20 x i8] c"\16\A6wp\B7\D8\D7#\17\C4\B7u!<#\A8\BDt\F5\E0", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_compare__succeed_on_copy_oid() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca [20 x i8], align 16
  %4 = bitcast [20 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.test_object_raw_compare__succeed_on_copy_oid.exp, i32 0, i32 0), i64 20, i1 false)
  %5 = call i32 @memset(%struct.TYPE_6__* %2, i32 0, i32 4)
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %7 = call i32 @git_oid_fromraw(%struct.TYPE_6__* %1, i8* %6)
  %8 = call i32 @git_oid_cpy(%struct.TYPE_6__* %2, %struct.TYPE_6__* %1)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %12 = call i32 @memcmp(i32 %10, i8* %11, i32 4)
  %13 = call i32 @cl_git_pass(i32 %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @git_oid_fromraw(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @git_oid_cpy(%struct.TYPE_6__*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @memcmp(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
