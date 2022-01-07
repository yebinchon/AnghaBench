; ModuleID = '/home/carl/AnghaBench/git/extr_patch-ids.c_init_patch_ids.c'
source_filename = "/home/carl/AnghaBench/git/extr_patch-ids.c_init_patch_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.patch_ids = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@patch_id_neq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_patch_ids(%struct.repository* %0, %struct.patch_ids* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.patch_ids*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.patch_ids* %1, %struct.patch_ids** %4, align 8
  %5 = load %struct.patch_ids*, %struct.patch_ids** %4, align 8
  %6 = call i32 @memset(%struct.patch_ids* %5, i32 0, i32 24)
  %7 = load %struct.repository*, %struct.repository** %3, align 8
  %8 = load %struct.patch_ids*, %struct.patch_ids** %4, align 8
  %9 = getelementptr inbounds %struct.patch_ids, %struct.patch_ids* %8, i32 0, i32 0
  %10 = call i32 @repo_diff_setup(%struct.repository* %7, %struct.TYPE_6__* %9)
  %11 = load %struct.patch_ids*, %struct.patch_ids** %4, align 8
  %12 = getelementptr inbounds %struct.patch_ids, %struct.patch_ids* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.patch_ids*, %struct.patch_ids** %4, align 8
  %15 = getelementptr inbounds %struct.patch_ids, %struct.patch_ids* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.patch_ids*, %struct.patch_ids** %4, align 8
  %19 = getelementptr inbounds %struct.patch_ids, %struct.patch_ids* %18, i32 0, i32 0
  %20 = call i32 @diff_setup_done(%struct.TYPE_6__* %19)
  %21 = load %struct.patch_ids*, %struct.patch_ids** %4, align 8
  %22 = getelementptr inbounds %struct.patch_ids, %struct.patch_ids* %21, i32 0, i32 1
  %23 = load i32, i32* @patch_id_neq, align 4
  %24 = load %struct.patch_ids*, %struct.patch_ids** %4, align 8
  %25 = getelementptr inbounds %struct.patch_ids, %struct.patch_ids* %24, i32 0, i32 0
  %26 = call i32 @hashmap_init(i32* %22, i32 %23, %struct.TYPE_6__* %25, i32 256)
  ret i32 0
}

declare dso_local i32 @memset(%struct.patch_ids*, i32, i32) #1

declare dso_local i32 @repo_diff_setup(%struct.repository*, %struct.TYPE_6__*) #1

declare dso_local i32 @diff_setup_done(%struct.TYPE_6__*) #1

declare dso_local i32 @hashmap_init(i32*, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
