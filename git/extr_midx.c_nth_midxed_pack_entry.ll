; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_nth_midxed_pack_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_nth_midxed_pack_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.repository = type { i32 }
%struct.multi_pack_index = type { i64, %struct.packed_git** }
%struct.packed_git = type { i64, i64 }
%struct.pack_entry = type { %struct.packed_git*, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"error preparing packfile from multi-pack-index\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.multi_pack_index*, %struct.pack_entry*, i64)* @nth_midxed_pack_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nth_midxed_pack_entry(%struct.repository* %0, %struct.multi_pack_index* %1, %struct.pack_entry* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.multi_pack_index*, align 8
  %8 = alloca %struct.pack_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.packed_git*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.multi_pack_index* %1, %struct.multi_pack_index** %7, align 8
  store %struct.pack_entry* %2, %struct.pack_entry** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %16 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %87

20:                                               ; preds = %4
  %21 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @nth_midxed_pack_int_id(%struct.multi_pack_index* %21, i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.repository*, %struct.repository** %6, align 8
  %25 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @prepare_midx_pack(%struct.repository* %24, %struct.multi_pack_index* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @die(i32 %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %34 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %33, i32 0, i32 1
  %35 = load %struct.packed_git**, %struct.packed_git*** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %35, i64 %36
  %38 = load %struct.packed_git*, %struct.packed_git** %37, align 8
  store %struct.packed_git* %38, %struct.packed_git** %11, align 8
  %39 = load %struct.packed_git*, %struct.packed_git** %11, align 8
  %40 = call i32 @is_pack_valid(%struct.packed_git* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %87

43:                                               ; preds = %32
  %44 = load %struct.packed_git*, %struct.packed_git** %11, align 8
  %45 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @nth_midxed_object_oid(%struct.object_id* %13, %struct.multi_pack_index* %49, i64 %50)
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %74, %48
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.packed_git*, %struct.packed_git** %11, align 8
  %55 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.object_id, %struct.object_id* %13, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.packed_git*, %struct.packed_git** %11, align 8
  %62 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = mul nsw i64 %66, %67
  %69 = add nsw i64 %63, %68
  %70 = call i64 @hasheq(i32 %60, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %87

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %12, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %52

77:                                               ; preds = %52
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @nth_midxed_offset(%struct.multi_pack_index* %79, i64 %80)
  %82 = load %struct.pack_entry*, %struct.pack_entry** %8, align 8
  %83 = getelementptr inbounds %struct.pack_entry, %struct.pack_entry* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.packed_git*, %struct.packed_git** %11, align 8
  %85 = load %struct.pack_entry*, %struct.pack_entry** %8, align 8
  %86 = getelementptr inbounds %struct.pack_entry, %struct.pack_entry* %85, i32 0, i32 0
  store %struct.packed_git* %84, %struct.packed_git** %86, align 8
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %78, %72, %42, %19
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @nth_midxed_pack_int_id(%struct.multi_pack_index*, i64) #1

declare dso_local i64 @prepare_midx_pack(%struct.repository*, %struct.multi_pack_index*, i64) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @is_pack_valid(%struct.packed_git*) #1

declare dso_local i32 @nth_midxed_object_oid(%struct.object_id*, %struct.multi_pack_index*, i64) #1

declare dso_local i64 @hasheq(i32, i64) #1

declare dso_local i32 @nth_midxed_offset(%struct.multi_pack_index*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
