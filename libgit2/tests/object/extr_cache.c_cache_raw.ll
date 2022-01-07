; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_cache_raw.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_cache_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@g_repo = common dso_local global i32 0, align 4
@g_data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @cache_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cache_raw(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_repository_odb(i32** %5, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %47, %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @git_oid_fromstr(i32* %4, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @git_odb_read(i32** %6, i32* %31, i32* %4)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @git_odb_object_type(i32* %40)
  %42 = icmp eq i64 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @git_odb_object_free(i32* %45)
  br label %47

47:                                               ; preds = %22
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %3, align 4
  br label %14

50:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i32, i32* %3, align 4
  %53 = load i8*, i8** %2, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @git_oid_fromstr(i32* %4, i32* %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @git_odb_read(i32** %6, i32* %67, i32* %4)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i64 @git_odb_object_type(i32* %76)
  %78 = icmp eq i64 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @cl_assert(i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @git_odb_object_free(i32* %81)
  br label %83

83:                                               ; preds = %58
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %3, align 4
  br label %51

86:                                               ; preds = %51
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @git_odb_free(i32* %87)
  %89 = load i8*, i8** %2, align 8
  ret i8* %89
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_odb(i32**, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32*) #1

declare dso_local i32 @git_odb_read(i32**, i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_odb_object_type(i32*) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

declare dso_local i32 @git_odb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
