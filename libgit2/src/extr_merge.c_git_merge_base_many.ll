; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge_base_many.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge_base_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_base_many(i32* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br label %21

21:                                               ; preds = %18, %15, %4
  %22 = phi i1 [ false, %15 ], [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @merge_bases_many(%struct.TYPE_6__** %11, i32** %10, i32* %25, i64 %26, i32* %27)
  store i32 %28, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %42

32:                                               ; preds = %21
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @git_oid_cpy(i32* %33, i32* %37)
  %39 = call i32 @git_commit_list_free(%struct.TYPE_6__** %11)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @git_revwalk_free(i32* %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %32, %30
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @merge_bases_many(%struct.TYPE_6__**, i32**, i32*, i64, i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_commit_list_free(%struct.TYPE_6__**) #1

declare dso_local i32 @git_revwalk_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
