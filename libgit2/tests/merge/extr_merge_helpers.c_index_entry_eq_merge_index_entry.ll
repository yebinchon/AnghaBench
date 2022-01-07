; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_index_entry_eq_merge_index_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_index_entry_eq_merge_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_index_entry*, %struct.TYPE_4__*)* @index_entry_eq_merge_index_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_entry_eq_merge_index_entry(%struct.merge_index_entry* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_index_entry*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.merge_index_entry* %0, %struct.merge_index_entry** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.merge_index_entry*, %struct.merge_index_entry** %4, align 8
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @strlen(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.merge_index_entry*, %struct.merge_index_entry** %4, align 8
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @git_oid_fromstr(i32* %6, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  store i32 1, i32* %7, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.merge_index_entry*, %struct.merge_index_entry** %4, align 8
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %43, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = call i64 @git_oid_cmp(i32* %33, i32* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = call i64 @git_index_entry_stage(%struct.TYPE_4__* %37)
  %39 = load %struct.merge_index_entry*, %struct.merge_index_entry** %4, align 8
  %40 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %31, %20
  store i32 0, i32* %3, align 4
  br label %77

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.merge_index_entry*, %struct.merge_index_entry** %4, align 8
  %56 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @strlen(i32 %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %49
  store i32 0, i32* %3, align 4
  br label %77

61:                                               ; preds = %54, %44
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.merge_index_entry*, %struct.merge_index_entry** %4, align 8
  %71 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @strcmp(i32* %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %77

76:                                               ; preds = %66, %61
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %75, %60, %43
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i64 @git_index_entry_stage(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
