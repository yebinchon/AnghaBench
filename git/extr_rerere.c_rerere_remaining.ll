; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_rerere_remaining.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_rerere_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i64 }
%struct.string_list = type { i32 }
%struct.string_list_item = type { i32 }

@RERERE_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@PUNTED = common dso_local global i32 0, align 4
@RESOLVED = common dso_local global i32 0, align 4
@RERERE_RESOLVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rerere_remaining(%struct.repository* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca %struct.string_list_item*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  %10 = load %struct.repository*, %struct.repository** %4, align 8
  %11 = load %struct.string_list*, %struct.string_list** %5, align 8
  %12 = load i32, i32* @RERERE_READONLY, align 4
  %13 = call i64 @setup_rerere(%struct.repository* %10, %struct.string_list* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.repository*, %struct.repository** %4, align 8
  %18 = call i64 @repo_read_index(%struct.repository* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @error(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %80

23:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %78, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.repository*, %struct.repository** %4, align 8
  %27 = getelementptr inbounds %struct.repository, %struct.repository* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %24
  %33 = load %struct.repository*, %struct.repository** %4, align 8
  %34 = getelementptr inbounds %struct.repository, %struct.repository* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.cache_entry**, %struct.cache_entry*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %37, i64 %39
  %41 = load %struct.cache_entry*, %struct.cache_entry** %40, align 8
  store %struct.cache_entry* %41, %struct.cache_entry** %8, align 8
  %42 = load %struct.repository*, %struct.repository** %4, align 8
  %43 = getelementptr inbounds %struct.repository, %struct.repository* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @check_one_conflict(%struct.TYPE_2__* %44, i32 %45, i32* %7)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PUNTED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %32
  %51 = load %struct.string_list*, %struct.string_list** %5, align 8
  %52 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %53 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @string_list_insert(%struct.string_list* %51, i8* %55)
  br label %78

57:                                               ; preds = %32
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @RESOLVED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load %struct.string_list*, %struct.string_list** %5, align 8
  %63 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call %struct.string_list_item* @string_list_lookup(%struct.string_list* %62, i8* %66)
  store %struct.string_list_item* %67, %struct.string_list_item** %9, align 8
  %68 = load %struct.string_list_item*, %struct.string_list_item** %9, align 8
  %69 = icmp ne %struct.string_list_item* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.string_list_item*, %struct.string_list_item** %9, align 8
  %72 = call i32 @free_rerere_id(%struct.string_list_item* %71)
  %73 = load i32, i32* @RERERE_RESOLVED, align 4
  %74 = load %struct.string_list_item*, %struct.string_list_item** %9, align 8
  %75 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %61
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %50
  br label %24

79:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %20, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @setup_rerere(%struct.repository*, %struct.string_list*, i32) #1

declare dso_local i64 @repo_read_index(%struct.repository*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @check_one_conflict(%struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @string_list_insert(%struct.string_list*, i8*) #1

declare dso_local %struct.string_list_item* @string_list_lookup(%struct.string_list*, i8*) #1

declare dso_local i32 @free_rerere_id(%struct.string_list_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
