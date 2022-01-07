; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_load_gitmodules_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_load_gitmodules_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.cache_entry** }
%struct.cache_entry = type { i32 }
%struct.checkout = type { i32 }

@GITMODULES_FILE = common dso_local global i32 0, align 4
@CE_WT_REMOVE = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@CE_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.checkout*)* @load_gitmodules_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_gitmodules_file(%struct.index_state* %0, %struct.checkout* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.checkout*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.checkout* %1, %struct.checkout** %4, align 8
  %7 = load %struct.index_state*, %struct.index_state** %3, align 8
  %8 = load i32, i32* @GITMODULES_FILE, align 4
  %9 = load i32, i32* @GITMODULES_FILE, align 4
  %10 = call i32 @strlen(i32 %9)
  %11 = call i32 @index_name_pos(%struct.index_state* %7, i32 %8, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %2
  %15 = load %struct.index_state*, %struct.index_state** %3, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load %struct.cache_entry**, %struct.cache_entry*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %17, i64 %19
  %21 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  store %struct.cache_entry* %21, %struct.cache_entry** %6, align 8
  %22 = load %struct.checkout*, %struct.checkout** %4, align 8
  %23 = icmp ne %struct.checkout* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %14
  %25 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %26 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CE_WT_REMOVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @the_repository, align 4
  %33 = call i32 @repo_read_gitmodules(i32 %32)
  br label %53

34:                                               ; preds = %24, %14
  %35 = load %struct.checkout*, %struct.checkout** %4, align 8
  %36 = icmp ne %struct.checkout* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %39 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CE_UPDATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32, i32* @the_repository, align 4
  %46 = call i32 @submodule_free(i32 %45)
  %47 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %48 = load %struct.checkout*, %struct.checkout** %4, align 8
  %49 = call i32 @checkout_entry(%struct.cache_entry* %47, %struct.checkout* %48, i32* null, i32* null)
  %50 = load i32, i32* @the_repository, align 4
  %51 = call i32 @repo_read_gitmodules(i32 %50)
  br label %52

52:                                               ; preds = %44, %37, %34
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %2
  ret void
}

declare dso_local i32 @index_name_pos(%struct.index_state*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @repo_read_gitmodules(i32) #1

declare dso_local i32 @submodule_free(i32) #1

declare dso_local i32 @checkout_entry(%struct.cache_entry*, %struct.checkout*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
