; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_setup_namespace.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_setup_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"refs/namespaces/%s/\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"refs/namespaces/%s/refs\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*)* @setup_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setup_namespace(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %5, align 4
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %52

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @git_buf_puts(i32* %5, i8* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i8* @git_buf_detach(i32* %5)
  store i8* %22, i8** %9, align 8
  br label %52

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i8* @git__strdup(i32* %26)
  store i8* %27, i8** %8, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %52

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %35, %31
  %33 = call i8* @git__strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @git_buf_printf(i32* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %32

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @git_buf_printf(i32* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @git__free(i8* %41)
  %43 = call i32 @git_buf_cstr(i32* %5)
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %46 = call i64 @git_futils_mkdir_relative(i32 %43, i8* %44, i32 511, i32 %45, i32* null)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %52

49:                                               ; preds = %38
  %50 = call i32 @git_buf_rtruncate_at_char(i32* %5, i8 signext 47)
  %51 = call i8* @git_buf_detach(i32* %5)
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %49, %48, %30, %21, %13
  %53 = call i32 @git_buf_dispose(i32* %5)
  %54 = load i8*, i8** %9, align 8
  ret i8* %54
}

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i8* @git_buf_detach(i32*) #1

declare dso_local i8* @git__strdup(i32*) #1

declare dso_local i8* @git__strsep(i8**, i8*) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i64 @git_futils_mkdir_relative(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_rtruncate_at_char(i32*, i8 signext) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
