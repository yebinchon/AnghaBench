; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_cache_parsed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_cache_parsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@g_data = common dso_local global %struct.TYPE_2__* null, align 8
@g_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @cache_parsed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cache_parsed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %44, %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %10
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @git_oid_fromstr(i32* %4, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %29 = call i32 @git_object_lookup(i32** %5, i32 %27, i32* %4, i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @git_object_type(i32* %37)
  %39 = icmp eq i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @git_object_free(i32* %42)
  br label %44

44:                                               ; preds = %18
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %3, align 4
  br label %10

47:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %81, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i8*, i8** %2, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %48
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @git_oid_fromstr(i32* %4, i32* %61)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i32, i32* @g_repo, align 4
  %65 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %66 = call i32 @git_object_lookup(i32** %5, i32 %64, i32* %4, i32 %65)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i64 @git_object_type(i32* %74)
  %76 = icmp eq i64 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @cl_assert(i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @git_object_free(i32* %79)
  br label %81

81:                                               ; preds = %55
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %3, align 4
  br label %48

84:                                               ; preds = %48
  %85 = load i8*, i8** %2, align 8
  ret i8* %85
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32*) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_object_type(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
