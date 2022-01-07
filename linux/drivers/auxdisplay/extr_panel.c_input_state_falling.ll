; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_input_state_falling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_input_state_falling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logical_input = type { i32, i32, i64, i32, i64, i64, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { void (i32)*, i32 }

@phys_curr = common dso_local global i32 0, align 4
@INPUT_TYPE_KBD = common dso_local global i64 0, align 8
@keypressed = common dso_local global i32 0, align 4
@KEYPAD_REP_START = common dso_local global i32 0, align 4
@KEYPAD_REP_DELAY = common dso_local global i64 0, align 8
@inputs_stable = common dso_local global i64 0, align 8
@INPUT_ST_HIGH = common dso_local global i8* null, align 8
@INPUT_TYPE_STD = common dso_local global i64 0, align 8
@INPUT_ST_LOW = common dso_local global i8* null, align 8
@phys_prev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.logical_input*)* @input_state_falling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_state_falling(%struct.logical_input* %0) #0 {
  %2 = alloca %struct.logical_input*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.logical_input* %0, %struct.logical_input** %2, align 8
  %8 = load i32, i32* @phys_curr, align 4
  %9 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %10 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %8, %11
  %13 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %14 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %1
  %18 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %19 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INPUT_TYPE_KBD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %17
  store i32 1, i32* @keypressed, align 4
  %24 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %25 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %23
  %33 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %34 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %3, align 8
  %38 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %39 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @KEYPAD_REP_START, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  store i32 8, i32* %4, align 4
  %44 = load i64, i64* @KEYPAD_REP_DELAY, align 8
  %45 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %46 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @keypad_send_key(i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %43, %32
  store i64 0, i64* @inputs_stable, align 8
  br label %55

55:                                               ; preds = %54, %23
  %56 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %57 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 255
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %62 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %17
  %67 = load i8*, i8** @INPUT_ST_HIGH, align 8
  %68 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %69 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  br label %132

70:                                               ; preds = %1
  %71 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %72 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %75 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %126

78:                                               ; preds = %70
  %79 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %80 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @INPUT_TYPE_STD, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %86 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load void (i32)*, void (i32)** %88, align 8
  store void (i32)* %89, void (i32)** %5, align 8
  %90 = load void (i32)*, void (i32)** %5, align 8
  %91 = icmp ne void (i32)* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load void (i32)*, void (i32)** %5, align 8
  %94 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %95 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  call void %93(i32 %98)
  br label %99

99:                                               ; preds = %92, %84
  br label %122

100:                                              ; preds = %78
  %101 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %102 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @INPUT_TYPE_KBD, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %108 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %6, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %106
  store i32 8, i32* %7, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @keypad_send_key(i8* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %106
  br label %121

121:                                              ; preds = %120, %100
  br label %122

122:                                              ; preds = %121, %99
  %123 = load i8*, i8** @INPUT_ST_LOW, align 8
  %124 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %125 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %124, i32 0, i32 6
  store i8* %123, i8** %125, align 8
  br label %131

126:                                              ; preds = %70
  %127 = load %struct.logical_input*, %struct.logical_input** %2, align 8
  %128 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  store i64 0, i64* @inputs_stable, align 8
  br label %131

131:                                              ; preds = %126, %122
  br label %132

132:                                              ; preds = %131, %66
  ret void
}

declare dso_local i32 @keypad_send_key(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
