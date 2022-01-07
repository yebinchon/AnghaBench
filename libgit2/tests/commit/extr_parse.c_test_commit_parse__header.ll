; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__header.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@passing_header_cases = common dso_local global %struct.TYPE_4__* null, align 8
@failing_header_cases = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_parse__header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @passing_header_cases, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %2, align 8
  br label %8

8:                                                ; preds = %33, %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @git_oid__parse(i32* %1, i8** %3, i8* %22, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp eq i8* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  br label %33

33:                                               ; preds = %13
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 1
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %2, align 8
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @failing_header_cases, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %2, align 8
  br label %38

38:                                               ; preds = %58, %36
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @git_oid__parse(i32* %1, i8** %5, i8* %52, i32 %55)
  %57 = call i32 @cl_git_fail(i32 %56)
  br label %58

58:                                               ; preds = %43
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 1
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %2, align 8
  br label %38

61:                                               ; preds = %38
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid__parse(i32*, i8**, i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
