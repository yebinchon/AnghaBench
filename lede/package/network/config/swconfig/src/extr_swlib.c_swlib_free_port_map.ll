; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_free_port_map.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_free_port_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*)* @swlib_free_port_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swlib_free_port_map(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %4 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %5 = icmp ne %struct.switch_dev* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %8 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %37

12:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %29, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %16 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %21 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @free(%struct.TYPE_2__* %27)
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %34 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call i32 @free(%struct.TYPE_2__* %35)
  br label %37

37:                                               ; preds = %32, %11
  ret void
}

declare dso_local i32 @free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
