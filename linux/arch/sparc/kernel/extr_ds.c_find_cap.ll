; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ds.c_find_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ds.c_find_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_cap_state = type { i32 }
%struct.ds_info = type { i32, %struct.ds_cap_state* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ds_cap_state* (%struct.ds_info*, i32)* @find_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ds_cap_state* @find_cap(%struct.ds_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ds_cap_state*, align 8
  %4 = alloca %struct.ds_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ds_info* %0, %struct.ds_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = ashr i32 %7, 32
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ds_info*, %struct.ds_info** %4, align 8
  %11 = getelementptr inbounds %struct.ds_info, %struct.ds_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp uge i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.ds_cap_state* null, %struct.ds_cap_state** %3, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.ds_info*, %struct.ds_info** %4, align 8
  %17 = getelementptr inbounds %struct.ds_info, %struct.ds_info* %16, i32 0, i32 1
  %18 = load %struct.ds_cap_state*, %struct.ds_cap_state** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ds_cap_state, %struct.ds_cap_state* %18, i64 %20
  store %struct.ds_cap_state* %21, %struct.ds_cap_state** %3, align 8
  br label %22

22:                                               ; preds = %15, %14
  %23 = load %struct.ds_cap_state*, %struct.ds_cap_state** %3, align 8
  ret %struct.ds_cap_state* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
