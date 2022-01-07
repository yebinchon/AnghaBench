; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_recent_ad_viewers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_recent_ad_viewers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclic_views_entry = type { i32, i32 }

@CYCLIC_VIEWS_BUFFER_SIZE = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i32 0, align 4
@R = common dso_local global i64 0, align 8
@CV_r = common dso_local global %struct.cyclic_views_entry* null, align 8
@CV_w = common dso_local global %struct.cyclic_views_entry* null, align 8
@CViews = common dso_local global %struct.cyclic_views_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_recent_ad_viewers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyclic_views_entry*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @CYCLIC_VIEWS_BUFFER_SIZE, align 4
  %7 = load i32, i32* @MAX_USERS, align 4
  %8 = sdiv i32 %7, 2
  %9 = icmp sle i32 %6, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i64, i64* @R, align 8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %4, align 8
  %14 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_r, align 8
  %15 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %16 = icmp ugt %struct.cyclic_views_entry* %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %1
  %18 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_r, align 8
  store %struct.cyclic_views_entry* %18, %struct.cyclic_views_entry** %3, align 8
  br label %19

19:                                               ; preds = %40, %17
  %20 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %21 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CViews, align 8
  %22 = load i32, i32* @CYCLIC_VIEWS_BUFFER_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %21, i64 %23
  %25 = icmp ult %struct.cyclic_views_entry* %20, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %28 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %34 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %4, align 8
  store i64 %36, i64* %37, align 8
  br label %39

39:                                               ; preds = %32, %26
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %42 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %41, i32 1
  store %struct.cyclic_views_entry* %42, %struct.cyclic_views_entry** %3, align 8
  br label %19

43:                                               ; preds = %19
  %44 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CViews, align 8
  store %struct.cyclic_views_entry* %44, %struct.cyclic_views_entry** %3, align 8
  br label %45

45:                                               ; preds = %63, %43
  %46 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %47 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %48 = icmp ult %struct.cyclic_views_entry* %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %51 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %2, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %57 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64*, i64** %4, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %4, align 8
  store i64 %59, i64* %60, align 8
  br label %62

62:                                               ; preds = %55, %49
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %65 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %64, i32 1
  store %struct.cyclic_views_entry* %65, %struct.cyclic_views_entry** %3, align 8
  br label %45

66:                                               ; preds = %45
  br label %91

67:                                               ; preds = %1
  %68 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_r, align 8
  store %struct.cyclic_views_entry* %68, %struct.cyclic_views_entry** %3, align 8
  br label %69

69:                                               ; preds = %87, %67
  %70 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %71 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %72 = icmp ult %struct.cyclic_views_entry* %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %75 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %81 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %4, align 8
  store i64 %83, i64* %84, align 8
  br label %86

86:                                               ; preds = %79, %73
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %3, align 8
  %89 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %88, i32 1
  store %struct.cyclic_views_entry* %89, %struct.cyclic_views_entry** %3, align 8
  br label %69

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %66
  %92 = load i64*, i64** %4, align 8
  %93 = load i64, i64* @R, align 8
  %94 = inttoptr i64 %93 to i64*
  %95 = ptrtoint i64* %92 to i64
  %96 = ptrtoint i64* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @postprocess_recent_list(i32 %100)
  ret i32 %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @postprocess_recent_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
