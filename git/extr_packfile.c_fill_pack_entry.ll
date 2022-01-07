; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_fill_pack_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_fill_pack_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.pack_entry = type { %struct.packed_git*, i64 }
%struct.packed_git = type { i32, i64 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.pack_entry*, %struct.packed_git*)* @fill_pack_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_pack_entry(%struct.object_id* %0, %struct.pack_entry* %1, %struct.packed_git* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.pack_entry*, align 8
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.pack_entry* %1, %struct.pack_entry** %6, align 8
  store %struct.packed_git* %2, %struct.packed_git** %7, align 8
  %10 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %11 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %18 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load %struct.object_id*, %struct.object_id** %5, align 8
  %23 = getelementptr inbounds %struct.object_id, %struct.object_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %26 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %27, %33
  %35 = call i64 @hasheq(i32 %24, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %64

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %15

42:                                               ; preds = %15
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.object_id*, %struct.object_id** %5, align 8
  %45 = getelementptr inbounds %struct.object_id, %struct.object_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %48 = call i64 @find_pack_entry_one(i32 %46, %struct.packed_git* %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %64

52:                                               ; preds = %43
  %53 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %54 = call i32 @is_pack_valid(%struct.packed_git* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %64

57:                                               ; preds = %52
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.pack_entry*, %struct.pack_entry** %6, align 8
  %60 = getelementptr inbounds %struct.pack_entry, %struct.pack_entry* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %62 = load %struct.pack_entry*, %struct.pack_entry** %6, align 8
  %63 = getelementptr inbounds %struct.pack_entry, %struct.pack_entry* %62, i32 0, i32 0
  store %struct.packed_git* %61, %struct.packed_git** %63, align 8
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %56, %51, %37
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @hasheq(i32, i64) #1

declare dso_local i64 @find_pack_entry_one(i32, %struct.packed_git*) #1

declare dso_local i32 @is_pack_valid(%struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
