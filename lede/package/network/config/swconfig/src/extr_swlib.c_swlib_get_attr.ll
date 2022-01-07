; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_get_attr.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.switch_attr*, i64, i32 }

@SWITCH_CMD_GET_GLOBAL = common dso_local global i32 0, align 4
@SWITCH_CMD_GET_PORT = common dso_local global i32 0, align 4
@SWITCH_CMD_GET_VLAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@store_val = common dso_local global i32 0, align 4
@send_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swlib_get_attr(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %10 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %11 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @SWITCH_CMD_GET_GLOBAL, align 4
  store i32 %14, i32* %8, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @SWITCH_CMD_GET_PORT, align 4
  store i32 %16, i32* %8, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @SWITCH_CMD_GET_VLAN, align 4
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %17, %15, %13
  %23 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %24 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %23, i32 0, i32 3
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  %26 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %27 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %29 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %30 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %29, i32 0, i32 1
  store %struct.switch_attr* %28, %struct.switch_attr** %30, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %34 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @store_val, align 4
  %37 = load i32, i32* @send_attr, align 4
  %38 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %39 = call i32 @swlib_call(i32 %35, i32 %36, i32 %37, %struct.switch_val* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %22
  %43 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %44 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %22
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @swlib_call(i32, i32, i32, %struct.switch_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
