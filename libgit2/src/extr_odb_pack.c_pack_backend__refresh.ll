; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__refresh.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_pack.c_pack_backend__refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.pack_backend = type { i32, i32* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to refresh packfiles\00", align 1
@packfile_load__cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pack_backend__refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_backend__refresh(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pack_backend*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.pack_backend*
  store %struct.pack_backend* %10, %struct.pack_backend** %7, align 8
  %11 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %12 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %18 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @p_stat(i32* %19, %struct.stat* %5)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S_ISDIR(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %16
  %28 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %22
  %30 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %31 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @git_buf_sets(i32* %6, i32* %32)
  %34 = load i32, i32* @packfile_load__cb, align 4
  %35 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %36 = call i32 @git_path_direach(i32* %6, i32 0, i32 %34, %struct.pack_backend* %35)
  store i32 %36, i32* %4, align 4
  %37 = call i32 @git_buf_dispose(i32* %6)
  %38 = load %struct.pack_backend*, %struct.pack_backend** %7, align 8
  %39 = getelementptr inbounds %struct.pack_backend, %struct.pack_backend* %38, i32 0, i32 0
  %40 = call i32 @git_vector_sort(i32* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %29, %27, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @p_stat(i32*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @git_odb__error_notfound(i8*, i32*, i32) #1

declare dso_local i32 @git_buf_sets(i32*, i32*) #1

declare dso_local i32 @git_path_direach(i32*, i32, i32, %struct.pack_backend*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_vector_sort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
