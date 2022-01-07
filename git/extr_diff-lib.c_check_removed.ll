; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_check_removed.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_check_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32 }
%struct.stat = type { i32 }
%struct.object_id = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.stat*)* @check_removed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_removed(%struct.cache_entry* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca %struct.object_id, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %7 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %8 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.stat*, %struct.stat** %5, align 8
  %11 = call i64 @lstat(i32 %9, %struct.stat* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @is_missing_file_error(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %49

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %21 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %24 = call i32 @ce_namelen(%struct.cache_entry* %23)
  %25 = call i64 @has_symlink_leading_path(i32 %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %49

28:                                               ; preds = %19
  %29 = load %struct.stat*, %struct.stat** %5, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @S_ISDIR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @S_ISGITLINK(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @resolve_gitlink_ref(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %6)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %49

47:                                               ; preds = %40, %34
  br label %48

48:                                               ; preds = %47, %28
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %46, %27, %18, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @is_missing_file_error(i32) #1

declare dso_local i64 @has_symlink_leading_path(i32, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i64 @resolve_gitlink_ref(i32, i8*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
