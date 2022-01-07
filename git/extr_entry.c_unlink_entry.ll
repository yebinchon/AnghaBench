; ModuleID = '/home/carl/AnghaBench/git/extr_entry.c_unlink_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_entry.c_unlink_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32 }
%struct.submodule = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@SUBMODULE_MOVE_HEAD_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unlink_entry(%struct.cache_entry* %0) #0 {
  %2 = alloca %struct.cache_entry*, align 8
  %3 = alloca %struct.submodule*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %2, align 8
  %4 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %5 = call %struct.submodule* @submodule_from_ce(%struct.cache_entry* %4)
  store %struct.submodule* %5, %struct.submodule** %3, align 8
  %6 = load %struct.submodule*, %struct.submodule** %3, align 8
  %7 = icmp ne %struct.submodule* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %10 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SUBMODULE_MOVE_HEAD_FORCE, align 4
  %13 = call i32 @submodule_move_head(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %16 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %19 = call i32 @ce_namelen(%struct.cache_entry* %18)
  %20 = call i32 @check_leading_path(i32 %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %40

23:                                               ; preds = %14
  %24 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %25 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @remove_or_warn(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %40

33:                                               ; preds = %23
  %34 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %35 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %38 = call i32 @ce_namelen(%struct.cache_entry* %37)
  %39 = call i32 @schedule_dir_for_removal(i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %33, %32, %22
  ret void
}

declare dso_local %struct.submodule* @submodule_from_ce(%struct.cache_entry*) #1

declare dso_local i32 @submodule_move_head(i32, i8*, i32*, i32) #1

declare dso_local i32 @check_leading_path(i32, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @remove_or_warn(i32, i32) #1

declare dso_local i32 @schedule_dir_for_removal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
