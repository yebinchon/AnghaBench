; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_unique_in_midx.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_unique_in_midx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multi_pack_index = type { i64 }
%struct.disambiguate_state = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.multi_pack_index*, %struct.disambiguate_state*)* @unique_in_midx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unique_in_midx(%struct.multi_pack_index* %0, %struct.disambiguate_state* %1) #0 {
  %3 = alloca %struct.multi_pack_index*, align 8
  %4 = alloca %struct.disambiguate_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id, align 4
  store %struct.multi_pack_index* %0, %struct.multi_pack_index** %3, align 8
  store %struct.disambiguate_state* %1, %struct.disambiguate_state** %4, align 8
  store i64 0, i64* %7, align 8
  store %struct.object_id* null, %struct.object_id** %8, align 8
  %10 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %11 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %18 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %17, i32 0, i32 0
  %19 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %20 = call i32 @bsearch_midx(%struct.TYPE_2__* %18, %struct.multi_pack_index* %19, i64* %7)
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %55, %16
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %28 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ false, %22 ], [ %31, %26 ]
  br i1 %33, label %34, label %58

34:                                               ; preds = %32
  %35 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call %struct.object_id* @nth_midxed_object_oid(%struct.object_id* %9, %struct.multi_pack_index* %35, i64 %36)
  store %struct.object_id* %37, %struct.object_id** %8, align 8
  %38 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %39 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %42 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.object_id*, %struct.object_id** %8, align 8
  %46 = getelementptr inbounds %struct.object_id, %struct.object_id* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @match_sha(i32 %40, i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %34
  br label %58

51:                                               ; preds = %34
  %52 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %53 = load %struct.object_id*, %struct.object_id** %8, align 8
  %54 = call i32 @update_candidates(%struct.disambiguate_state* %52, %struct.object_id* %53)
  br label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %22

58:                                               ; preds = %15, %50, %32
  ret void
}

declare dso_local i32 @bsearch_midx(%struct.TYPE_2__*, %struct.multi_pack_index*, i64*) #1

declare dso_local %struct.object_id* @nth_midxed_object_oid(%struct.object_id*, %struct.multi_pack_index*, i64) #1

declare dso_local i32 @match_sha(i32, i32, i32) #1

declare dso_local i32 @update_candidates(%struct.disambiguate_state*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
