; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_clone_metafile_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_clone_metafile_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_payload = type { i32, i32, i32, i64, i32 }

@M_tot_entries = common dso_local global i32 0, align 4
@M_obj_id_list = common dso_local global i32 0, align 4
@OTree = common dso_local global i32 0, align 4
@TF_ZERO = common dso_local global i64 0, align 8
@M_global_id_list = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @clone_metafile_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clone_metafile_entry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tree_payload*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @M_tot_entries, align 4
  %11 = icmp slt i32 %9, %10
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @M_obj_id_list, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @OARR_ENTRY(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32* @listree_replace_large(i32* @OTree, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @NODE_TYPE(i32* %21)
  %23 = load i64, i64* @TF_ZERO, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.tree_payload* @PAYLOAD(i32* %27)
  store %struct.tree_payload* %28, %struct.tree_payload** %5, align 8
  %29 = load i32*, i32** @M_global_id_list, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %35 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %37 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @metafile_get_flags(i32 %38)
  %40 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %41 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @metafile_get_value(i32 %42)
  %44 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %45 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @metafile_get_date(i32 %46)
  %48 = load %struct.tree_payload*, %struct.tree_payload** %5, align 8
  %49 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %4, align 8
  ret i32* %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @OARR_ENTRY(i32, i32) #1

declare dso_local i32* @listree_replace_large(i32*, i32) #1

declare dso_local i64 @NODE_TYPE(i32*) #1

declare dso_local %struct.tree_payload* @PAYLOAD(i32*) #1

declare dso_local i32 @metafile_get_flags(i32) #1

declare dso_local i32 @metafile_get_value(i32) #1

declare dso_local i32 @metafile_get_date(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
