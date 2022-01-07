; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_get_or_create.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_get_or_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__**, i32*, i32*, i8*)* @submodule_get_or_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodule_get_or_create(%struct.TYPE_8__** %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call %struct.TYPE_8__* @git_strmap_get(i32* %12, i8* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %37

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @submodule_alloc(%struct.TYPE_8__** %10, i32* %18, i8* %19)
  store i32 %20, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %42

24:                                               ; preds = %17
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = call i32 @git_strmap_set(i32* %25, i32 %28, %struct.TYPE_8__* %29)
  store i32 %30, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = call i32 @git_submodule_free(%struct.TYPE_8__* %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %42

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %16
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_8__* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %32, %22
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_8__* @git_strmap_get(i32*, i8*) #1

declare dso_local i32 @submodule_alloc(%struct.TYPE_8__**, i32*, i8*) #1

declare dso_local i32 @git_strmap_set(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @git_submodule_free(%struct.TYPE_8__*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
