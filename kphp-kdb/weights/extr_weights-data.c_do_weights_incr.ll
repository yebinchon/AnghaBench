; ModuleID = '/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_do_weights_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_do_weights_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_weights_incr = type { i32 }

@WEIGHTS_MAX_COORDS = common dso_local global i32 0, align 4
@LEV_WEIGHTS_INCR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_weights_incr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_weights_incr*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @WEIGHTS_MAX_COORDS, align 4
  %13 = icmp slt i32 %11, %12
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i1 [ false, %3 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* @LEV_WEIGHTS_INCR, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.lev_weights_incr* @alloc_log_event(i64 %21, i32 4, i32 %22)
  store %struct.lev_weights_incr* %23, %struct.lev_weights_incr** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.lev_weights_incr*, %struct.lev_weights_incr** %7, align 8
  %26 = getelementptr inbounds %struct.lev_weights_incr, %struct.lev_weights_incr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.lev_weights_incr*, %struct.lev_weights_incr** %7, align 8
  %28 = call i32 @weights_incr(%struct.lev_weights_incr* %27)
  ret i32 %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.lev_weights_incr* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @weights_incr(%struct.lev_weights_incr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
