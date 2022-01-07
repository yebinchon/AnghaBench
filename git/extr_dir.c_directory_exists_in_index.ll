; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_directory_exists_in_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_directory_exists_in_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i8*, i32 }

@ignore_case = common dso_local global i64 0, align 8
@index_directory = common dso_local global i32 0, align 4
@index_gitdir = common dso_local global i32 0, align 4
@index_nonexistent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i32)* @directory_exists_in_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @directory_exists_in_index(%struct.index_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca i8, align 1
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @ignore_case, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.index_state*, %struct.index_state** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @directory_exists_in_index_icase(%struct.index_state* %14, i8* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  %19 = load %struct.index_state*, %struct.index_state** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @index_name_pos(%struct.index_state* %19, i8* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 0, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %18
  br label %30

30:                                               ; preds = %82, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.index_state*, %struct.index_state** %5, align 8
  %33 = getelementptr inbounds %struct.index_state, %struct.index_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %30
  %37 = load %struct.index_state*, %struct.index_state** %5, align 8
  %38 = getelementptr inbounds %struct.index_state, %struct.index_state* %37, i32 0, i32 1
  %39 = load %struct.cache_entry**, %struct.cache_entry*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %39, i64 %42
  %44 = load %struct.cache_entry*, %struct.cache_entry** %43, align 8
  store %struct.cache_entry* %44, %struct.cache_entry** %9, align 8
  %45 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @strncmp(i8* %47, i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %83

53:                                               ; preds = %36
  %54 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %10, align 1
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sgt i32 %62, 47
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %83

65:                                               ; preds = %53
  %66 = load i8, i8* %10, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @index_directory, align 4
  store i32 %70, i32* %4, align 4
  br label %85

71:                                               ; preds = %65
  %72 = load i8, i8* %10, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %76 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @S_ISGITLINK(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @index_gitdir, align 4
  store i32 %81, i32* %4, align 4
  br label %85

82:                                               ; preds = %74, %71
  br label %30

83:                                               ; preds = %64, %52, %30
  %84 = load i32, i32* @index_nonexistent, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %80, %69, %13
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @directory_exists_in_index_icase(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
