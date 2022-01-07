; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_find_abbrev_len_for_midx.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_find_abbrev_len_for_midx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multi_pack_index = type { i32 }
%struct.min_abbrev_data = type { i64, i64, %struct.object_id* }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.multi_pack_index*, %struct.min_abbrev_data*)* @find_abbrev_len_for_midx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_abbrev_len_for_midx(%struct.multi_pack_index* %0, %struct.min_abbrev_data* %1) #0 {
  %3 = alloca %struct.multi_pack_index*, align 8
  %4 = alloca %struct.min_abbrev_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id, align 4
  %9 = alloca %struct.object_id*, align 8
  store %struct.multi_pack_index* %0, %struct.multi_pack_index** %3, align 8
  store %struct.min_abbrev_data* %1, %struct.min_abbrev_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %11 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %73

15:                                               ; preds = %2
  %16 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %17 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %20 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %19, i32 0, i32 2
  %21 = load %struct.object_id*, %struct.object_id** %20, align 8
  store %struct.object_id* %21, %struct.object_id** %9, align 8
  %22 = load %struct.object_id*, %struct.object_id** %9, align 8
  %23 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %24 = call i32 @bsearch_midx(%struct.object_id* %22, %struct.multi_pack_index* %23, i32* %7)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %26 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %15
  %30 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @nth_midxed_object_oid(%struct.object_id* %8, %struct.multi_pack_index* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %36 = call i32 @extend_abbrev_len(%struct.object_id* %8, %struct.min_abbrev_data* %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %54

38:                                               ; preds = %15
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i64 @nth_midxed_object_oid(%struct.object_id* %8, %struct.multi_pack_index* %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %51 = call i32 @extend_abbrev_len(%struct.object_id* %8, %struct.min_abbrev_data* %50)
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i64 @nth_midxed_object_oid(%struct.object_id* %8, %struct.multi_pack_index* %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %65 = call i32 @extend_abbrev_len(%struct.object_id* %8, %struct.min_abbrev_data* %64)
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %69 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %4, align 8
  %72 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %14
  ret void
}

declare dso_local i32 @bsearch_midx(%struct.object_id*, %struct.multi_pack_index*, i32*) #1

declare dso_local i64 @nth_midxed_object_oid(%struct.object_id*, %struct.multi_pack_index*, i32) #1

declare dso_local i32 @extend_abbrev_len(%struct.object_id*, %struct.min_abbrev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
