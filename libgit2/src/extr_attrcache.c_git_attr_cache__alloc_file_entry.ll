; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_git_attr_cache__alloc_file_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_git_attr_cache__alloc_file_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_attr_cache__alloc_file_entry(%struct.TYPE_5__** %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = add i64 16, %15
  %17 = add i64 %16, 1
  store i64 %17, i64* %11, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @git_path_root(i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 47
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %40, %32, %24
  br label %44

44:                                               ; preds = %43, %20, %4
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call %struct.TYPE_5__* @git_pool_mallocz(i32* %45, i64 %46)
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %12, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__* %48)
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %44
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 47
  br i1 %65, label %66, label %73

66:                                               ; preds = %52
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %9, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 47, i8* %72, align 1
  br label %73

73:                                               ; preds = %66, %52
  br label %74

74:                                               ; preds = %73, %44
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @memcpy(i8* %79, i8* %80, i64 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %91 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %91, align 8
  ret i32 0
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @git_path_root(i8*) #1

declare dso_local %struct.TYPE_5__* @git_pool_mallocz(i32*, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
