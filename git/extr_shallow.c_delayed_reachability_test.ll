; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_delayed_reachability_test.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_delayed_reachability_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shallow_info = type { i32*, i64*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.commit = type { i32 }
%struct.commit_array = type { i32, i32 }

@the_repository = common dso_local global i32 0, align 4
@add_ref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delayed_reachability_test(%struct.shallow_info* %0, i32 %1) #0 {
  %3 = alloca %struct.shallow_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_array, align 4
  store %struct.shallow_info* %0, %struct.shallow_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %8 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %2
  %16 = load i32, i32* @the_repository, align 4
  %17 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %18 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call %struct.commit* @lookup_commit(i32 %16, i32* %24)
  store %struct.commit* %25, %struct.commit** %5, align 8
  %26 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %27 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %15
  %31 = call i32 @memset(%struct.commit_array* %6, i32 0, i32 8)
  %32 = load i32, i32* @add_ref, align 4
  %33 = call i32 @head_ref(i32 %32, %struct.commit_array* %6)
  %34 = load i32, i32* @add_ref, align 4
  %35 = call i32 @for_each_ref(i32 %34, %struct.commit_array* %6)
  %36 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %39 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = getelementptr inbounds %struct.commit_array, %struct.commit_array* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %43 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %15
  %45 = load %struct.commit*, %struct.commit** %5, align 8
  %46 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %47 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %50 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @in_merge_bases_many(%struct.commit* %45, i32 %48, i32 %51)
  %53 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %54 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %60 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %44, %2
  %66 = load %struct.shallow_info*, %struct.shallow_info** %3, align 8
  %67 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  ret i32 %72
}

declare dso_local %struct.commit* @lookup_commit(i32, i32*) #1

declare dso_local i32 @memset(%struct.commit_array*, i32, i32) #1

declare dso_local i32 @head_ref(i32, %struct.commit_array*) #1

declare dso_local i32 @for_each_ref(i32, %struct.commit_array*) #1

declare dso_local i32 @in_merge_bases_many(%struct.commit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
