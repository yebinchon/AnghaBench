; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_get_core_island.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_get_core_island.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_island = type { i32 }

@core_island_name = common dso_local global i64 0, align 8
@remote_islands = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.remote_island* ()* @get_core_island to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.remote_island* @get_core_island() #0 {
  %1 = alloca %struct.remote_island*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @core_island_name, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = load i32, i32* @remote_islands, align 4
  %7 = load i64, i64* @core_island_name, align 8
  %8 = call i64 @kh_get_str(i32 %6, i64 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i32, i32* @remote_islands, align 4
  %11 = call i64 @kh_end(i32 %10)
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load i32, i32* @remote_islands, align 4
  %15 = load i64, i64* %2, align 8
  %16 = call %struct.remote_island* @kh_value(i32 %14, i64 %15)
  store %struct.remote_island* %16, %struct.remote_island** %1, align 8
  br label %19

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17, %0
  store %struct.remote_island* null, %struct.remote_island** %1, align 8
  br label %19

19:                                               ; preds = %18, %13
  %20 = load %struct.remote_island*, %struct.remote_island** %1, align 8
  ret %struct.remote_island* %20
}

declare dso_local i64 @kh_get_str(i32, i64) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.remote_island* @kh_value(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
