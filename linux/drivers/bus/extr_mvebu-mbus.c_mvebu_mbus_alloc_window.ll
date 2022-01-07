; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_mbus_alloc_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_mbus_alloc_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mbus_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MVEBU_MBUS_NO_REMAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mbus_state*, i32, i64, i32, i32, i32)* @mvebu_mbus_alloc_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_mbus_alloc_window(%struct.mvebu_mbus_state* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvebu_mbus_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mvebu_mbus_state* %0, %struct.mvebu_mbus_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @MVEBU_MBUS_NO_REMAP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i32, i32* %14, align 4
  %21 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %8, align 8
  %22 = getelementptr inbounds %struct.mvebu_mbus_state, %struct.mvebu_mbus_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %19
  %28 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %8, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i64 @mvebu_mbus_window_is_remappable(%struct.mvebu_mbus_state* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %48

33:                                               ; preds = %27
  %34 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i64 @mvebu_mbus_window_is_free(%struct.mvebu_mbus_state* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @mvebu_mbus_setup_window(%struct.mvebu_mbus_state* %39, i32 %40, i32 %41, i64 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %92

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %19

51:                                               ; preds = %19
  br label %52

52:                                               ; preds = %51, %6
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %86, %52
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %8, align 8
  %56 = getelementptr inbounds %struct.mvebu_mbus_state, %struct.mvebu_mbus_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @MVEBU_MBUS_NO_REMAP, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i64 @mvebu_mbus_window_is_remappable(%struct.mvebu_mbus_state* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %86

71:                                               ; preds = %65, %61
  %72 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %8, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i64 @mvebu_mbus_window_is_free(%struct.mvebu_mbus_state* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %8, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @mvebu_mbus_setup_window(%struct.mvebu_mbus_state* %77, i32 %78, i32 %79, i64 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  br label %92

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %53

89:                                               ; preds = %53
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %76, %38
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i64 @mvebu_mbus_window_is_remappable(%struct.mvebu_mbus_state*, i32) #1

declare dso_local i64 @mvebu_mbus_window_is_free(%struct.mvebu_mbus_state*, i32) #1

declare dso_local i32 @mvebu_mbus_setup_window(%struct.mvebu_mbus_state*, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
