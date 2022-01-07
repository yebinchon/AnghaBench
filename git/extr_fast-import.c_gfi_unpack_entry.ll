; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_gfi_unpack_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_gfi_unpack_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.object_entry = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@all_packs = common dso_local global %struct.packed_git** null, align 8
@pack_data = common dso_local global %struct.packed_git* null, align 8
@pack_size = common dso_local global i64 0, align 8
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@pack_file = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object_entry*, i64*)* @gfi_unpack_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gfi_unpack_entry(%struct.object_entry* %0, i64* %1) #0 {
  %3 = alloca %struct.object_entry*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.packed_git*, align 8
  store %struct.object_entry* %0, %struct.object_entry** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.packed_git**, %struct.packed_git*** @all_packs, align 8
  %8 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %9 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %7, i64 %10
  %12 = load %struct.packed_git*, %struct.packed_git** %11, align 8
  store %struct.packed_git* %12, %struct.packed_git** %6, align 8
  %13 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %14 = load %struct.packed_git*, %struct.packed_git** @pack_data, align 8
  %15 = icmp eq %struct.packed_git* %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %18 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @pack_size, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %28 = call i32 @close_pack_windows(%struct.packed_git* %27)
  %29 = load i32, i32* @pack_file, align 4
  %30 = call i32 @hashflush(i32 %29)
  %31 = load i64, i64* @pack_size, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %37 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %26, %16, %2
  %39 = load i32, i32* @the_repository, align 4
  %40 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %41 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %42 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = call i8* @unpack_entry(i32 %39, %struct.packed_git* %40, i32 %44, i32* %5, i64* %45)
  ret i8* %46
}

declare dso_local i32 @close_pack_windows(%struct.packed_git*) #1

declare dso_local i32 @hashflush(i32) #1

declare dso_local i8* @unpack_entry(i32, %struct.packed_git*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
