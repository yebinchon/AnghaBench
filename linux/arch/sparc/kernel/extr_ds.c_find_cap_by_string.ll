; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ds.c_find_cap_by_string.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ds.c_find_cap_by_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_cap_state = type { i32 }
%struct.ds_info = type { i32, %struct.ds_cap_state* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ds_cap_state* (%struct.ds_info*, i8*)* @find_cap_by_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ds_cap_state* @find_cap_by_string(%struct.ds_info* %0, i8* %1) #0 {
  %3 = alloca %struct.ds_cap_state*, align 8
  %4 = alloca %struct.ds_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ds_info* %0, %struct.ds_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ds_info*, %struct.ds_info** %4, align 8
  %10 = getelementptr inbounds %struct.ds_info, %struct.ds_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load %struct.ds_info*, %struct.ds_info** %4, align 8
  %15 = getelementptr inbounds %struct.ds_info, %struct.ds_info* %14, i32 0, i32 1
  %16 = load %struct.ds_cap_state*, %struct.ds_cap_state** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ds_cap_state, %struct.ds_cap_state* %16, i64 %18
  %20 = getelementptr inbounds %struct.ds_cap_state, %struct.ds_cap_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %33

26:                                               ; preds = %13
  %27 = load %struct.ds_info*, %struct.ds_info** %4, align 8
  %28 = getelementptr inbounds %struct.ds_info, %struct.ds_info* %27, i32 0, i32 1
  %29 = load %struct.ds_cap_state*, %struct.ds_cap_state** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ds_cap_state, %struct.ds_cap_state* %29, i64 %31
  store %struct.ds_cap_state* %32, %struct.ds_cap_state** %3, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %7

36:                                               ; preds = %7
  store %struct.ds_cap_state* null, %struct.ds_cap_state** %3, align 8
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.ds_cap_state*, %struct.ds_cap_state** %3, align 8
  ret %struct.ds_cap_state* %38
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
