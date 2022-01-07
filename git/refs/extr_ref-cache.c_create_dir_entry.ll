; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_create_dir_entry.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_create_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ref_cache* }
%struct.ref_cache = type { i32 }

@name = common dso_local global i32 0, align 4
@REF_DIR = common dso_local global i32 0, align 4
@REF_INCOMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_entry* @create_dir_entry(%struct.ref_cache* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ref_cache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_entry*, align 8
  store %struct.ref_cache* %0, %struct.ref_cache** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ref_entry*, %struct.ref_entry** %9, align 8
  %11 = load i32, i32* @name, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @FLEX_ALLOC_MEM(%struct.ref_entry* %10, i32 %11, i8* %12, i64 %13)
  %15 = load %struct.ref_cache*, %struct.ref_cache** %5, align 8
  %16 = load %struct.ref_entry*, %struct.ref_entry** %9, align 8
  %17 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.ref_cache* %15, %struct.ref_cache** %19, align 8
  %20 = load i32, i32* @REF_DIR, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @REF_INCOMPLETE, align 4
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = or i32 %20, %27
  %29 = load %struct.ref_entry*, %struct.ref_entry** %9, align 8
  %30 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ref_entry*, %struct.ref_entry** %9, align 8
  ret %struct.ref_entry* %31
}

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.ref_entry*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
