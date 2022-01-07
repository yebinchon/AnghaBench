; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_remove_file_from_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_remove_file_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_file_from_index(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.index_state*, %struct.index_state** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = call i32 @index_name_pos(%struct.index_state* %6, i8* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 0, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.index_state*, %struct.index_state** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @cache_tree_invalidate_path(%struct.index_state* %18, i8* %19)
  %21 = load %struct.index_state*, %struct.index_state** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @untracked_cache_remove_from_index(%struct.index_state* %21, i8* %22)
  br label %24

24:                                               ; preds = %46, %17
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.index_state*, %struct.index_state** %3, align 8
  %27 = getelementptr inbounds %struct.index_state, %struct.index_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.index_state*, %struct.index_state** %3, align 8
  %32 = getelementptr inbounds %struct.index_state, %struct.index_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strcmp(i32 %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %30, %24
  %45 = phi i1 [ false, %24 ], [ %43, %30 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = load %struct.index_state*, %struct.index_state** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @remove_index_entry_at(%struct.index_state* %47, i32 %48)
  br label %24

50:                                               ; preds = %44
  ret i32 0
}

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cache_tree_invalidate_path(%struct.index_state*, i8*) #1

declare dso_local i32 @untracked_cache_remove_from_index(%struct.index_state*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @remove_index_entry_at(%struct.index_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
