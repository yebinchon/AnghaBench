; ModuleID = '/home/carl/AnghaBench/git/extr_notes-cache.c_notes_cache_write.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-cache.c_notes_cache_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_cache = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"update notes cache\00", align 1
@UPDATE_REFS_QUIET_ON_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @notes_cache_write(%struct.notes_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.notes_cache*, align 8
  %4 = alloca %struct.object_id, align 4
  %5 = alloca %struct.object_id, align 4
  store %struct.notes_cache* %0, %struct.notes_cache** %3, align 8
  %6 = load %struct.notes_cache*, %struct.notes_cache** %3, align 8
  %7 = icmp ne %struct.notes_cache* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.notes_cache*, %struct.notes_cache** %3, align 8
  %10 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.notes_cache*, %struct.notes_cache** %3, align 8
  %16 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.notes_cache*, %struct.notes_cache** %3, align 8
  %22 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %14, %8, %1
  store i32 -1, i32* %2, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load %struct.notes_cache*, %struct.notes_cache** %3, align 8
  %30 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %62

35:                                               ; preds = %28
  %36 = load %struct.notes_cache*, %struct.notes_cache** %3, align 8
  %37 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %36, i32 0, i32 0
  %38 = call i64 @write_notes_tree(%struct.TYPE_2__* %37, %struct.object_id* %4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %62

41:                                               ; preds = %35
  %42 = load %struct.notes_cache*, %struct.notes_cache** %3, align 8
  %43 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.notes_cache*, %struct.notes_cache** %3, align 8
  %46 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @strlen(i32 %47)
  %49 = call i64 @commit_tree(i32 %44, i32 %48, %struct.object_id* %4, i32* null, %struct.object_id* %5, i32* null, i32* null)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %62

52:                                               ; preds = %41
  %53 = load %struct.notes_cache*, %struct.notes_cache** %3, align 8
  %54 = getelementptr inbounds %struct.notes_cache, %struct.notes_cache* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @UPDATE_REFS_QUIET_ON_ERR, align 4
  %58 = call i64 @update_ref(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %56, %struct.object_id* %5, i32* null, i32 0, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 -1, i32* %2, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60, %51, %40, %34, %27
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @write_notes_tree(%struct.TYPE_2__*, %struct.object_id*) #1

declare dso_local i64 @commit_tree(i32, i32, %struct.object_id*, i32*, %struct.object_id*, i32*, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @update_ref(i8*, i32*, %struct.object_id*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
