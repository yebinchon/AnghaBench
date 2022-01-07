; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_add_per_worktree_entries_to_dir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_add_per_worktree_entries_to_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { i32 }
%struct.ref_entry = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"refs/bisect/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"refs/worktree/\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"refs/rewritten/\00", align 1
@__const.add_per_worktree_entries_to_dir.prefixes = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_dir*, i8*)* @add_per_worktree_entries_to_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_per_worktree_entries_to_dir(%struct.ref_dir* %0, i8* %1) #0 {
  %3 = alloca %struct.ref_dir*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [3 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.ref_dir* %0, %struct.ref_dir** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([3 x i8*]* @__const.add_per_worktree_entries_to_dir.prefixes to i8*), i64 24, i1 false)
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %49

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i8** %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @search_ref_dir(%struct.ref_dir* %29, i8* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %46

36:                                               ; preds = %22
  %37 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %38 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.ref_entry* @create_dir_entry(i32 %39, i8* %40, i32 %41, i32 1)
  store %struct.ref_entry* %42, %struct.ref_entry** %9, align 8
  %43 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %44 = load %struct.ref_entry*, %struct.ref_entry** %9, align 8
  %45 = call i32 @add_entry_to_dir(%struct.ref_dir* %43, %struct.ref_entry* %44)
  br label %46

46:                                               ; preds = %36, %35
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %17

49:                                               ; preds = %15, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @search_ref_dir(%struct.ref_dir*, i8*, i32) #2

declare dso_local %struct.ref_entry* @create_dir_entry(i32, i8*, i32, i32) #2

declare dso_local i32 @add_entry_to_dir(%struct.ref_dir*, %struct.ref_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
