; ModuleID = '/home/carl/AnghaBench/git/extr_notes-merge.c_merge_from_diffs.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-merge.c_merge_from_diffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_merge_options = type { i32 }
%struct.object_id = type { i32 }
%struct.notes_tree = type { i64 }
%struct.notes_merge_pair = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"\09merge_from_diffs(base = %.7s, local = %.7s, remote = %.7s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Merge result: %i unmerged notes and a dirty notes tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Merge result: %i unmerged notes and a clean notes tree\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notes_merge_options*, %struct.object_id*, %struct.object_id*, %struct.object_id*, %struct.notes_tree*)* @merge_from_diffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_from_diffs(%struct.notes_merge_options* %0, %struct.object_id* %1, %struct.object_id* %2, %struct.object_id* %3, %struct.notes_tree* %4) #0 {
  %6 = alloca %struct.notes_merge_options*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.notes_tree*, align 8
  %11 = alloca %struct.notes_merge_pair*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.notes_merge_options* %0, %struct.notes_merge_options** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  store %struct.notes_tree* %4, %struct.notes_tree** %10, align 8
  %14 = load %struct.object_id*, %struct.object_id** %7, align 8
  %15 = call i32 @oid_to_hex(%struct.object_id* %14)
  %16 = load %struct.object_id*, %struct.object_id** %8, align 8
  %17 = call i32 @oid_to_hex(%struct.object_id* %16)
  %18 = load %struct.object_id*, %struct.object_id** %9, align 8
  %19 = call i32 @oid_to_hex(%struct.object_id* %18)
  %20 = call i32 @trace_printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17, i32 %19)
  %21 = load %struct.notes_merge_options*, %struct.notes_merge_options** %6, align 8
  %22 = load %struct.object_id*, %struct.object_id** %7, align 8
  %23 = load %struct.object_id*, %struct.object_id** %9, align 8
  %24 = call %struct.notes_merge_pair* @diff_tree_remote(%struct.notes_merge_options* %21, %struct.object_id* %22, %struct.object_id* %23, i32* %12)
  store %struct.notes_merge_pair* %24, %struct.notes_merge_pair** %11, align 8
  %25 = load %struct.notes_merge_options*, %struct.notes_merge_options** %6, align 8
  %26 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.object_id*, %struct.object_id** %7, align 8
  %29 = load %struct.object_id*, %struct.object_id** %8, align 8
  %30 = call i32 @diff_tree_local(%struct.notes_merge_options* %25, %struct.notes_merge_pair* %26, i32 %27, %struct.object_id* %28, %struct.object_id* %29)
  %31 = load %struct.notes_merge_options*, %struct.notes_merge_options** %6, align 8
  %32 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %33 = load %struct.notes_tree*, %struct.notes_tree** %10, align 8
  %34 = call i32 @merge_changes(%struct.notes_merge_options* %31, %struct.notes_merge_pair* %32, i32* %12, %struct.notes_tree* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %36 = call i32 @free(%struct.notes_merge_pair* %35)
  %37 = load %struct.notes_merge_options*, %struct.notes_merge_options** %6, align 8
  %38 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 4
  br i1 %40, label %41, label %50

41:                                               ; preds = %5
  %42 = load %struct.notes_tree*, %struct.notes_tree** %10, align 8
  %43 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @printf(i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %5
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 -1, i32 1
  ret i32 %54
}

declare dso_local i32 @trace_printf(i8*, i32, i32, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.notes_merge_pair* @diff_tree_remote(%struct.notes_merge_options*, %struct.object_id*, %struct.object_id*, i32*) #1

declare dso_local i32 @diff_tree_local(%struct.notes_merge_options*, %struct.notes_merge_pair*, i32, %struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @merge_changes(%struct.notes_merge_options*, %struct.notes_merge_pair*, i32*, %struct.notes_tree*) #1

declare dso_local i32 @free(%struct.notes_merge_pair*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
