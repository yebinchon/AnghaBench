; ModuleID = '/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_band.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gkc_summary = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gkc_summary*, i32)* @band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @band(%struct.gkc_summary* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gkc_summary*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gkc_summary* %0, %struct.gkc_summary** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %8 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.gkc_summary*, %struct.gkc_summary** %4, align 8
  %11 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 1, %14
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ullog2(i32 %22)
  %24 = call i32 @ullog2(i32 2)
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ullog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
