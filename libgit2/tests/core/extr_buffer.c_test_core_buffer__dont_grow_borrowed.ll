; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__dont_grow_borrowed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__dont_grow_borrowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"blah blah\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_EINVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__dont_grow_borrowed() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 12, i1 false)
  %4 = load i8*, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = add nsw i64 %6, 1
  %8 = call i32 @git_buf_attach_notowned(%struct.TYPE_5__* %2, i8* %4, i64 %7)
  %9 = load i8*, i8** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cl_assert_equal_p(i8* %9, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cl_assert_equal_i(i64 0, i32 %14)
  %16 = load i8*, i8** %1, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %17, 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_i(i64 %18, i32 %20)
  %22 = load i32, i32* @GIT_EINVALID, align 4
  %23 = call i32 @git_buf_grow(%struct.TYPE_5__* %2, i32 1024)
  %24 = call i32 @cl_git_fail_with(i32 %22, i32 %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_attach_notowned(%struct.TYPE_5__*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @cl_assert_equal_p(i8*, i32) #2

declare dso_local i32 @cl_assert_equal_i(i64, i32) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_buf_grow(%struct.TYPE_5__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
