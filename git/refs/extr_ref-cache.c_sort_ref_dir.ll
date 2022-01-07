; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_sort_ref_dir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_sort_ref_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { i32, i32, %struct.ref_entry** }
%struct.ref_entry = type { i32 }

@ref_entry_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_dir*)* @sort_ref_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_ref_dir(%struct.ref_dir* %0) #0 {
  %2 = alloca %struct.ref_dir*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_entry*, align 8
  %6 = alloca %struct.ref_entry*, align 8
  store %struct.ref_dir* %0, %struct.ref_dir** %2, align 8
  store %struct.ref_entry* null, %struct.ref_entry** %5, align 8
  %7 = load %struct.ref_dir*, %struct.ref_dir** %2, align 8
  %8 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ref_dir*, %struct.ref_dir** %2, align 8
  %11 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.ref_dir*, %struct.ref_dir** %2, align 8
  %17 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %16, i32 0, i32 2
  %18 = load %struct.ref_entry**, %struct.ref_entry*** %17, align 8
  %19 = load %struct.ref_dir*, %struct.ref_dir** %2, align 8
  %20 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ref_entry_cmp, align 4
  %23 = call i32 @QSORT(%struct.ref_entry** %18, i32 %21, i32 %22)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %58, %15
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ref_dir*, %struct.ref_dir** %2, align 8
  %27 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = load %struct.ref_dir*, %struct.ref_dir** %2, align 8
  %32 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %31, i32 0, i32 2
  %33 = load %struct.ref_entry**, %struct.ref_entry*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %33, i64 %35
  %37 = load %struct.ref_entry*, %struct.ref_entry** %36, align 8
  store %struct.ref_entry* %37, %struct.ref_entry** %6, align 8
  %38 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %39 = icmp ne %struct.ref_entry* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %42 = load %struct.ref_entry*, %struct.ref_entry** %6, align 8
  %43 = call i64 @is_dup_ref(%struct.ref_entry* %41, %struct.ref_entry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.ref_entry*, %struct.ref_entry** %6, align 8
  %47 = call i32 @free_ref_entry(%struct.ref_entry* %46)
  br label %57

48:                                               ; preds = %40, %30
  %49 = load %struct.ref_entry*, %struct.ref_entry** %6, align 8
  %50 = load %struct.ref_dir*, %struct.ref_dir** %2, align 8
  %51 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %50, i32 0, i32 2
  %52 = load %struct.ref_entry**, %struct.ref_entry*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %52, i64 %55
  store %struct.ref_entry* %49, %struct.ref_entry** %56, align 8
  store %struct.ref_entry* %49, %struct.ref_entry** %5, align 8
  br label %57

57:                                               ; preds = %48, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %24

61:                                               ; preds = %24
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.ref_dir*, %struct.ref_dir** %2, align 8
  %64 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ref_dir*, %struct.ref_dir** %2, align 8
  %66 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %14
  ret void
}

declare dso_local i32 @QSORT(%struct.ref_entry**, i32, i32) #1

declare dso_local i64 @is_dup_ref(%struct.ref_entry*, %struct.ref_entry*) #1

declare dso_local i32 @free_ref_entry(%struct.ref_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
