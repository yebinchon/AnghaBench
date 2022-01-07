; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_timerwheel.c_h2o_timerwheel_get_wake_at.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_timerwheel.c_h2o_timerwheel_get_wake_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32** }

@H2O_TIMERWHEEL_BITS_PER_WHEEL = common dso_local global i64 0, align 8
@H2O_TIMERWHEEL_SLOTS_PER_WHEEL = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@w = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_timerwheel_get_wake_at(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %130, %1
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %133

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @H2O_TIMERWHEEL_BITS_PER_WHEEL, align 8
  %23 = mul i64 %21, %22
  %24 = shl i64 1, %23
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @timer_slot(i64 %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %49, %20
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @H2O_TIMERWHEEL_SLOTS_PER_WHEEL, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @h2o_linklist_is_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %135

45:                                               ; preds = %33
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %29

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %121
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %53
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %89, %60
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %63
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @timer_slot(i64 %70, i64 %71)
  store i64 %72, i64* %10, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = call i32 @h2o_linklist_is_empty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %69
  br label %135

84:                                               ; preds = %69
  %85 = load i64, i64* %10, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %92

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %63

92:                                               ; preds = %87, %63
  br label %93

93:                                               ; preds = %92, %53
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %129

97:                                               ; preds = %93
  store i64 0, i64* %5, align 8
  br label %98

98:                                               ; preds = %118, %97
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32**, i32*** %104, align 8
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i32 @h2o_linklist_is_empty(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  br label %135

114:                                              ; preds = %102
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %6, align 8
  br label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %98

121:                                              ; preds = %98
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @H2O_TIMERWHEEL_SLOTS_PER_WHEEL, align 8
  %124 = load i64, i64* %8, align 8
  %125 = sub i64 %123, %124
  %126 = mul i64 %122, %125
  %127 = load i64, i64* %6, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %53

129:                                              ; preds = %96
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %4, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %4, align 8
  br label %14

133:                                              ; preds = %14
  %134 = load i64, i64* @UINT64_MAX, align 8
  store i64 %134, i64* %2, align 8
  br label %137

135:                                              ; preds = %113, %83, %44
  %136 = load i64, i64* %6, align 8
  store i64 %136, i64* %2, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = load i64, i64* %2, align 8
  ret i64 %138
}

declare dso_local i64 @timer_slot(i64, i64) #1

declare dso_local i32 @h2o_linklist_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
