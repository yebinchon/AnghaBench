; ModuleID = '/home/carl/AnghaBench/git/extr_patch-ids.c_add_commit_patch_id.c'
source_filename = "/home/carl/AnghaBench/git/extr_patch-ids.c_add_commit_patch_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch_id = type { i32 }
%struct.commit = type { i32 }
%struct.patch_ids = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.patch_id* @add_commit_patch_id(%struct.commit* %0, %struct.patch_ids* %1) #0 {
  %3 = alloca %struct.patch_id*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.patch_ids*, align 8
  %6 = alloca %struct.patch_id*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store %struct.patch_ids* %1, %struct.patch_ids** %5, align 8
  %7 = load %struct.commit*, %struct.commit** %4, align 8
  %8 = call i32 @patch_id_defined(%struct.commit* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.patch_id* null, %struct.patch_id** %3, align 8
  br label %28

11:                                               ; preds = %2
  %12 = call %struct.patch_id* @xcalloc(i32 1, i32 4)
  store %struct.patch_id* %12, %struct.patch_id** %6, align 8
  %13 = load %struct.patch_id*, %struct.patch_id** %6, align 8
  %14 = load %struct.commit*, %struct.commit** %4, align 8
  %15 = load %struct.patch_ids*, %struct.patch_ids** %5, align 8
  %16 = call i64 @init_patch_id_entry(%struct.patch_id* %13, %struct.commit* %14, %struct.patch_ids* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.patch_id*, %struct.patch_id** %6, align 8
  %20 = call i32 @free(%struct.patch_id* %19)
  store %struct.patch_id* null, %struct.patch_id** %3, align 8
  br label %28

21:                                               ; preds = %11
  %22 = load %struct.patch_ids*, %struct.patch_ids** %5, align 8
  %23 = getelementptr inbounds %struct.patch_ids, %struct.patch_ids* %22, i32 0, i32 0
  %24 = load %struct.patch_id*, %struct.patch_id** %6, align 8
  %25 = getelementptr inbounds %struct.patch_id, %struct.patch_id* %24, i32 0, i32 0
  %26 = call i32 @hashmap_add(i32* %23, i32* %25)
  %27 = load %struct.patch_id*, %struct.patch_id** %6, align 8
  store %struct.patch_id* %27, %struct.patch_id** %3, align 8
  br label %28

28:                                               ; preds = %21, %18, %10
  %29 = load %struct.patch_id*, %struct.patch_id** %3, align 8
  ret %struct.patch_id* %29
}

declare dso_local i32 @patch_id_defined(%struct.commit*) #1

declare dso_local %struct.patch_id* @xcalloc(i32, i32) #1

declare dso_local i64 @init_patch_id_entry(%struct.patch_id*, %struct.commit*, %struct.patch_ids*) #1

declare dso_local i32 @free(%struct.patch_id*) #1

declare dso_local i32 @hashmap_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
