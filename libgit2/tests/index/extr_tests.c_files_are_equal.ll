; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_files_are_equal.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_files_are_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @files_are_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @files_are_equal(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %9 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @git_futils_readbuffer(%struct.TYPE_5__* %5, i8* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @cl_assert(i32 0)
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @git_futils_readbuffer(%struct.TYPE_5__* %6, i8* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32 @git_buf_dispose(%struct.TYPE_5__* %5)
  %21 = call i32 @cl_assert(i32 0)
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @memcmp(i32 %30, i32 %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %28, %22
  %39 = phi i1 [ false, %22 ], [ %37, %28 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = call i32 @git_buf_dispose(%struct.TYPE_5__* %5)
  %42 = call i32 @git_buf_dispose(%struct.TYPE_5__* %6)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @cl_assert(i32 %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_futils_readbuffer(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @memcmp(i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
