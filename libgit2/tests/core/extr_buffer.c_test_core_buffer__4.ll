; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__4.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"12341234123412341234\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid pointer\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"2341234123412341234\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__4() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca i32, align 4
  %3 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = call i32 @git_buf_puts(%struct.TYPE_8__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = call i64 @git_buf_oom(%struct.TYPE_8__* %1)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = call i32 @git_buf_consume(%struct.TYPE_8__* %1, i8* %15)
  %17 = call i32 @git_buf_cstr(%struct.TYPE_8__* %1)
  %18 = call i64 @strlen(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %18, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  br label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %4

29:                                               ; preds = %4
  %30 = call i32 @git_buf_cstr(%struct.TYPE_8__* %1)
  %31 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @git_buf_consume(%struct.TYPE_8__* %1, i8* null)
  %33 = call i32 @git_buf_cstr(%struct.TYPE_8__* %1)
  %34 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @git_buf_consume(%struct.TYPE_8__* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @git_buf_cstr(%struct.TYPE_8__* %1)
  %37 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @git_buf_consume(%struct.TYPE_8__* %1, i8* %39)
  %41 = call i32 @git_buf_cstr(%struct.TYPE_8__* %1)
  %42 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i32 @git_buf_consume(%struct.TYPE_8__* %1, i8* %45)
  %47 = call i32 @git_buf_cstr(%struct.TYPE_8__* %1)
  %48 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = call i32 @git_buf_consume(%struct.TYPE_8__* %1, i8* %54)
  %56 = call i32 @git_buf_cstr(%struct.TYPE_8__* %1)
  %57 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = call i32 @git_buf_dispose(%struct.TYPE_8__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_puts(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_8__*) #2

declare dso_local i32 @git_buf_consume(%struct.TYPE_8__*, i8*) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @git_buf_cstr(%struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
