; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_retry_bad_packed_offset.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_retry_bad_packed_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.packed_git = type { i32 }
%struct.revindex_entry = type { i32 }
%struct.object_id = type { i32 }

@OBJ_BAD = common dso_local global i32 0, align 4
@OBJ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.packed_git*, i32)* @retry_bad_packed_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retry_bad_packed_offset(%struct.repository* %0, %struct.packed_git* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.revindex_entry*, align 8
  %10 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.packed_git* %1, %struct.packed_git** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.revindex_entry* @find_pack_revindex(%struct.packed_git* %11, i32 %12)
  store %struct.revindex_entry* %13, %struct.revindex_entry** %9, align 8
  %14 = load %struct.revindex_entry*, %struct.revindex_entry** %9, align 8
  %15 = icmp ne %struct.revindex_entry* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @OBJ_BAD, align 4
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %20 = load %struct.revindex_entry*, %struct.revindex_entry** %9, align 8
  %21 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nth_packed_object_oid(%struct.object_id* %10, %struct.packed_git* %19, i32 %22)
  %24 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %25 = getelementptr inbounds %struct.object_id, %struct.object_id* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mark_bad_packed_object(%struct.packed_git* %24, i32 %26)
  %28 = load %struct.repository*, %struct.repository** %5, align 8
  %29 = call i32 @oid_object_info(%struct.repository* %28, %struct.object_id* %10, i32* null)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @OBJ_NONE, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* @OBJ_BAD, align 4
  store i32 %34, i32* %4, align 4
  br label %37

35:                                               ; preds = %18
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %33, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.revindex_entry* @find_pack_revindex(%struct.packed_git*, i32) #1

declare dso_local i32 @nth_packed_object_oid(%struct.object_id*, %struct.packed_git*, i32) #1

declare dso_local i32 @mark_bad_packed_object(%struct.packed_git*, i32) #1

declare dso_local i32 @oid_object_info(%struct.repository*, %struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
