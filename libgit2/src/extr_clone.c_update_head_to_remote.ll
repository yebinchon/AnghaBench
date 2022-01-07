; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_clone.c_update_head_to_remote.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_clone.c_update_head_to_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@GIT_REMOTE_ORIGIN = common dso_local global i32 0, align 4
@GIT_REFS_HEADS_MASTER_FILE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"the remote's default branch does not fit the refspec configuration\00", align 1
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @update_head_to_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_head_to_remote(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @git_remote_ls(%struct.TYPE_4__*** %12, i64* %9, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GIT_HEAD_FILE, align 4
  %33 = call i64 @strcmp(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26, %23
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %38 = load i32, i32* @GIT_REFS_HEADS_MASTER_FILE, align 4
  %39 = call i32 @setup_tracking_config(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %83

40:                                               ; preds = %26
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %11, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = call i32 @assert(%struct.TYPE_4__* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @git_remote_default_branch(i32* %15, i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @GIT_ENOTFOUND, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @git_repository_set_head_detached(i32* %54, i32* %55)
  store i32 %56, i32* %8, align 4
  br label %79

57:                                               ; preds = %40
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @git_buf_cstr(i32* %15)
  %60 = call i32* @git_remote__matching_refspec(i32* %58, i32 %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @GIT_ERROR_NET, align 4
  %65 = call i32 @git_error_set(i32 %64, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %66, i32* %8, align 4
  br label %79

67:                                               ; preds = %57
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @git_buf_cstr(i32* %15)
  %70 = call i32 @git_refspec_transform(i32* %14, i32* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %79

73:                                               ; preds = %67
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @git_buf_cstr(i32* %15)
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @update_head_to_new_branch(i32* %74, i32* %75, i32 %76, i8* %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %73, %72, %63, %53
  %80 = call i32 @git_buf_dispose(i32* %14)
  %81 = call i32 @git_buf_dispose(i32* %15)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %35, %21
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @git_remote_ls(%struct.TYPE_4__***, i64*, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @setup_tracking_config(i32*, i8*, i32, i32) #1

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @git_remote_default_branch(i32*, i32*) #1

declare dso_local i32 @git_repository_set_head_detached(i32*, i32*) #1

declare dso_local i32* @git_remote__matching_refspec(i32*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_refspec_transform(i32*, i32*, i32) #1

declare dso_local i32 @update_head_to_new_branch(i32*, i32*, i32, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
