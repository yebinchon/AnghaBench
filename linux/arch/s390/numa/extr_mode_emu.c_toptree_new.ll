; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/numa/extr_mode_emu.c_toptree_new.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/numa/extr_mode_emu.c_toptree_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toptree = type { i32 }

@TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"NUMA emulation could not allocate topology\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.toptree* (i32, i32)* @toptree_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.toptree* @toptree_new(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.toptree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.toptree*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @TOPOLOGY, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.toptree* @toptree_alloc(i32 %8, i32 %9)
  store %struct.toptree* %10, %struct.toptree** %6, align 8
  %11 = load %struct.toptree*, %struct.toptree** %6, align 8
  %12 = icmp ne %struct.toptree* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %31

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.toptree*, %struct.toptree** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @toptree_get_child(%struct.toptree* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %31

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %15

29:                                               ; preds = %15
  %30 = load %struct.toptree*, %struct.toptree** %6, align 8
  store %struct.toptree* %30, %struct.toptree** %3, align 8
  br label %33

31:                                               ; preds = %24, %13
  %32 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.toptree*, %struct.toptree** %3, align 8
  ret %struct.toptree* %34
}

declare dso_local %struct.toptree* @toptree_alloc(i32, i32) #1

declare dso_local i32 @toptree_get_child(%struct.toptree*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
