; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_rate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_rate = type { i64, i32, i32 }

@LEV_TARG_RATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_rate(%struct.lev_rate* %0) #0 {
  %2 = alloca %struct.lev_rate*, align 8
  %3 = alloca i32*, align 8
  store %struct.lev_rate* %0, %struct.lev_rate** %2, align 8
  %4 = load %struct.lev_rate*, %struct.lev_rate** %2, align 8
  %5 = getelementptr inbounds %struct.lev_rate, %struct.lev_rate* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LEV_TARG_RATE, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.lev_rate*, %struct.lev_rate** %2, align 8
  %12 = getelementptr inbounds %struct.lev_rate, %struct.lev_rate* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @get_user(i32 %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.lev_rate*, %struct.lev_rate** %2, align 8
  %20 = getelementptr inbounds %struct.lev_rate, %struct.lev_rate* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rate_change(i32* %18, i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @get_user(i32) #1

declare dso_local i32 @rate_change(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
