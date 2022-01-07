; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stress/extr_diff.c_test_stress_diff__rename_big_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stress/extr_diff.c_test_stress_diff__rename_big_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"renames/newfile%03d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"more content %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"renames/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stress_diff__rename_big_files() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @g_repo, align 4
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_repository_index(i32** %1, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %34, %0
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @p_snprintf(i8* %15, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %18, 256
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %26, %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @git_buf_printf(%struct.TYPE_5__* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  br label %20

29:                                               ; preds = %20
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cl_git_mkfile(i8* %30, i32 %32)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %11

37:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 100
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @p_snprintf(i8* %42, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %47 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i32 @git_index_add_bypath(i32* %45, i8* %49)
  %51 = call i32 @cl_git_pass(i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %38

55:                                               ; preds = %38
  %56 = call i32 @git_buf_dispose(%struct.TYPE_5__* %5)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_index_free(i32* %57)
  %59 = call i32 @test_with_many(i32 100)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @p_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @test_with_many(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
