; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_topology.c_show_number_of_sets.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_topology.c_show_number_of_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_info*, i8*)* @show_number_of_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_number_of_sets(%struct.cache_info* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_info* %0, %struct.cache_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.cache_info*, %struct.cache_info** %3, align 8
  %7 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.cache_info*, %struct.cache_info** %3, align 8
  %11 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = udiv i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cache_info*, %struct.cache_info** %3, align 8
  %17 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %5, align 4
  %22 = udiv i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  ret i32 %25
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
