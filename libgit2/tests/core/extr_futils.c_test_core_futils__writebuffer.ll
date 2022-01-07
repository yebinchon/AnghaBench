; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_futils.c_test_core_futils__writebuffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_futils.c_test_core_futils__writebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"hello!\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"this is a %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"futils/test-file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"And some more!\0A\00", align 1
@O_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_futils__writebuffer() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %4 = bitcast %struct.TYPE_8__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %5 = call i32 @git_buf_puts(%struct.TYPE_8__* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @git_buf_printf(%struct.TYPE_8__* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @O_RDWR, align 4
  %8 = load i32, i32* @O_CREAT, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @git_futils_writebuffer(%struct.TYPE_8__* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %9, i32 438)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cl_assert_equal_file(i32 %13, i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @git_buf_puts(%struct.TYPE_8__* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @git_buf_put(%struct.TYPE_8__* %1, i32 %19, i32 %21)
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = load i32, i32* @O_APPEND, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @git_futils_writebuffer(%struct.TYPE_8__* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %25, i32 438)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_assert_equal_file(i32 %29, i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @git_buf_dispose(%struct.TYPE_8__* %1)
  %34 = call i32 @git_buf_dispose(%struct.TYPE_8__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_puts(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_8__*, i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_writebuffer(%struct.TYPE_8__*, i8*, i32, i32) #2

declare dso_local i32 @cl_assert_equal_file(i32, i32, i8*) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
