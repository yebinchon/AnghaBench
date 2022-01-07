; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_repository_alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_repository_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* ()* @repository_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @repository_alloc() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = call %struct.TYPE_7__* @git__calloc(i32 1, i32 8)
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = icmp eq %struct.TYPE_7__* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = call i64 @git_cache_init(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %0
  br label %28

12:                                               ; preds = %6
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @git_array_init_to_size(i32 %16, i32 4)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %28

24:                                               ; preds = %12
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = call i32 @git_repository__configmap_lookup_cache_clear(%struct.TYPE_7__* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %1, align 8
  br label %38

28:                                               ; preds = %23, %11
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @git_cache_dispose(i32* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = call i32 @git__free(%struct.TYPE_7__* %36)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %39
}

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i32) #1

declare dso_local i64 @git_cache_init(i32*) #1

declare dso_local i32 @git_array_init_to_size(i32, i32) #1

declare dso_local i32 @git_repository__configmap_lookup_cache_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @git_cache_dispose(i32*) #1

declare dso_local i32 @git__free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
