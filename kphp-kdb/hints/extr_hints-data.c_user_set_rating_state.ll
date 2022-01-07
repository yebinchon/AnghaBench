; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_user_set_rating_state.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_user_set_rating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_set_user_rating_state = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_set_rating_state(%struct.lev_hints_set_user_rating_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_hints_set_user_rating_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.lev_hints_set_user_rating_state* %0, %struct.lev_hints_set_user_rating_state** %3, align 8
  %6 = load %struct.lev_hints_set_user_rating_state*, %struct.lev_hints_set_user_rating_state** %3, align 8
  %7 = getelementptr inbounds %struct.lev_hints_set_user_rating_state, %struct.lev_hints_set_user_rating_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 255
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %32

16:                                               ; preds = %12
  %17 = load %struct.lev_hints_set_user_rating_state*, %struct.lev_hints_set_user_rating_state** %3, align 8
  %18 = getelementptr inbounds %struct.lev_hints_set_user_rating_state, %struct.lev_hints_set_user_rating_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_3__* @conv_user_id(i32 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @chg_list_add_string(i32* %25, i32* %27, i32 %29, i32 0, i32* null)
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %23, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_3__* @conv_user_id(i32) #1

declare dso_local i32 @chg_list_add_string(i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
