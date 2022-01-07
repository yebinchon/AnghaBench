; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_attr_cache_remove.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_attr_cache_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*)* @attr_cache_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_cache_remove(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @attr_cache_lock(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_11__* @attr_cache_lookup_entry(i32* %19, i32 %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %7, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = call %struct.TYPE_12__* @git__compare_and_swap(i32* %34, %struct.TYPE_12__* %35, i32* null)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %8, align 8
  br label %37

37:                                               ; preds = %27, %18
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @attr_cache_unlock(i32* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = call i32 @GIT_REFCOUNT_OWN(%struct.TYPE_12__* %43, i32* null)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = call i32 @git_attr_file__free(%struct.TYPE_12__* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %16, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @attr_cache_lock(i32*) #1

declare dso_local %struct.TYPE_11__* @attr_cache_lookup_entry(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @git__compare_and_swap(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @attr_cache_unlock(i32*) #1

declare dso_local i32 @GIT_REFCOUNT_OWN(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @git_attr_file__free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
