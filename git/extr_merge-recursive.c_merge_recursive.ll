; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_recursive.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32, i32* }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"constructed merge base\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_recursive(%struct.merge_options* %0, %struct.commit* %1, %struct.commit* %2, %struct.commit_list* %3, %struct.commit** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.merge_options*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.commit**, align 8
  %12 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %7, align 8
  store %struct.commit* %1, %struct.commit** %8, align 8
  store %struct.commit* %2, %struct.commit** %9, align 8
  store %struct.commit_list* %3, %struct.commit_list** %10, align 8
  store %struct.commit** %4, %struct.commit*** %11, align 8
  %13 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %14 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %19 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @strcmp(i32* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %17, %5
  %25 = phi i1 [ true, %5 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %29 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %30 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.commit*, %struct.commit** %8, align 8
  %33 = call i32 @repo_get_commit_tree(i32 %31, %struct.commit* %32)
  %34 = call i64 @merge_start(%struct.merge_options* %28, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %47

37:                                               ; preds = %24
  %38 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %39 = load %struct.commit*, %struct.commit** %8, align 8
  %40 = load %struct.commit*, %struct.commit** %9, align 8
  %41 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %42 = load %struct.commit**, %struct.commit*** %11, align 8
  %43 = call i32 @merge_recursive_internal(%struct.merge_options* %38, %struct.commit* %39, %struct.commit* %40, %struct.commit_list* %41, %struct.commit** %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %45 = call i32 @merge_finalize(%struct.merge_options* %44)
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %37, %36
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i64 @merge_start(%struct.merge_options*, i32) #1

declare dso_local i32 @repo_get_commit_tree(i32, %struct.commit*) #1

declare dso_local i32 @merge_recursive_internal(%struct.merge_options*, %struct.commit*, %struct.commit*, %struct.commit_list*, %struct.commit**) #1

declare dso_local i32 @merge_finalize(%struct.merge_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
