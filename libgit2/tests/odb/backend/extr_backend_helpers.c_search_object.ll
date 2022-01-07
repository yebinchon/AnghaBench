; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_backend_helpers.c_search_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_backend_helpers.c_search_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@GIT_OK = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__**, %struct.TYPE_6__*, i32*, i64)* @search_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_object(%struct.TYPE_5__** %0, %struct.TYPE_6__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  br label %16

16:                                               ; preds = %42, %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %45

26:                                               ; preds = %24
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @git_oid_fromstr(i32* %12, i64 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @git_oid_ncmp(i32* %12, i32* %31, i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  store i32 %39, i32* %5, align 4
  br label %63

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %11, align 8
  br label %42

42:                                               ; preds = %40, %26
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 1
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %10, align 8
  br label %16

45:                                               ; preds = %24
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %50 = icmp ne %struct.TYPE_5__** %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %53, align 8
  br label %54

54:                                               ; preds = %51, %48, %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @GIT_OK, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @GIT_ENOTFOUND, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %38
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @git_oid_fromstr(i32*, i64) #1

declare dso_local i64 @git_oid_ncmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
