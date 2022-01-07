; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_get_delta.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_get_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GIT_EBUFS = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"delta size changed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.TYPE_5__*)* @get_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_delta(i8** %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load i8**, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i64 @git_odb_read(i32** %8, i32* %14, i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i64 @git_odb_read(i32** %9, i32* %22, i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %3
  br label %65

28:                                               ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @git_odb_object_data(i32* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @git_odb_object_size(i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @git_odb_object_data(i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @git_odb_object_size(i32* %35)
  %37 = call i32 @git_delta(i8** %11, i64* %10, i32 %30, i32 %32, i32 %34, i32 %36, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @GIT_EBUFS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %65

45:                                               ; preds = %40, %28
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @GIT_EBUFS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %45
  %56 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %57 = call i32 @git_error_set(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %65

58:                                               ; preds = %49
  %59 = load i8*, i8** %11, align 8
  %60 = load i8**, i8*** %5, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @git_odb_object_free(i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @git_odb_object_free(i32* %63)
  store i32 0, i32* %4, align 4
  br label %70

65:                                               ; preds = %55, %44, %27
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @git_odb_object_free(i32* %66)
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @git_odb_object_free(i32* %68)
  store i32 -1, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @git_odb_read(i32**, i32*, i32*) #1

declare dso_local i32 @git_delta(i8**, i64*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @git_odb_object_data(i32*) #1

declare dso_local i32 @git_odb_object_size(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
