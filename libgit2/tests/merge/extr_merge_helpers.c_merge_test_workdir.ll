; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_test_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_test_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.merge_index_entry = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@dircount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_test_workdir(%struct.TYPE_4__* %0, %struct.merge_index_entry* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.merge_index_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.merge_index_entry* %1, %struct.merge_index_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @git_buf_puts(i32* %12, i32 %16)
  %18 = load i32, i32* @dircount, align 4
  %19 = call i32 @git_path_direach(i32* %12, i32 0, i32 %18, i64* %8)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

24:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %47, %24
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = load %struct.merge_index_entry*, %struct.merge_index_entry** %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i64 %32
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @git_blob_create_from_workdir(i32* %10, %struct.TYPE_4__* %30, i32 %35)
  %37 = load %struct.merge_index_entry*, %struct.merge_index_entry** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i64 %38
  %40 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @git_oid_fromstr(i32* %11, i32 %41)
  %43 = call i64 @git_oid_cmp(i32* %10, i32* %11)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %52

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %25

50:                                               ; preds = %25
  %51 = call i32 @git_buf_dispose(i32* %12)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %45, %23
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @git_buf_puts(i32*, i32) #1

declare dso_local i32 @git_path_direach(i32*, i32, i32, i64*) #1

declare dso_local i32 @git_blob_create_from_workdir(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
