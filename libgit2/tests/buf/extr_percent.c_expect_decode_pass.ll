; ModuleID = '/home/carl/AnghaBench/libgit2/tests/buf/extr_percent.c_expect_decode_pass.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/buf/extr_percent.c_expect_decode_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"TRAILER\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @expect_decode_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect_decode_pass(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %8 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @git_buf_puts(%struct.TYPE_9__* %5, i8* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_buf_PUTS(%struct.TYPE_9__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @git_buf_decode_percent(%struct.TYPE_9__* %6, i32 %15, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @git_buf_cstr(%struct.TYPE_9__* %6)
  %22 = call i32 @cl_assert_equal_s(i8* %20, i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @git_buf_len(%struct.TYPE_9__* %6)
  %26 = call i32 @cl_assert_equal_i(i32 %24, i32 %25)
  %27 = call i32 @git_buf_dispose(%struct.TYPE_9__* %5)
  %28 = call i32 @git_buf_dispose(%struct.TYPE_9__* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @git_buf_PUTS(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @git_buf_decode_percent(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_cstr(%struct.TYPE_9__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_buf_len(%struct.TYPE_9__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
