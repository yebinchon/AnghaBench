; ModuleID = '/home/carl/AnghaBench/git/extr_notes-utils.c_create_notes_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-utils.c_create_notes_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.notes_tree = type { i32, i32 }
%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to write notes tree to database\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to find/parse commit %s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to commit notes tree to database\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_notes_commit(%struct.repository* %0, %struct.notes_tree* %1, %struct.commit_list* %2, i8* %3, i64 %4, %struct.object_id* %5) #0 {
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.notes_tree*, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.object_id, align 4
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.notes_tree* %1, %struct.notes_tree** %8, align 8
  store %struct.commit_list* %2, %struct.commit_list** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.object_id* %5, %struct.object_id** %12, align 8
  %16 = load %struct.notes_tree*, %struct.notes_tree** %8, align 8
  %17 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.notes_tree*, %struct.notes_tree** %8, align 8
  %21 = call i64 @write_notes_tree(%struct.notes_tree* %20, %struct.object_id* %13)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %6
  %26 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %27 = icmp ne %struct.commit_list* %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %25
  %29 = load %struct.notes_tree*, %struct.notes_tree** %8, align 8
  %30 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @read_ref(i32 %31, %struct.object_id* %14)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %28
  %35 = load %struct.repository*, %struct.repository** %7, align 8
  %36 = call %struct.commit* @lookup_commit(%struct.repository* %35, %struct.object_id* %14)
  store %struct.commit* %36, %struct.commit** %15, align 8
  %37 = load %struct.commit*, %struct.commit** %15, align 8
  %38 = call i64 @parse_commit(%struct.commit* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.notes_tree*, %struct.notes_tree** %8, align 8
  %42 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.commit*, %struct.commit** %15, align 8
  %47 = call i32 @commit_list_insert(%struct.commit* %46, %struct.commit_list** %9)
  br label %48

48:                                               ; preds = %45, %28
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %53 = load %struct.object_id*, %struct.object_id** %12, align 8
  %54 = call i64 @commit_tree(i8* %50, i64 %51, %struct.object_id* %13, %struct.commit_list* %52, %struct.object_id* %53, i32* null, i32* null)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %49
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @write_notes_tree(%struct.notes_tree*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @read_ref(i32, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i64 @commit_tree(i8*, i64, %struct.object_id*, %struct.commit_list*, %struct.object_id*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
