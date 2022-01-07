; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_directory_exists_in_index_icase.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_directory_exists_in_index_icase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32 }

@index_directory = common dso_local global i32 0, align 4
@ignore_case = common dso_local global i32 0, align 4
@index_gitdir = common dso_local global i32 0, align 4
@index_nonexistent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i32)* @directory_exists_in_index_icase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @directory_exists_in_index_icase(%struct.index_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.index_state*, %struct.index_state** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @index_dir_exists(%struct.index_state* %9, i8* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @index_directory, align 4
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.index_state*, %struct.index_state** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ignore_case, align 4
  %21 = call %struct.cache_entry* @index_file_exists(%struct.index_state* %17, i8* %18, i32 %19, i32 %20)
  store %struct.cache_entry* %21, %struct.cache_entry** %8, align 8
  %22 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %23 = icmp ne %struct.cache_entry* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %26 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @S_ISGITLINK(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @index_gitdir, align 4
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %24, %16
  %33 = load i32, i32* @index_nonexistent, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %30, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @index_dir_exists(%struct.index_state*, i8*, i32) #1

declare dso_local %struct.cache_entry* @index_file_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
