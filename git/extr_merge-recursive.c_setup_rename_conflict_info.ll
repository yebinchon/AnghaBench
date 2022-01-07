; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_setup_rename_conflict_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_setup_rename_conflict_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i64 }
%struct.rename = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rename_conflict_info*, i64 }
%struct.rename_conflict_info = type { i32, %struct.rename*, %struct.rename* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.merge_options*, %struct.rename*, %struct.rename*)* @setup_rename_conflict_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_rename_conflict_info(i32 %0, %struct.merge_options* %1, %struct.rename* %2, %struct.rename* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.merge_options*, align 8
  %7 = alloca %struct.rename*, align 8
  %8 = alloca %struct.rename*, align 8
  %9 = alloca %struct.rename_conflict_info*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.merge_options* %1, %struct.merge_options** %6, align 8
  store %struct.rename* %2, %struct.rename** %7, align 8
  store %struct.rename* %3, %struct.rename** %8, align 8
  %10 = load %struct.rename*, %struct.rename** %8, align 8
  %11 = icmp ne %struct.rename* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = load %struct.rename*, %struct.rename** %7, align 8
  %14 = getelementptr inbounds %struct.rename, %struct.rename* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %17 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %23 = load %struct.rename*, %struct.rename** %8, align 8
  %24 = load %struct.rename*, %struct.rename** %7, align 8
  call void @setup_rename_conflict_info(i32 %21, %struct.merge_options* %22, %struct.rename* %23, %struct.rename* %24)
  br label %59

25:                                               ; preds = %12, %4
  %26 = call %struct.rename_conflict_info* @xcalloc(i32 1, i32 24)
  store %struct.rename_conflict_info* %26, %struct.rename_conflict_info** %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %9, align 8
  %29 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rename*, %struct.rename** %7, align 8
  %31 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %9, align 8
  %32 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %31, i32 0, i32 2
  store %struct.rename* %30, %struct.rename** %32, align 8
  %33 = load %struct.rename*, %struct.rename** %8, align 8
  %34 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %9, align 8
  %35 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %34, i32 0, i32 1
  store %struct.rename* %33, %struct.rename** %35, align 8
  %36 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %9, align 8
  %37 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %36, i32 0, i32 2
  %38 = load %struct.rename*, %struct.rename** %37, align 8
  %39 = getelementptr inbounds %struct.rename, %struct.rename* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %9, align 8
  %43 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %9, align 8
  %44 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %43, i32 0, i32 2
  %45 = load %struct.rename*, %struct.rename** %44, align 8
  %46 = getelementptr inbounds %struct.rename, %struct.rename* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.rename_conflict_info* %42, %struct.rename_conflict_info** %48, align 8
  %49 = load %struct.rename*, %struct.rename** %8, align 8
  %50 = icmp ne %struct.rename* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %25
  %52 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %9, align 8
  %53 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %9, align 8
  %54 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %53, i32 0, i32 1
  %55 = load %struct.rename*, %struct.rename** %54, align 8
  %56 = getelementptr inbounds %struct.rename, %struct.rename* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.rename_conflict_info* %52, %struct.rename_conflict_info** %58, align 8
  br label %59

59:                                               ; preds = %20, %51, %25
  ret void
}

declare dso_local %struct.rename_conflict_info* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
