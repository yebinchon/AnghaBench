; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_search_for_subdir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_search_for_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { %struct.ref_entry**, i32 }
%struct.ref_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_dir* (%struct.ref_dir*, i8*, i64, i32)* @search_for_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_dir* @search_for_subdir(%struct.ref_dir* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ref_dir*, align 8
  %6 = alloca %struct.ref_dir*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ref_entry*, align 8
  store %struct.ref_dir* %0, %struct.ref_dir** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ref_dir*, %struct.ref_dir** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @search_ref_dir(%struct.ref_dir* %12, i8* %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store %struct.ref_dir* null, %struct.ref_dir** %5, align 8
  br label %43

22:                                               ; preds = %18
  %23 = load %struct.ref_dir*, %struct.ref_dir** %6, align 8
  %24 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call %struct.ref_entry* @create_dir_entry(i32 %25, i8* %26, i64 %27, i32 0)
  store %struct.ref_entry* %28, %struct.ref_entry** %11, align 8
  %29 = load %struct.ref_dir*, %struct.ref_dir** %6, align 8
  %30 = load %struct.ref_entry*, %struct.ref_entry** %11, align 8
  %31 = call i32 @add_entry_to_dir(%struct.ref_dir* %29, %struct.ref_entry* %30)
  br label %40

32:                                               ; preds = %4
  %33 = load %struct.ref_dir*, %struct.ref_dir** %6, align 8
  %34 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %33, i32 0, i32 0
  %35 = load %struct.ref_entry**, %struct.ref_entry*** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %35, i64 %37
  %39 = load %struct.ref_entry*, %struct.ref_entry** %38, align 8
  store %struct.ref_entry* %39, %struct.ref_entry** %11, align 8
  br label %40

40:                                               ; preds = %32, %22
  %41 = load %struct.ref_entry*, %struct.ref_entry** %11, align 8
  %42 = call %struct.ref_dir* @get_ref_dir(%struct.ref_entry* %41)
  store %struct.ref_dir* %42, %struct.ref_dir** %5, align 8
  br label %43

43:                                               ; preds = %40, %21
  %44 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  ret %struct.ref_dir* %44
}

declare dso_local i32 @search_ref_dir(%struct.ref_dir*, i8*, i64) #1

declare dso_local %struct.ref_entry* @create_dir_entry(i32, i8*, i64, i32) #1

declare dso_local i32 @add_entry_to_dir(%struct.ref_dir*, %struct.ref_entry*) #1

declare dso_local %struct.ref_dir* @get_ref_dir(%struct.ref_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
