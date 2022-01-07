; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_act_extra_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_act_extra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32, i32 (%struct.tl_act_extra*)*, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tl_act_extra* (i8*, i32, i32 (%struct.tl_act_extra*)*)* @tl_act_extra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tl_act_extra* @tl_act_extra_init(i8* %0, i32 %1, i32 (%struct.tl_act_extra*)* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.tl_act_extra*)*, align 8
  %7 = alloca %struct.tl_act_extra*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.tl_act_extra*)* %2, i32 (%struct.tl_act_extra*)** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.tl_act_extra*
  store %struct.tl_act_extra* %9, %struct.tl_act_extra** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 40
  %13 = trunc i64 %12 to i32
  %14 = load %struct.tl_act_extra*, %struct.tl_act_extra** %7, align 8
  %15 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.tl_act_extra*, %struct.tl_act_extra** %7, align 8
  %17 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load i32 (%struct.tl_act_extra*)*, i32 (%struct.tl_act_extra*)** %6, align 8
  %19 = load %struct.tl_act_extra*, %struct.tl_act_extra** %7, align 8
  %20 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %19, i32 0, i32 1
  store i32 (%struct.tl_act_extra*)* %18, i32 (%struct.tl_act_extra*)** %20, align 8
  %21 = load %struct.tl_act_extra*, %struct.tl_act_extra** %7, align 8
  %22 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.tl_act_extra*, %struct.tl_act_extra** %7, align 8
  %24 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.tl_act_extra*, %struct.tl_act_extra** %7, align 8
  ret %struct.tl_act_extra* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
