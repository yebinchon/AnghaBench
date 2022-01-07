; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_local_connect.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_local_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i8*, i32, i32)* @local_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_connect(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %18, align 8
  %23 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %23, i32* %20, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @GIT_UNUSED(i8* %24)
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @GIT_UNUSED(i8* %26)
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @GIT_UNUSED(i8* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %78

35:                                               ; preds = %7
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = call i32 @free_heads(i32* %37)
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @git__strdup(i8* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @GIT_ERROR_CHECK_ALLOC(i32 %45)
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @git_path_from_url_or_path(i32* %20, i8* %53)
  store i32 %54, i32* %17, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %35
  %57 = call i32 @git_buf_dispose(i32* %20)
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %8, align 4
  br label %78

59:                                               ; preds = %35
  %60 = call i8* @git_buf_cstr(i32* %20)
  store i8* %60, i8** %19, align 8
  %61 = load i8*, i8** %19, align 8
  %62 = call i32 @git_repository_open(i32** %16, i8* %61)
  store i32 %62, i32* %17, align 4
  %63 = call i32 @git_buf_dispose(i32* %20)
  %64 = load i32, i32* %17, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 -1, i32* %8, align 4
  br label %78

67:                                               ; preds = %59
  %68 = load i32*, i32** %16, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %72 = call i64 @store_refs(%struct.TYPE_3__* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 -1, i32* %8, align 4
  br label %78

75:                                               ; preds = %67
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %74, %66, %56, %34
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i32 @free_heads(i32*) #1

declare dso_local i32 @git__strdup(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32) #1

declare dso_local i32 @git_path_from_url_or_path(i32*, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i64 @store_refs(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
