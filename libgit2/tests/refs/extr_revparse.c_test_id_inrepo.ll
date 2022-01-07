; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_id_inrepo.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_id_inrepo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GIT_ENOTFOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i64, i32*)* @test_id_inrepo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_id_inrepo(i8* %0, i8* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @git_revparse(%struct.TYPE_3__* %11, i32* %15, i8* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %5
  %21 = bitcast [64 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 64, i1 false)
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @cl_assert_equal_i(i64 0, i32 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @git_object_id(i32 %26)
  %28 = call i32 @git_oid_fmt(i8* %24, i32 %27)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @cl_assert_equal_s(i8* %29, i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @git_object_free(i32 %33)
  br label %39

35:                                               ; preds = %5
  %36 = load i64, i64* @GIT_ENOTFOUND, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @cl_assert_equal_i(i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %20
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = bitcast [64 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 64, i1 false)
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @git_object_id(i32 %46)
  %48 = call i32 @git_oid_fmt(i8* %44, i32 %47)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @cl_assert_equal_s(i8* %49, i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @git_object_free(i32 %53)
  br label %55

55:                                               ; preds = %42, %39
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cl_assert_equal_i(i64 %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @git_revparse(%struct.TYPE_3__*, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cl_assert_equal_i(i64, i32) #1

declare dso_local i32 @git_oid_fmt(i8*, i32) #1

declare dso_local i32 @git_object_id(i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @git_object_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
