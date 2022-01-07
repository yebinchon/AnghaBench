; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_blob_content_to_link.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_blob_content_to_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.stat = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not create symlink %s\00", align 1
@GIT_ERROR_CHECKOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"could not stat symlink %s\00", align 1
@GIT_FILEMODE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.stat*, i32*, i8*)* @blob_content_to_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blob_content_to_link(%struct.TYPE_8__* %0, %struct.stat* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mkpath2file(%struct.TYPE_8__* %13, i8* %14, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %72

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @git_blob__getbuf(i32* %10, i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %72

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = call i32 @git_buf_cstr(i32* %10)
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @p_symlink(i32 %35, i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @GIT_ERROR_OS, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @git_error_set(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %48

44:                                               ; preds = %29
  %45 = call i32 @git_buf_cstr(i32* %10)
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @git_futils_fake_symlink(i32 %45, i8* %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %43
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.stat*, %struct.stat** %7, align 8
  %59 = call i32 @p_lstat(i8* %57, %struct.stat* %58)
  store i32 %59, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @git_error_set(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %51
  %66 = load i32, i32* @GIT_FILEMODE_LINK, align 4
  %67 = load %struct.stat*, %struct.stat** %7, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %48
  %70 = call i32 @git_buf_dispose(i32* %10)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %27, %21
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @mkpath2file(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @git_blob__getbuf(i32*, i32*) #1

declare dso_local i32 @p_symlink(i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @git_futils_fake_symlink(i32, i8*) #1

declare dso_local i32 @p_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
