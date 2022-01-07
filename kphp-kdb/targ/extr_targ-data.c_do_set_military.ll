; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_military.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_military.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_military = type { i32, i32, i32 }

@LEV_TARG_MIL_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_military(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.lev_military*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32* @get_user(i32 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

17:                                               ; preds = %4
  %18 = load i32, i32* @LEV_TARG_MIL_ADD, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.lev_military* @alloc_log_event(i32 %18, i32 12, i32 %19)
  store %struct.lev_military* %20, %struct.lev_military** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.lev_military*, %struct.lev_military** %11, align 8
  %23 = getelementptr inbounds %struct.lev_military, %struct.lev_military* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.lev_military*, %struct.lev_military** %11, align 8
  %26 = getelementptr inbounds %struct.lev_military, %struct.lev_military* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.lev_military*, %struct.lev_military** %11, align 8
  %29 = getelementptr inbounds %struct.lev_military, %struct.lev_military* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load %struct.lev_military*, %struct.lev_military** %11, align 8
  %32 = call i32 @store_military(i32* %30, %struct.lev_military* %31)
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %17, %16
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32* @get_user(i32) #1

declare dso_local %struct.lev_military* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @store_military(i32*, %struct.lev_military*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
