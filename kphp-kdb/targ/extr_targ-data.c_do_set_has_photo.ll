; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_has_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_has_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32 }

@LEV_TARG_USER_HASPHOTO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_has_photo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_generic*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, -16777216
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @get_user(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %25

15:                                               ; preds = %10
  %16 = load i64, i64* @LEV_TARG_USER_HASPHOTO, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 255
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.lev_generic* @alloc_log_event(i64 %20, i32 8, i32 %21)
  store %struct.lev_generic* %22, %struct.lev_generic** %6, align 8
  %23 = load %struct.lev_generic*, %struct.lev_generic** %6, align 8
  %24 = call i32 @set_has_photo(%struct.lev_generic* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @get_user(i32) #1

declare dso_local %struct.lev_generic* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @set_has_photo(%struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
