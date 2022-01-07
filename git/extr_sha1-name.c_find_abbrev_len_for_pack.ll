; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_find_abbrev_len_for_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_find_abbrev_len_for_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32, i64 }
%struct.min_abbrev_data = type { i64, i64, %struct.object_id* }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packed_git*, %struct.min_abbrev_data*)* @find_abbrev_len_for_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_abbrev_len_for_pack(%struct.packed_git* %0, %struct.min_abbrev_data* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.min_abbrev_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.object_id*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  store %struct.min_abbrev_data* %1, %struct.min_abbrev_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %11 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %83

15:                                               ; preds = %2
  %16 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %17 = call i64 @open_pack_index(%struct.packed_git* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %15
  br label %83

25:                                               ; preds = %19
  %26 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %27 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %30 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %29, i32 0, i32 2
  %31 = load %struct.object_id*, %struct.object_id** %30, align 8
  store %struct.object_id* %31, %struct.object_id** %9, align 8
  %32 = load %struct.object_id*, %struct.object_id** %9, align 8
  %33 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %34 = call i32 @bsearch_pack(%struct.object_id* %32, %struct.packed_git* %33, i32* %7)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %36 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %25
  %40 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @nth_packed_object_oid(%struct.object_id* %8, %struct.packed_git* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %46 = call i32 @extend_abbrev_len(%struct.object_id* %8, %struct.min_abbrev_data* %45)
  br label %47

47:                                               ; preds = %44, %39
  br label %64

48:                                               ; preds = %25
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i64 @nth_packed_object_oid(%struct.object_id* %8, %struct.packed_git* %54, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %61 = call i32 @extend_abbrev_len(%struct.object_id* %8, %struct.min_abbrev_data* %60)
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i64 @nth_packed_object_oid(%struct.object_id* %8, %struct.packed_git* %68, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %75 = call i32 @extend_abbrev_len(%struct.object_id* %8, %struct.min_abbrev_data* %74)
  br label %76

76:                                               ; preds = %73, %67
  br label %77

77:                                               ; preds = %76, %64
  %78 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %79 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %82 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %24, %14
  ret void
}

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @bsearch_pack(%struct.object_id*, %struct.packed_git*, i32*) #1

declare dso_local i64 @nth_packed_object_oid(%struct.object_id*, %struct.packed_git*, i32) #1

declare dso_local i32 @extend_abbrev_len(%struct.object_id*, %struct.min_abbrev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
