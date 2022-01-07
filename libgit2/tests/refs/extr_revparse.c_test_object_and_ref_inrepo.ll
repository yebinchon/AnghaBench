; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_object_and_ref_inrepo.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_object_and_ref_inrepo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32*, i32)* @test_object_and_ref_inrepo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_object_and_ref_inrepo(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = bitcast [64 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 64, i1 false)
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @git_revparse_ext(i32** %12, i32** %13, i32* %16, i8* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @git_object_id(i32* %25)
  %27 = call i32 @git_oid_fmt(i8* %24, i32 %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @cl_assert_equal_s(i8* %28, i8* %29)
  br label %34

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @cl_git_fail(i32 %32)
  br label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32*, i32** %13, align 8
  %42 = icmp eq i32* null, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  br label %50

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i8* @git_reference_name(i32* %47)
  %49 = call i32 @cl_assert_equal_s(i8* %46, i8* %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @git_object_free(i32* %52)
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @git_reference_free(i32* %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_revparse_ext(i32**, i32**, i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fmt(i8*, i32) #2

declare dso_local i32 @git_object_id(i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i8* @git_reference_name(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
