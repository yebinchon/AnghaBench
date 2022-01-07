; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_write_add_refspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_write_add_refspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CONFIG_FETCH_FMT = common dso_local global i8* null, align 8
@CONFIG_PUSH_FMT = common dso_local global i8* null, align 8
@GIT_ERROR_NOMEMORY = common dso_local global i64 0, align 8
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"$^\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @write_add_refspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_add_refspec(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @git_repository_config__weakptr(i32** %10, i32* %16)
  store i32 %17, i32* %14, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8*, i8** @CONFIG_FETCH_FMT, align 8
  br label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** @CONFIG_PUSH_FMT, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8* [ %25, %24 ], [ %27, %26 ]
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @ensure_remote_name_is_valid(i8* %30)
  store i32 %31, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %69

35:                                               ; preds = %28
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @git_refspec__parse(i32* %12, i8* %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = call %struct.TYPE_7__* (...) @git_error_last()
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GIT_ERROR_NOMEMORY, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %69

50:                                               ; preds = %35
  %51 = call i32 @git_refspec__dispose(i32* %12)
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @git_buf_printf(%struct.TYPE_6__* %11, i8* %52, i8* %53)
  store i32 %54, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %69

58:                                               ; preds = %50
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @git_config_set_multivar(i32* %59, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %65
  %68 = call i32 @git_buf_dispose(%struct.TYPE_6__* %11)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %56, %48, %33, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_repository_config__weakptr(i32**, i32*) #2

declare dso_local i32 @ensure_remote_name_is_valid(i8*) #2

declare dso_local i32 @git_refspec__parse(i32*, i8*, i32) #2

declare dso_local %struct.TYPE_7__* @git_error_last(...) #2

declare dso_local i32 @git_refspec__dispose(i32*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_6__*, i8*, i8*) #2

declare dso_local i32 @git_config_set_multivar(i32*, i32, i8*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
