; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__foreach.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foreach_state = type { i32, i8*, i64 }
%struct.TYPE_2__ = type { i8* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@foreach_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @loose_backend__foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_backend__foreach(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.foreach_state, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %12, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @git_buf_sets(i32* %10, i8* %28)
  %30 = call i32 @git_path_to_dir(i32* %10)
  %31 = call i64 @git_buf_oom(i32* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %46

34:                                               ; preds = %21
  %35 = call i32 @memset(%struct.foreach_state* %11, i32 0, i32 24)
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.foreach_state, %struct.foreach_state* %11, i32 0, i32 2
  store i64 %36, i64* %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.foreach_state, %struct.foreach_state* %11, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = call i32 @git_buf_len(i32* %10)
  %41 = getelementptr inbounds %struct.foreach_state, %struct.foreach_state* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @foreach_cb, align 4
  %43 = call i32 @git_path_direach(i32* %10, i32 0, i32 %42, %struct.foreach_state* %11)
  store i32 %43, i32* %9, align 4
  %44 = call i32 @git_buf_dispose(i32* %10)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %34, %33
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_buf_sets(i32*, i8*) #1

declare dso_local i32 @git_path_to_dir(i32*) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @memset(%struct.foreach_state*, i32, i32) #1

declare dso_local i32 @git_buf_len(i32*) #1

declare dso_local i32 @git_path_direach(i32*, i32, i32, %struct.foreach_state*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
