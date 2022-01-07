; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_test_odb_mixed__dup_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_test_odb_mixed__dup_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_odb_mixed__dup_oid.hex = private unnamed_addr constant [41 x i8] c"ce013625030ba8dba906f756967f9e9ca394464a\00", align 16
@__const.test_odb_mixed__dup_oid.short_hex = private unnamed_addr constant [8 x i8] c"ce01362\00", align 1
@_odb = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_mixed__dup_oid() #0 {
  %1 = alloca [41 x i8], align 16
  %2 = alloca [8 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = bitcast [41 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([41 x i8], [41 x i8]* @__const.test_odb_mixed__dup_oid.hex, i32 0, i32 0), i64 41, i1 false)
  %6 = bitcast [8 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_odb_mixed__dup_oid.short_hex, i32 0, i32 0), i64 8, i1 false)
  %7 = getelementptr inbounds [41 x i8], [41 x i8]* %1, i64 0, i64 0
  %8 = call i32 @git_oid_fromstr(i32* %3, i8* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @_odb, align 4
  %11 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %12 = call i32 @git_odb_read_prefix(i32** %4, i32 %10, i32* %3, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @git_odb_object_free(i32* %14)
  %16 = load i32, i32* @_odb, align 4
  %17 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %18 = call i32 @git_odb_exists_prefix(i32* null, i32 %16, i32* %3, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %21 = call i32 @git_oid_fromstrn(i32* %3, i8* %20, i32 7)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @_odb, align 4
  %24 = call i32 @git_odb_read_prefix(i32** %4, i32 %23, i32* %3, i32 7)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_odb_object_free(i32* %26)
  %28 = load i32, i32* @_odb, align 4
  %29 = call i32 @git_odb_exists_prefix(i32* null, i32 %28, i32* %3, i32 7)
  %30 = call i32 @cl_git_pass(i32 %29)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_odb_read_prefix(i32**, i32, i32*, i32) #2

declare dso_local i32 @git_odb_object_free(i32*) #2

declare dso_local i32 @git_odb_exists_prefix(i32*, i32, i32*, i32) #2

declare dso_local i32 @git_oid_fromstrn(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
