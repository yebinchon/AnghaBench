; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_delete_group.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_delete_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_delete_group = type { i32 }
%struct.mult_iterator = type { i64, i32 (i32, i64)* }

@q_grp_id = common dso_local global i32 0, align 4
@INFTY = common dso_local global i64 0, align 8
@R = common dso_local global i64* null, align 8
@MAX_USERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_delete_group*)* @delete_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_group(%struct.lev_delete_group* %0) #0 {
  %2 = alloca %struct.lev_delete_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mult_iterator*, align 8
  store %struct.lev_delete_group* %0, %struct.lev_delete_group** %2, align 8
  %7 = load %struct.lev_delete_group*, %struct.lev_delete_group** %2, align 8
  %8 = getelementptr inbounds %struct.lev_delete_group, %struct.lev_delete_group* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = call i32 (...) @clear_tmp_word_data()
  %11 = load i32, i32* @q_grp_id, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @field_value_hash(i32 %11, i32 %12)
  %14 = call i64 @get_word_count_nomult(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %1
  %17 = call i32 @dyn_mark(i32 0)
  %18 = load i32, i32* @q_grp_id, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @field_value_hash(i32 %18, i32 %19)
  %21 = call i64 @build_word_iterator(i32 %20)
  %22 = inttoptr i64 %21 to %struct.mult_iterator*
  store %struct.mult_iterator* %22, %struct.mult_iterator** %6, align 8
  br label %23

23:                                               ; preds = %29, %16
  %24 = load %struct.mult_iterator*, %struct.mult_iterator** %6, align 8
  %25 = getelementptr inbounds %struct.mult_iterator, %struct.mult_iterator* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INFTY, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.mult_iterator*, %struct.mult_iterator** %6, align 8
  %31 = getelementptr inbounds %struct.mult_iterator, %struct.mult_iterator* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** @R, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  store i64 %32, i64* %37, align 8
  %38 = load %struct.mult_iterator*, %struct.mult_iterator** %6, align 8
  %39 = getelementptr inbounds %struct.mult_iterator, %struct.mult_iterator* %38, i32 0, i32 1
  %40 = load i32 (i32, i64)*, i32 (i32, i64)** %39, align 8
  %41 = load %struct.mult_iterator*, %struct.mult_iterator** %6, align 8
  %42 = ptrtoint %struct.mult_iterator* %41 to i32
  %43 = load %struct.mult_iterator*, %struct.mult_iterator** %6, align 8
  %44 = getelementptr inbounds %struct.mult_iterator, %struct.mult_iterator* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 %40(i32 %42, i64 %46)
  br label %23

48:                                               ; preds = %23
  %49 = call i32 @dyn_release(i32 0)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MAX_USERS, align 4
  %52 = icmp ule i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %67, %48
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i64*, i64** @R, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @delete_single_user_group_fast(i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %55

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %1
  ret i32 1
}

declare dso_local i32 @clear_tmp_word_data(...) #1

declare dso_local i64 @get_word_count_nomult(i32) #1

declare dso_local i32 @field_value_hash(i32, i32) #1

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local i64 @build_word_iterator(i32) #1

declare dso_local i32 @dyn_release(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @delete_single_user_group_fast(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
