; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_find_ref_entry.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_find_ref_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_entry = type { i32 }
%struct.ref_dir = type { %struct.ref_entry** }

@REF_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_entry* @find_ref_entry(%struct.ref_dir* %0, i8* %1) #0 {
  %3 = alloca %struct.ref_entry*, align 8
  %4 = alloca %struct.ref_dir*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_entry*, align 8
  store %struct.ref_dir* %0, %struct.ref_dir** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.ref_dir* @find_containing_dir(%struct.ref_dir* %8, i8* %9, i32 0)
  store %struct.ref_dir* %10, %struct.ref_dir** %4, align 8
  %11 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %12 = icmp ne %struct.ref_dir* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.ref_entry* null, %struct.ref_entry** %3, align 8
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @search_ref_dir(%struct.ref_dir* %15, i8* %16, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store %struct.ref_entry* null, %struct.ref_entry** %3, align 8
  br label %42

23:                                               ; preds = %14
  %24 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %25 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %24, i32 0, i32 0
  %26 = load %struct.ref_entry**, %struct.ref_entry*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %26, i64 %28
  %30 = load %struct.ref_entry*, %struct.ref_entry** %29, align 8
  store %struct.ref_entry* %30, %struct.ref_entry** %7, align 8
  %31 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  %32 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @REF_DIR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %40

38:                                               ; preds = %23
  %39 = load %struct.ref_entry*, %struct.ref_entry** %7, align 8
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi %struct.ref_entry* [ null, %37 ], [ %39, %38 ]
  store %struct.ref_entry* %41, %struct.ref_entry** %3, align 8
  br label %42

42:                                               ; preds = %40, %22, %13
  %43 = load %struct.ref_entry*, %struct.ref_entry** %3, align 8
  ret %struct.ref_entry* %43
}

declare dso_local %struct.ref_dir* @find_containing_dir(%struct.ref_dir*, i8*, i32) #1

declare dso_local i32 @search_ref_dir(%struct.ref_dir*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
