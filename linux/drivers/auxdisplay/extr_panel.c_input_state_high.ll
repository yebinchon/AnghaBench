; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_input_state_high.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_input_state_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logical_input = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 (i32)* }

@phys_curr = common dso_local global i32 0, align 4
@INPUT_TYPE_STD = common dso_local global i64 0, align 8
@INPUT_TYPE_KBD = common dso_local global i64 0, align 8
@keypressed = common dso_local global i32 0, align 4
@KEYPAD_REP_START = common dso_local global i32 0, align 4
@KEYPAD_REP_DELAY = common dso_local global i64 0, align 8
@inputs_stable = common dso_local global i64 0, align 8
@INPUT_ST_FALLING = common dso_local global i32 0, align 4
@INPUT_ST_LOW = common dso_local global i32 0, align 4
@phys_prev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.logical_input*)* @input_state_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_state_high(%struct.logical_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.logical_input*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.logical_input* %0, %struct.logical_input** %3, align 8
  %8 = load i32, i32* @phys_curr, align 4
  %9 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %10 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %8, %11
  %13 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %14 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %123

17:                                               ; preds = %1
  %18 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %19 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INPUT_TYPE_STD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %25 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %30 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %34 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = icmp ne i32 (i32)* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %28
  %40 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %41 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %46 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %44(i32 %49)
  br label %51

51:                                               ; preds = %39, %28
  br label %122

52:                                               ; preds = %23, %17
  %53 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %54 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @INPUT_TYPE_KBD, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %121

58:                                               ; preds = %52
  store i32 1, i32* @keypressed, align 4
  %59 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %60 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %65 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %4, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  store i32 8, i32* %5, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @keypad_send_key(i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %63
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %80 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %78
  %88 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %89 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %6, align 8
  %93 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %94 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @KEYPAD_REP_START, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %87
  store i32 8, i32* %7, align 4
  %99 = load i64, i64* @KEYPAD_REP_DELAY, align 8
  %100 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %101 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @keypad_send_key(i8* %106, i32 %107)
  br label %109

109:                                              ; preds = %98, %87
  store i64 0, i64* @inputs_stable, align 8
  br label %110

110:                                              ; preds = %109, %78
  %111 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %112 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 255
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %117 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %115, %110
  br label %121

121:                                              ; preds = %120, %52
  br label %122

122:                                              ; preds = %121, %51
  store i32 1, i32* %2, align 4
  br label %129

123:                                              ; preds = %1
  %124 = load i32, i32* @INPUT_ST_FALLING, align 4
  %125 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %126 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 8
  %127 = load %struct.logical_input*, %struct.logical_input** %3, align 8
  %128 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %123, %122
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @keypad_send_key(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
