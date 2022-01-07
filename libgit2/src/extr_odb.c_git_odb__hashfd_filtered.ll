; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__hashfd_filtered.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__hashfd_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb__hashfd_filtered(i32* %0, i32 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %16 = load i32*, i32** %11, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @git_odb__hashfd(i32* %19, i32 %20, i64 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %48

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @git_futils_readbuffer_fd(%struct.TYPE_7__* %13, i32 %25, i64 %26)
  store i32 %27, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %24
  %30 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_7__* %14, i32* %31, %struct.TYPE_7__* %13)
  store i32 %32, i32* %12, align 4
  %33 = call i32 @git_buf_dispose(%struct.TYPE_7__* %13)
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @git_odb_hash(i32* %37, i32 %39, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %36, %29
  %45 = call i32 @git_buf_dispose(%struct.TYPE_7__* %14)
  br label %46

46:                                               ; preds = %44, %24
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %18
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_odb__hashfd(i32*, i32, i64, i32) #2

declare dso_local i32 @git_futils_readbuffer_fd(%struct.TYPE_7__*, i32, i64) #2

declare dso_local i32 @git_filter_list_apply_to_data(%struct.TYPE_7__*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

declare dso_local i32 @git_odb_hash(i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
