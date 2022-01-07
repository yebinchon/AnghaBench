; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_read_skip_worktree_file_from_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_read_skip_worktree_file_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.oid_stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i64*, i8**, %struct.oid_stat*)* @read_skip_worktree_file_from_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_skip_worktree_file_from_index(%struct.index_state* %0, i8* %1, i64* %2, i8** %3, %struct.oid_stat* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.oid_stat*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store %struct.oid_stat* %4, %struct.oid_stat** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %13, align 4
  %16 = load %struct.index_state*, %struct.index_state** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @index_name_pos(%struct.index_state* %16, i8* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %47

23:                                               ; preds = %5
  %24 = load %struct.index_state*, %struct.index_state** %7, align 8
  %25 = getelementptr inbounds %struct.index_state, %struct.index_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @ce_skip_worktree(%struct.TYPE_2__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %47

34:                                               ; preds = %23
  %35 = load %struct.index_state*, %struct.index_state** %7, align 8
  %36 = getelementptr inbounds %struct.index_state, %struct.index_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.oid_stat*, %struct.oid_stat** %11, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i8**, i8*** %10, align 8
  %46 = call i32 @do_read_blob(i32* %42, %struct.oid_stat* %43, i64* %44, i8** %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %34, %33, %22
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @ce_skip_worktree(%struct.TYPE_2__*) #1

declare dso_local i32 @do_read_blob(i32*, %struct.oid_stat*, i64*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
