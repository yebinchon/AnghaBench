; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_add_entry_to_dir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_add_entry_to_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { i32, i32, %struct.ref_entry**, i32 }
%struct.ref_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_entry_to_dir(%struct.ref_dir* %0, %struct.ref_entry* %1) #0 {
  %3 = alloca %struct.ref_dir*, align 8
  %4 = alloca %struct.ref_entry*, align 8
  store %struct.ref_dir* %0, %struct.ref_dir** %3, align 8
  store %struct.ref_entry* %1, %struct.ref_entry** %4, align 8
  %5 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %6 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %5, i32 0, i32 2
  %7 = load %struct.ref_entry**, %struct.ref_entry*** %6, align 8
  %8 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %9 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %13 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ALLOC_GROW(%struct.ref_entry** %7, i32 %11, i32 %14)
  %16 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %17 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %18 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %17, i32 0, i32 2
  %19 = load %struct.ref_entry**, %struct.ref_entry*** %18, align 8
  %20 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %21 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %19, i64 %24
  store %struct.ref_entry* %16, %struct.ref_entry** %25, align 8
  %26 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %27 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %66, label %30

30:                                               ; preds = %2
  %31 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %32 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %35 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %30
  %40 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %41 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %40, i32 0, i32 2
  %42 = load %struct.ref_entry**, %struct.ref_entry*** %41, align 8
  %43 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %44 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %42, i64 %47
  %49 = load %struct.ref_entry*, %struct.ref_entry** %48, align 8
  %50 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %53 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %52, i32 0, i32 2
  %54 = load %struct.ref_entry**, %struct.ref_entry*** %53, align 8
  %55 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %56 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ref_entry*, %struct.ref_entry** %54, i64 %59
  %61 = load %struct.ref_entry*, %struct.ref_entry** %60, align 8
  %62 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @strcmp(i32 %51, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %39, %2
  %67 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %68 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ref_dir*, %struct.ref_dir** %3, align 8
  %71 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %39, %30
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.ref_entry**, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
