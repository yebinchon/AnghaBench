; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_create_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_create_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_index_entry = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@TEST_REPO_PATH = common dso_local global i32 0, align 4
@g_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.checkout_index_entry*, i64)* @create_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_index(%struct.checkout_index_entry* %0, i64 %1) #0 {
  %3 = alloca %struct.checkout_index_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  store %struct.checkout_index_entry* %0, %struct.checkout_index_entry** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %8, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %64, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %67

13:                                               ; preds = %9
  %14 = load i32, i32* @TEST_REPO_PATH, align 4
  %15 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %15, i64 %16
  %18 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @git_buf_joinpath(i32* %5, i32 %14, i32 %19)
  %21 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %21, i64 %22
  %24 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %55

27:                                               ; preds = %13
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %31, i64 %33
  %35 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %37, i64 %38
  %40 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @strcmp(i32 %36, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %30
  %45 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %45, i64 %47
  %49 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %44, %30, %27
  %53 = call i32 @git_buf_cstr(i32* %5)
  %54 = call i32 @p_unlink(i32 %53)
  br label %55

55:                                               ; preds = %52, %44, %13
  %56 = load i32, i32* @g_index, align 4
  %57 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %57, i64 %58
  %60 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @git_index_remove_bypath(i32 %56, i32 %61)
  %63 = call i32 @cl_git_pass(i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %9

67:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %102, %67
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %68
  %73 = call i32 @memset(%struct.TYPE_5__* %7, i32 0, i32 12)
  %74 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %74, i64 %75
  %77 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %80, i64 %81
  %83 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_5__* %7, i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %87 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %87, i64 %88
  %90 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @git_oid_fromstr(i32* %86, i32 %91)
  %93 = load %struct.checkout_index_entry*, %struct.checkout_index_entry** %3, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %93, i64 %94
  %96 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @g_index, align 4
  %100 = call i32 @git_index_add(i32 %99, %struct.TYPE_5__* %7)
  %101 = call i32 @cl_git_pass(i32 %100)
  br label %102

102:                                              ; preds = %72
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %6, align 8
  br label %68

105:                                              ; preds = %68
  %106 = call i32 @git_buf_dispose(i32* %5)
  ret void
}

declare dso_local i32 @git_buf_joinpath(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @p_unlink(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_remove_bypath(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_index_add(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
