; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_pmb_advance_or_null.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_pmb_advance_or_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32 }
%struct.moved_entry = type { i32, %struct.moved_entry* }
%struct.hashmap = type { i32 (%struct.diff_options.0*, i32*, i32*, i32*)* }
%struct.diff_options.0 = type opaque
%struct.moved_block = type { %struct.moved_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, %struct.moved_entry*, %struct.hashmap*, %struct.moved_block*, i32)* @pmb_advance_or_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmb_advance_or_null(%struct.diff_options* %0, %struct.moved_entry* %1, %struct.hashmap* %2, %struct.moved_block* %3, i32 %4) #0 {
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca %struct.moved_entry*, align 8
  %8 = alloca %struct.hashmap*, align 8
  %9 = alloca %struct.moved_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.moved_entry*, align 8
  %13 = alloca %struct.moved_entry*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %6, align 8
  store %struct.moved_entry* %1, %struct.moved_entry** %7, align 8
  store %struct.hashmap* %2, %struct.hashmap** %8, align 8
  store %struct.moved_block* %3, %struct.moved_block** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %67, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load %struct.moved_block*, %struct.moved_block** %9, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.moved_block, %struct.moved_block* %19, i64 %21
  %23 = getelementptr inbounds %struct.moved_block, %struct.moved_block* %22, i32 0, i32 0
  %24 = load %struct.moved_entry*, %struct.moved_entry** %23, align 8
  store %struct.moved_entry* %24, %struct.moved_entry** %12, align 8
  %25 = load %struct.moved_entry*, %struct.moved_entry** %12, align 8
  %26 = icmp ne %struct.moved_entry* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.moved_entry*, %struct.moved_entry** %12, align 8
  %29 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %28, i32 0, i32 1
  %30 = load %struct.moved_entry*, %struct.moved_entry** %29, align 8
  %31 = icmp ne %struct.moved_entry* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.moved_entry*, %struct.moved_entry** %12, align 8
  %34 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %33, i32 0, i32 1
  %35 = load %struct.moved_entry*, %struct.moved_entry** %34, align 8
  br label %37

36:                                               ; preds = %27, %18
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi %struct.moved_entry* [ %35, %32 ], [ null, %36 ]
  store %struct.moved_entry* %38, %struct.moved_entry** %13, align 8
  %39 = load %struct.moved_entry*, %struct.moved_entry** %13, align 8
  %40 = icmp ne %struct.moved_entry* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %43 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %42, i32 0, i32 0
  %44 = load i32 (%struct.diff_options.0*, i32*, i32*, i32*)*, i32 (%struct.diff_options.0*, i32*, i32*, i32*)** %43, align 8
  %45 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %46 = bitcast %struct.diff_options* %45 to %struct.diff_options.0*
  %47 = load %struct.moved_entry*, %struct.moved_entry** %13, align 8
  %48 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %47, i32 0, i32 0
  %49 = load %struct.moved_entry*, %struct.moved_entry** %7, align 8
  %50 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %49, i32 0, i32 0
  %51 = call i32 %44(%struct.diff_options.0* %46, i32* %48, i32* %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %41
  %54 = load %struct.moved_entry*, %struct.moved_entry** %13, align 8
  %55 = load %struct.moved_block*, %struct.moved_block** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.moved_block, %struct.moved_block* %55, i64 %57
  %59 = getelementptr inbounds %struct.moved_block, %struct.moved_block* %58, i32 0, i32 0
  store %struct.moved_entry* %54, %struct.moved_entry** %59, align 8
  br label %66

60:                                               ; preds = %41, %37
  %61 = load %struct.moved_block*, %struct.moved_block** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.moved_block, %struct.moved_block* %61, i64 %63
  %65 = getelementptr inbounds %struct.moved_block, %struct.moved_block* %64, i32 0, i32 0
  store %struct.moved_entry* null, %struct.moved_entry** %65, align 8
  br label %66

66:                                               ; preds = %60, %53
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %14

70:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
