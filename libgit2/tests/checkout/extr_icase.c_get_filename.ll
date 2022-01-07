; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_get_filename.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_get_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_filename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dirent*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %5, align 8
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @git_path_dirname(i8* %10)
  store i8* %11, i8** %3, align 8
  %12 = call i32 @cl_assert(i8* %11)
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @git_path_basename(i8* %13)
  store i8* %14, i8** %4, align 8
  %15 = call i32 @cl_assert(i8* %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @opendir(i8* %16)
  store i8* %17, i8** %7, align 8
  %18 = call i32 @cl_assert(i8* %17)
  br label %19

19:                                               ; preds = %37, %1
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.dirent* @readdir(i8* %20)
  store %struct.dirent* %21, %struct.dirent** %8, align 8
  %22 = icmp ne %struct.dirent* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.dirent*, %struct.dirent** %8, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcasecmp(i32 %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.dirent*, %struct.dirent** %8, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @git_buf_join(i32* %6, i8 signext 47, i8* %31, i32 %34)
  %36 = call i8* @git_buf_detach(i32* %6)
  store i8* %36, i8** %5, align 8
  br label %38

37:                                               ; preds = %23
  br label %19

38:                                               ; preds = %30, %19
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @closedir(i8* %39)
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @git__free(i8* %41)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @git__free(i8* %43)
  %45 = call i32 @git_buf_dispose(i32* %6)
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i32 @cl_assert(i8*) #1

declare dso_local i8* @git_path_dirname(i8*) #1

declare dso_local i8* @git_path_basename(i8*) #1

declare dso_local i8* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i8*) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @git_buf_join(i32*, i8 signext, i8*, i32) #1

declare dso_local i8* @git_buf_detach(i32*) #1

declare dso_local i32 @closedir(i8*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
