; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_menu.c_get_typical_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_menu.c_get_typical_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_device = type { i32* }

@INT_MAX = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@INTERVALS = common dso_local global i32 0, align 4
@INTERVAL_SHIFT = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu_device*, i32)* @get_typical_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_typical_interval(%struct.menu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.menu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.menu_device* %0, %struct.menu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* @INT_MAX, align 4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %151, %2
  %19 = load i32, i32* @UINT_MAX, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %54, %18
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @INTERVALS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load %struct.menu_device*, %struct.menu_device** %4, align 8
  %26 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %24
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @UINT_MAX, align 4
  store i32 %62, i32* %3, align 4
  br label %154

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @INTERVALS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @INTERVAL_SHIFT, align 4
  %70 = lshr i32 %68, %69
  store i32 %70, i32* %11, align 4
  br label %75

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @div_u64(i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %67
  store i32 0, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %101, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @INTERVALS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load %struct.menu_device*, %struct.menu_device** %4, align 8
  %82 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ule i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %80
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub i32 %92, %93
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = mul i32 %95, %96
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %91, %80
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %76

104:                                              ; preds = %76
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @INTERVALS, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* @INTERVAL_SHIFT, align 4
  %110 = load i32, i32* %13, align 4
  %111 = lshr i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %116

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @do_div(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %108
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @U64_MAX, align 4
  %119 = sdiv i32 %118, 36
  %120 = icmp ule i32 %117, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @likely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %116
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = mul i32 %125, %126
  %128 = load i32, i32* %13, align 4
  %129 = mul i32 %128, 36
  %130 = icmp ugt i32 %127, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 %132, 4
  %134 = load i32, i32* @INTERVALS, align 4
  %135 = mul nsw i32 %134, 3
  %136 = icmp sge i32 %133, %135
  br i1 %136, label %140, label %137

137:                                              ; preds = %131, %124
  %138 = load i32, i32* %13, align 4
  %139 = icmp ule i32 %138, 400
  br i1 %139, label %140, label %142

140:                                              ; preds = %137, %131
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %3, align 4
  br label %154

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %116
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %144, 4
  %146 = load i32, i32* @INTERVALS, align 4
  %147 = mul nsw i32 %146, 3
  %148 = icmp sle i32 %145, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @UINT_MAX, align 4
  store i32 %150, i32* %3, align 4
  br label %154

151:                                              ; preds = %143
  %152 = load i32, i32* %9, align 4
  %153 = sub i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %18

154:                                              ; preds = %149, %140, %61
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
