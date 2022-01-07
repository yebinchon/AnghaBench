; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_rangelike.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_rangelike.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@g_repo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @test_rangelike to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rangelike(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca %struct.TYPE_3__, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = bitcast [64 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @git_revparse(%struct.TYPE_3__* %10, i32 %13, i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @cl_assert_equal_i(i32 0, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @cl_assert_equal_i(i32 %22, i32 %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git_object_id(i32 %27)
  %29 = call i32 @git_oid_fmt(i8* %25, i32 %28)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @cl_assert_equal_s(i8* %30, i8* %31)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @git_object_id(i32 %35)
  %37 = call i32 @git_oid_fmt(i8* %33, i32 %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @cl_assert_equal_s(i8* %38, i8* %39)
  br label %46

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @cl_assert(i32 %44)
  br label %46

46:                                               ; preds = %41, %18
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @git_object_free(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @git_object_free(i32 %51)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_revparse(%struct.TYPE_3__*, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_oid_fmt(i8*, i32) #2

declare dso_local i32 @git_object_id(i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_object_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
