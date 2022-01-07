; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_do_set_user_object_rating.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_do_set_user_object_rating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_set_user_object_rating = type { i32, i64, float }

@LEV_HINTS_SET_USER_OBJECT_RATING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_user_object_rating(i32 %0, i32 %1, i64 %2, float %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lev_hints_set_user_object_rating*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @check_type(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %5
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @check_rating_num(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @check_object_id(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load float, float* %10, align 4
  %26 = call i32 @check_rating(float %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %20, %16, %5
  store i32 0, i32* %6, align 4
  br label %50

29:                                               ; preds = %24
  %30 = load i64, i64* @LEV_HINTS_SET_USER_OBJECT_RATING, align 8
  %31 = load i32, i32* %11, align 4
  %32 = shl i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call %struct.lev_hints_set_user_object_rating* @alloc_log_event(i64 %37, i32 24, i32 0)
  store %struct.lev_hints_set_user_object_rating* %38, %struct.lev_hints_set_user_object_rating** %12, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.lev_hints_set_user_object_rating*, %struct.lev_hints_set_user_object_rating** %12, align 8
  %41 = getelementptr inbounds %struct.lev_hints_set_user_object_rating, %struct.lev_hints_set_user_object_rating* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.lev_hints_set_user_object_rating*, %struct.lev_hints_set_user_object_rating** %12, align 8
  %44 = getelementptr inbounds %struct.lev_hints_set_user_object_rating, %struct.lev_hints_set_user_object_rating* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load float, float* %10, align 4
  %46 = load %struct.lev_hints_set_user_object_rating*, %struct.lev_hints_set_user_object_rating** %12, align 8
  %47 = getelementptr inbounds %struct.lev_hints_set_user_object_rating, %struct.lev_hints_set_user_object_rating* %46, i32 0, i32 2
  store float %45, float* %47, align 8
  %48 = load %struct.lev_hints_set_user_object_rating*, %struct.lev_hints_set_user_object_rating** %12, align 8
  %49 = call i32 @set_user_object_rating(%struct.lev_hints_set_user_object_rating* %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %29, %28
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @check_type(i32) #1

declare dso_local i32 @check_rating_num(i32) #1

declare dso_local i32 @check_object_id(i64) #1

declare dso_local i32 @check_rating(float) #1

declare dso_local %struct.lev_hints_set_user_object_rating* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @set_user_object_rating(%struct.lev_hints_set_user_object_rating*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
