; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_attr_cache_upsert.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_attr_cache_upsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*)* @attr_cache_upsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_cache_upsert(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @attr_cache_lock(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_13__* @attr_cache_lookup_entry(i32* %13, i32 %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = call i32 @GIT_REFCOUNT_OWN(%struct.TYPE_14__* %20, %struct.TYPE_13__* %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_14__* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = call %struct.TYPE_14__* @git__swap(i32 %32, %struct.TYPE_14__* %33)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %7, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %12
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = call i32 @GIT_REFCOUNT_OWN(%struct.TYPE_14__* %38, %struct.TYPE_13__* null)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = call i32 @git_attr_file__free(%struct.TYPE_14__* %40)
  br label %42

42:                                               ; preds = %37, %12
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @attr_cache_unlock(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @attr_cache_lock(i32*) #1

declare dso_local %struct.TYPE_13__* @attr_cache_lookup_entry(i32*, i32) #1

declare dso_local i32 @GIT_REFCOUNT_OWN(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @git__swap(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @git_attr_file__free(%struct.TYPE_14__*) #1

declare dso_local i32 @attr_cache_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
