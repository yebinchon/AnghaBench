; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_path_url.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_path_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@cl_git_path_url.url = internal global [4096 x i8] zeroinitializer, align 16
@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%20\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cl_git_path_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  store i8* %0, i8** %2, align 8
  %6 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @git_path_prettify_dir(%struct.TYPE_8__* %4, i8* %8, i32* null)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_buf_puts(%struct.TYPE_8__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i8* @git_buf_cstr(%struct.TYPE_8__* %4)
  store i8* %13, i8** %3, align 8
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @git_buf_puts(%struct.TYPE_8__* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  br label %31

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @git_buf_putc(%struct.TYPE_8__* %5, i8 signext %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  br label %14

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 4096
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = call i8* @git_buf_cstr(%struct.TYPE_8__* %5)
  %41 = call i32 @strncpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @cl_git_path_url.url, i64 0, i64 0), i8* %40, i32 4096)
  %42 = call i32 @git_buf_dispose(%struct.TYPE_8__* %5)
  %43 = call i32 @git_buf_dispose(%struct.TYPE_8__* %4)
  ret i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @cl_git_path_url.url, i64 0, i64 0)
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_path_prettify_dir(%struct.TYPE_8__*, i8*, i32*) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_8__*, i8*) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_8__*) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_8__*, i8 signext) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
