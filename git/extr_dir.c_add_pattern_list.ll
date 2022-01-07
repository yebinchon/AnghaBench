; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_add_pattern_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_add_pattern_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_list = type { i8* }
%struct.dir_struct = type { %struct.exclude_list_group* }
%struct.exclude_list_group = type { i64, %struct.pattern_list*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pattern_list* @add_pattern_list(%struct.dir_struct* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.dir_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pattern_list*, align 8
  %8 = alloca %struct.exclude_list_group*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %10 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %9, i32 0, i32 0
  %11 = load %struct.exclude_list_group*, %struct.exclude_list_group** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.exclude_list_group, %struct.exclude_list_group* %11, i64 %13
  store %struct.exclude_list_group* %14, %struct.exclude_list_group** %8, align 8
  %15 = load %struct.exclude_list_group*, %struct.exclude_list_group** %8, align 8
  %16 = getelementptr inbounds %struct.exclude_list_group, %struct.exclude_list_group* %15, i32 0, i32 1
  %17 = load %struct.pattern_list*, %struct.pattern_list** %16, align 8
  %18 = load %struct.exclude_list_group*, %struct.exclude_list_group** %8, align 8
  %19 = getelementptr inbounds %struct.exclude_list_group, %struct.exclude_list_group* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load %struct.exclude_list_group*, %struct.exclude_list_group** %8, align 8
  %23 = getelementptr inbounds %struct.exclude_list_group, %struct.exclude_list_group* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ALLOC_GROW(%struct.pattern_list* %17, i64 %21, i32 %24)
  %26 = load %struct.exclude_list_group*, %struct.exclude_list_group** %8, align 8
  %27 = getelementptr inbounds %struct.exclude_list_group, %struct.exclude_list_group* %26, i32 0, i32 1
  %28 = load %struct.pattern_list*, %struct.pattern_list** %27, align 8
  %29 = load %struct.exclude_list_group*, %struct.exclude_list_group** %8, align 8
  %30 = getelementptr inbounds %struct.exclude_list_group, %struct.exclude_list_group* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %28, i64 %31
  store %struct.pattern_list* %33, %struct.pattern_list** %7, align 8
  %34 = load %struct.pattern_list*, %struct.pattern_list** %7, align 8
  %35 = call i32 @memset(%struct.pattern_list* %34, i32 0, i32 8)
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.pattern_list*, %struct.pattern_list** %7, align 8
  %38 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.pattern_list*, %struct.pattern_list** %7, align 8
  ret %struct.pattern_list* %39
}

declare dso_local i32 @ALLOC_GROW(%struct.pattern_list*, i64, i32) #1

declare dso_local i32 @memset(%struct.pattern_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
