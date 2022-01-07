; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_set_attr.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { %struct.switch_attr* }

@SWITCH_CMD_SET_GLOBAL = common dso_local global i32 0, align 4
@SWITCH_CMD_SET_PORT = common dso_local global i32 0, align 4
@SWITCH_CMD_SET_VLAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@send_attr_val = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swlib_set_attr(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %9 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %10 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @SWITCH_CMD_SET_GLOBAL, align 4
  store i32 %13, i32* %8, align 4
  br label %21

14:                                               ; preds = %3
  %15 = load i32, i32* @SWITCH_CMD_SET_PORT, align 4
  store i32 %15, i32* %8, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @SWITCH_CMD_SET_VLAN, align 4
  store i32 %17, i32* %8, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %29

21:                                               ; preds = %16, %14, %12
  %22 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %23 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %24 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %23, i32 0, i32 0
  store %struct.switch_attr* %22, %struct.switch_attr** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @send_attr_val, align 4
  %27 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %28 = call i32 @swlib_call(i32 %25, i32* null, i32 %26, %struct.switch_val* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @swlib_call(i32, i32*, i32, %struct.switch_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
