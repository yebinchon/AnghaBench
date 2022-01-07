; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_default_act_dup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_default_act_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_default_act_dup(%struct.tl_act_extra* %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca %struct.tl_act_extra*, align 8
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %2, align 8
  %4 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %5 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.tl_act_extra* @malloc(i32 %6)
  store %struct.tl_act_extra* %7, %struct.tl_act_extra** %3, align 8
  %8 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %9 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %10 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %11 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(%struct.tl_act_extra* %8, %struct.tl_act_extra* %9, i32 %12)
  %14 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %15 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, -2
  %18 = or i32 %17, 2
  %19 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %20 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  ret %struct.tl_act_extra* %21
}

declare dso_local %struct.tl_act_extra* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.tl_act_extra*, %struct.tl_act_extra*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
