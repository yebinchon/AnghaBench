; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_is_gitmodules_unmerged.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_is_gitmodules_unmerged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@GITMODULES_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_gitmodules_unmerged(%struct.index_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  %6 = load %struct.index_state*, %struct.index_state** %3, align 8
  %7 = load i32, i32* @GITMODULES_FILE, align 4
  %8 = load i32, i32* @GITMODULES_FILE, align 4
  %9 = call i64 @strlen(i32 %8)
  %10 = call i32 @index_name_pos(%struct.index_state* %6, i32 %7, i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 -1, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.index_state*, %struct.index_state** %3, align 8
  %17 = getelementptr inbounds %struct.index_state, %struct.index_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %13
  %22 = load %struct.index_state*, %struct.index_state** %3, align 8
  %23 = getelementptr inbounds %struct.index_state, %struct.index_state* %22, i32 0, i32 1
  %24 = load %struct.cache_entry**, %struct.cache_entry*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %24, i64 %26
  %28 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  store %struct.cache_entry* %28, %struct.cache_entry** %5, align 8
  %29 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %30 = call i64 @ce_namelen(%struct.cache_entry* %29)
  %31 = load i32, i32* @GITMODULES_FILE, align 4
  %32 = call i64 @strlen(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GITMODULES_FILE, align 4
  %39 = call i32 @strcmp(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %45

42:                                               ; preds = %34, %21
  br label %43

43:                                               ; preds = %42, %13
  br label %44

44:                                               ; preds = %43, %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @index_name_pos(%struct.index_state*, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
