; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_unique_in_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_unique_in_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64, i64 }
%struct.disambiguate_state = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packed_git*, %struct.disambiguate_state*)* @unique_in_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unique_in_pack(%struct.packed_git* %0, %struct.disambiguate_state* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.disambiguate_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id, align 4
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  store %struct.disambiguate_state* %1, %struct.disambiguate_state** %4, align 8
  store i64 0, i64* %7, align 8
  store %struct.object_id* null, %struct.object_id** %8, align 8
  %10 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %11 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %17 = call i64 @open_pack_index(%struct.packed_git* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %15
  br label %70

25:                                               ; preds = %19
  %26 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %27 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %30 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %29, i32 0, i32 0
  %31 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %32 = call i32 @bsearch_pack(%struct.TYPE_2__* %30, %struct.packed_git* %31, i64* %7)
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %67, %25
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %40 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  br i1 %45, label %46, label %70

46:                                               ; preds = %44
  %47 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call %struct.object_id* @nth_packed_object_oid(%struct.object_id* %9, %struct.packed_git* %47, i64 %48)
  store %struct.object_id* %49, %struct.object_id** %8, align 8
  %50 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %51 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %54 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.object_id*, %struct.object_id** %8, align 8
  %58 = getelementptr inbounds %struct.object_id, %struct.object_id* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @match_sha(i32 %52, i32 %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %46
  br label %70

63:                                               ; preds = %46
  %64 = load %struct.disambiguate_state*, %struct.disambiguate_state** %4, align 8
  %65 = load %struct.object_id*, %struct.object_id** %8, align 8
  %66 = call i32 @update_candidates(%struct.disambiguate_state* %64, %struct.object_id* %65)
  br label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %34

70:                                               ; preds = %14, %24, %62, %44
  ret void
}

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @bsearch_pack(%struct.TYPE_2__*, %struct.packed_git*, i64*) #1

declare dso_local %struct.object_id* @nth_packed_object_oid(%struct.object_id*, %struct.packed_git*, i64) #1

declare dso_local i32 @match_sha(i32, i32, i32) #1

declare dso_local i32 @update_candidates(%struct.disambiguate_state*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
