; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_dir_add_ignored.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_dir_add_ignored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_entry = type { i32 }
%struct.dir_struct = type { i64, %struct.dir_entry**, i32 }
%struct.index_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dir_entry* @dir_add_ignored(%struct.dir_struct* %0, %struct.index_state* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dir_entry*, align 8
  %6 = alloca %struct.dir_struct*, align 8
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dir_struct* %0, %struct.dir_struct** %6, align 8
  store %struct.index_state* %1, %struct.index_state** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.index_state*, %struct.index_state** %7, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @index_name_is_other(%struct.index_state* %10, i8* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.dir_entry* null, %struct.dir_entry** %5, align 8
  br label %39

16:                                               ; preds = %4
  %17 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %18 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %17, i32 0, i32 1
  %19 = load %struct.dir_entry**, %struct.dir_entry*** %18, align 8
  %20 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %21 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %25 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ALLOC_GROW(%struct.dir_entry** %19, i64 %23, i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.dir_entry* @dir_entry_new(i8* %28, i32 %29)
  %31 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %32 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %31, i32 0, i32 1
  %33 = load %struct.dir_entry**, %struct.dir_entry*** %32, align 8
  %34 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %35 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %33, i64 %36
  store %struct.dir_entry* %30, %struct.dir_entry** %38, align 8
  store %struct.dir_entry* %30, %struct.dir_entry** %5, align 8
  br label %39

39:                                               ; preds = %16, %15
  %40 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  ret %struct.dir_entry* %40
}

declare dso_local i32 @index_name_is_other(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.dir_entry**, i64, i32) #1

declare dso_local %struct.dir_entry* @dir_entry_new(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
