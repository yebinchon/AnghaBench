; ModuleID = '/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_do_weights_set_half_life.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_do_weights_set_half_life.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_weights_set_half_life = type { i32 }

@WEIGHTS_MAX_COORDS = common dso_local global i32 0, align 4
@LEV_WEIGHTS_SET_HALF_LIFE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_weights_set_half_life(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_weights_set_half_life*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @WEIGHTS_MAX_COORDS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %10, %2
  store i32 -1, i32* %3, align 4
  br label %33

18:                                               ; preds = %14
  %19 = load i64, i64* @LEV_WEIGHTS_SET_HALF_LIFE, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.lev_weights_set_half_life* @alloc_log_event(i64 %22, i32 4, i32 %23)
  store %struct.lev_weights_set_half_life* %24, %struct.lev_weights_set_half_life** %6, align 8
  %25 = load %struct.lev_weights_set_half_life*, %struct.lev_weights_set_half_life** %6, align 8
  %26 = call i32 @weights_set_half_life(%struct.lev_weights_set_half_life* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = call i32 @unalloc_log_event(i32 4)
  br label %31

31:                                               ; preds = %29, %18
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.lev_weights_set_half_life* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @weights_set_half_life(%struct.lev_weights_set_half_life*) #1

declare dso_local i32 @unalloc_log_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
