; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_user_single_group_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_user_single_group_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.lev_generic = type { i32 }

@LEV_TARG_GRTYPE_ADD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_user_single_group_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.lev_generic*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_3__* @get_user(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 127
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %40

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = lshr i32 %20, 5
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 31
  %27 = shl i32 1, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %40

31:                                               ; preds = %16
  %32 = load i64, i64* @LEV_TARG_GRTYPE_ADD, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.lev_generic* @alloc_log_event(i64 %35, i32 8, i32 %36)
  store %struct.lev_generic* %37, %struct.lev_generic** %7, align 8
  %38 = load %struct.lev_generic*, %struct.lev_generic** %7, align 8
  %39 = call i32 @set_user_single_group_type(%struct.lev_generic* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %30, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_3__* @get_user(i32) #1

declare dso_local %struct.lev_generic* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @set_user_single_group_type(%struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
