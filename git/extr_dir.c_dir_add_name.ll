; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_dir_add_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_dir_add_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_entry = type { i32 }
%struct.dir_struct = type { i64, %struct.dir_entry**, i32 }
%struct.index_state = type { i32 }

@ignore_case = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_entry* (%struct.dir_struct*, %struct.index_state*, i8*, i32)* @dir_add_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_entry* @dir_add_name(%struct.dir_struct* %0, %struct.index_state* %1, i8* %2, i32 %3) #0 {
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
  %13 = load i32, i32* @ignore_case, align 4
  %14 = call i64 @index_file_exists(%struct.index_state* %10, i8* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.dir_entry* null, %struct.dir_entry** %5, align 8
  br label %40

17:                                               ; preds = %4
  %18 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %19 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %18, i32 0, i32 1
  %20 = load %struct.dir_entry**, %struct.dir_entry*** %19, align 8
  %21 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %22 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %26 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ALLOC_GROW(%struct.dir_entry** %20, i64 %24, i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.dir_entry* @dir_entry_new(i8* %29, i32 %30)
  %32 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %33 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %32, i32 0, i32 1
  %34 = load %struct.dir_entry**, %struct.dir_entry*** %33, align 8
  %35 = load %struct.dir_struct*, %struct.dir_struct** %6, align 8
  %36 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %34, i64 %37
  store %struct.dir_entry* %31, %struct.dir_entry** %39, align 8
  store %struct.dir_entry* %31, %struct.dir_entry** %5, align 8
  br label %40

40:                                               ; preds = %17, %16
  %41 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  ret %struct.dir_entry* %41
}

declare dso_local i64 @index_file_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.dir_entry**, i64, i32) #1

declare dso_local %struct.dir_entry* @dir_entry_new(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
