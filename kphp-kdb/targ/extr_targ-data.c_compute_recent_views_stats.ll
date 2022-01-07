; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_recent_views_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_recent_views_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclic_views_entry = type { i32 }

@Q_limit = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i64 0, align 8
@CYCLIC_VIEWS_BUFFER_SIZE = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i32 0, align 4
@R = common dso_local global i64 0, align 8
@CV_r = common dso_local global %struct.cyclic_views_entry* null, align 8
@CV_w = common dso_local global %struct.cyclic_views_entry* null, align 8
@CViews = common dso_local global %struct.cyclic_views_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_recent_views_stats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cyclic_views_entry*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @Q_limit, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  store i64 0, i64* @R_cnt, align 8
  %8 = call i32 (...) @get_recent_views_num()
  store i32 %8, i32* %1, align 4
  br label %85

9:                                                ; preds = %0
  %10 = load i32, i32* @CYCLIC_VIEWS_BUFFER_SIZE, align 4
  %11 = load i32, i32* @MAX_USERS, align 4
  %12 = sdiv i32 %11, 2
  %13 = icmp sle i32 %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* @R, align 8
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %3, align 8
  %18 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_r, align 8
  %19 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %20 = icmp ugt %struct.cyclic_views_entry* %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %9
  %22 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_r, align 8
  store %struct.cyclic_views_entry* %22, %struct.cyclic_views_entry** %2, align 8
  br label %23

23:                                               ; preds = %37, %21
  %24 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %25 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CViews, align 8
  %26 = load i32, i32* @CYCLIC_VIEWS_BUFFER_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %25, i64 %27
  %29 = icmp ult %struct.cyclic_views_entry* %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %32 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %3, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %3, align 8
  store i64 %34, i64* %35, align 8
  br label %37

37:                                               ; preds = %30
  %38 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %39 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %38, i32 1
  store %struct.cyclic_views_entry* %39, %struct.cyclic_views_entry** %2, align 8
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CViews, align 8
  store %struct.cyclic_views_entry* %41, %struct.cyclic_views_entry** %2, align 8
  br label %42

42:                                               ; preds = %53, %40
  %43 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %44 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %45 = icmp ult %struct.cyclic_views_entry* %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %48 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %3, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %3, align 8
  store i64 %50, i64* %51, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %55 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %54, i32 1
  store %struct.cyclic_views_entry* %55, %struct.cyclic_views_entry** %2, align 8
  br label %42

56:                                               ; preds = %42
  br label %74

57:                                               ; preds = %9
  %58 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_r, align 8
  store %struct.cyclic_views_entry* %58, %struct.cyclic_views_entry** %2, align 8
  br label %59

59:                                               ; preds = %70, %57
  %60 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %61 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %62 = icmp ult %struct.cyclic_views_entry* %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %65 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64*, i64** %3, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %3, align 8
  store i64 %67, i64* %68, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %2, align 8
  %72 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %71, i32 1
  store %struct.cyclic_views_entry* %72, %struct.cyclic_views_entry** %2, align 8
  br label %59

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i64*, i64** %3, align 8
  %76 = load i64, i64* @R, align 8
  %77 = inttoptr i64 %76 to i64*
  %78 = ptrtoint i64* %75 to i64
  %79 = ptrtoint i64* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @postprocess_recent_list(i32 %83)
  store i32 %84, i32* %1, align 4
  br label %85

85:                                               ; preds = %74, %7
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i32 @get_recent_views_num(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @postprocess_recent_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
