; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_set_user_object_rating.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_set_user_object_rating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_set_user_object_rating = type { i32, i32, i32, i32 }

@LEV_HINTS_SET_USER_OBJECT_RATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_user_object_rating(%struct.lev_hints_set_user_object_rating* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_hints_set_user_object_rating*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.lev_hints_set_user_object_rating* %0, %struct.lev_hints_set_user_object_rating** %3, align 8
  %6 = load %struct.lev_hints_set_user_object_rating*, %struct.lev_hints_set_user_object_rating** %3, align 8
  %7 = getelementptr inbounds %struct.lev_hints_set_user_object_rating, %struct.lev_hints_set_user_object_rating* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @conv_user_id(i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.lev_hints_set_user_object_rating*, %struct.lev_hints_set_user_object_rating** %3, align 8
  %14 = getelementptr inbounds %struct.lev_hints_set_user_object_rating, %struct.lev_hints_set_user_object_rating* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LEV_HINTS_SET_USER_OBJECT_RATING, align 4
  %17 = sub nsw i32 %15, %16
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.lev_hints_set_user_object_rating*, %struct.lev_hints_set_user_object_rating** %3, align 8
  %21 = getelementptr inbounds %struct.lev_hints_set_user_object_rating, %struct.lev_hints_set_user_object_rating* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = load %struct.lev_hints_set_user_object_rating*, %struct.lev_hints_set_user_object_rating** %3, align 8
  %25 = getelementptr inbounds %struct.lev_hints_set_user_object_rating, %struct.lev_hints_set_user_object_rating* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lev_hints_set_user_object_rating*, %struct.lev_hints_set_user_object_rating** %3, align 8
  %28 = getelementptr inbounds %struct.lev_hints_set_user_object_rating, %struct.lev_hints_set_user_object_rating* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @user_set_object_rating(i32* %19, i32 %23, i32 %26, i32 %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32* @conv_user_id(i32) #1

declare dso_local i32 @user_set_object_rating(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
