; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_country_city.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_country_city.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_univcity = type { i32, i32 }

@LEV_TARG_UNIVCITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_country_city(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_univcity*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 256
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @get_user(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %14, %11, %3
  store i32 0, i32* %4, align 4
  br label %34

22:                                               ; preds = %17
  %23 = load i32, i32* @LEV_TARG_UNIVCITY, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.lev_univcity* @alloc_log_event(i32 %23, i32 16, i32 %24)
  store %struct.lev_univcity* %25, %struct.lev_univcity** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.lev_univcity*, %struct.lev_univcity** %8, align 8
  %28 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.lev_univcity*, %struct.lev_univcity** %8, align 8
  %31 = getelementptr inbounds %struct.lev_univcity, %struct.lev_univcity* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.lev_univcity*, %struct.lev_univcity** %8, align 8
  %33 = call i32 @set_country_city(%struct.lev_univcity* %32)
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %22, %21
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @get_user(i32) #1

declare dso_local %struct.lev_univcity* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_country_city(%struct.lev_univcity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
