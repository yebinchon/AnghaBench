; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_rate_cute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_rate_cute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_ratecute = type { i32, i32 }

@LEV_TARG_RATECUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_rate_cute(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_ratecute*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @get_user(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

13:                                               ; preds = %3
  %14 = load i32, i32* @LEV_TARG_RATECUTE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.lev_ratecute* @alloc_log_event(i32 %14, i32 16, i32 %15)
  store %struct.lev_ratecute* %16, %struct.lev_ratecute** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.lev_ratecute*, %struct.lev_ratecute** %8, align 8
  %19 = getelementptr inbounds %struct.lev_ratecute, %struct.lev_ratecute* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.lev_ratecute*, %struct.lev_ratecute** %8, align 8
  %22 = getelementptr inbounds %struct.lev_ratecute, %struct.lev_ratecute* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.lev_ratecute*, %struct.lev_ratecute** %8, align 8
  %24 = call i32 @set_rate_cute(%struct.lev_ratecute* %23)
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %13, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @get_user(i32) #1

declare dso_local %struct.lev_ratecute* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_rate_cute(%struct.lev_ratecute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
