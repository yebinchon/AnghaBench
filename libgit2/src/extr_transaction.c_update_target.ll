; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_transaction.c_update_target.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_transaction.c_update_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, i32*, i32, i64, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @update_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_target(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32* @git_reference__alloc(i32 %16, i32* %19, i32* null)
  store i32* %20, i32** %5, align 8
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @git_reference__alloc_symbolic(i32 %30, i32 %34)
  store i32* %35, i32** %5, align 8
  br label %38

36:                                               ; preds = %21
  %37 = call i32 (...) @abort() #3
  unreachable

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @git_refdb_unlock(i32* %52, i32 %55, i32 2, i32 0, i32* %56, i32* null, i32* null)
  store i32 %57, i32* %6, align 4
  br label %102

58:                                               ; preds = %39
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @git_refdb_unlock(i32* %65, i32 %68, i32 1, i32 %69, i32* %70, i32* %73, i32* %76)
  store i32 %77, i32* %6, align 4
  br label %101

78:                                               ; preds = %58
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load i32*, i32** %3, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @git_refdb_unlock(i32* %85, i32 %88, i32 1, i32 %89, i32* %90, i32* %93, i32* %96)
  store i32 %97, i32* %6, align 4
  br label %100

98:                                               ; preds = %78
  %99 = call i32 (...) @abort() #3
  unreachable

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100, %64
  br label %102

102:                                              ; preds = %101, %51
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @git_reference_free(i32* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32* @git_reference__alloc(i32, i32*, i32*) #1

declare dso_local i32* @git_reference__alloc_symbolic(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i32 @git_refdb_unlock(i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
