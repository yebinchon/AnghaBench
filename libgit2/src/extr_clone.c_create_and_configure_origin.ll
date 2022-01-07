; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_clone.c_create_and_configure_origin.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_clone.c_create_and_configure_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32**, i32*, i8*, i8*, i8*)*, i8* }

@GIT_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*, %struct.TYPE_3__*)* @create_and_configure_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_and_configure_origin(i32** %0, i32* %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32 (i32**, i32*, i8*, i8*, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32, i32* @GIT_PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32**, i32*, i8*, i8*, i8*)*, i32 (i32**, i32*, i8*, i8*, i8*)** %22, align 8
  store i32 (i32**, i32*, i8*, i8*, i8*)* %23, i32 (i32**, i32*, i8*, i8*, i8*)** %14, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @git_path_root(i8* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @git_path_exists(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @git_path_isdir(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = call i32* @p_realpath(i8* %39, i8* %20)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %63

43:                                               ; preds = %38
  store i8* %20, i8** %8, align 8
  br label %44

44:                                               ; preds = %43, %34, %30, %4
  %45 = load i32 (i32**, i32*, i8*, i8*, i8*)*, i32 (i32**, i32*, i8*, i8*, i8*)** %14, align 8
  %46 = icmp ne i32 (i32**, i32*, i8*, i8*, i8*)* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 (i32**, i32*, i8*, i8*, i8*)* @default_remote_create, i32 (i32**, i32*, i8*, i8*, i8*)** %14, align 8
  store i8* null, i8** %15, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32 (i32**, i32*, i8*, i8*, i8*)*, i32 (i32**, i32*, i8*, i8*, i8*)** %14, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 %49(i32** %11, i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %52)
  store i32 %53, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %59

56:                                               ; preds = %48
  %57 = load i32*, i32** %11, align 8
  %58 = load i32**, i32*** %6, align 8
  store i32* %57, i32** %58, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %63

59:                                               ; preds = %55
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @git_remote_free(i32* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %63

63:                                               ; preds = %59, %56, %42
  %64 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @git_path_root(i8*) #2

declare dso_local i64 @git_path_exists(i8*) #2

declare dso_local i64 @git_path_isdir(i8*) #2

declare dso_local i32* @p_realpath(i8*, i8*) #2

declare dso_local i32 @default_remote_create(i32**, i32*, i8*, i8*, i8*) #2

declare dso_local i32 @git_remote_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
