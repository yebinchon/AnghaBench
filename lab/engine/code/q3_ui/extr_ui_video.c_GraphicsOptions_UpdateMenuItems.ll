; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_UpdateMenuItems.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_UpdateMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i64, i64, i64, i32, i32, i32, i64, i64 }

@s_graphicsoptions = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@QMF_GRAYED = common dso_local global i32 0, align 4
@QMF_HIDDEN = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4
@s_ivo = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GraphicsOptions_UpdateMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_UpdateMenuItems() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 8
  %4 = load i32, i32* @QMF_GRAYED, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 9, i32 1, i32 0), align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 9, i32 1, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  br label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @QMF_GRAYED, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 9, i32 1, i32 0), align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 9, i32 1, i32 0), align 4
  br label %12

12:                                               ; preds = %7, %3
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %12
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %19 = load i32, i32* @QMF_GRAYED, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 5, i32 1, i32 0), align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 5, i32 1, i32 0), align 4
  br label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @QMF_GRAYED, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 5, i32 1, i32 0), align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 5, i32 1, i32 0), align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 8
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* @QMF_HIDDEN, align 4
  %37 = load i32, i32* @QMF_INACTIVE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %40 = or i32 %39, %38
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 0), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 10, i32 0), align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i32, i32* @QMF_HIDDEN, align 4
  %46 = load i32, i32* @QMF_INACTIVE, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %50 = and i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %51

51:                                               ; preds = %44, %35
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 1), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 8
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* @QMF_HIDDEN, align 4
  %57 = load i32, i32* @QMF_INACTIVE, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %61 = and i32 %60, %59
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %62

62:                                               ; preds = %55, %51
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 2), align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* @QMF_HIDDEN, align 4
  %68 = load i32, i32* @QMF_INACTIVE, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %72 = and i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %73

73:                                               ; preds = %66, %62
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 3), align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32, i32* @QMF_HIDDEN, align 4
  %79 = load i32, i32* @QMF_INACTIVE, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %83 = and i32 %82, %81
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %84

84:                                               ; preds = %77, %73
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 4), align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, i32* @QMF_HIDDEN, align 4
  %90 = load i32, i32* @QMF_INACTIVE, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %94 = and i32 %93, %92
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %95

95:                                               ; preds = %88, %84
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 5), align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i32, i32* @QMF_HIDDEN, align 4
  %101 = load i32, i32* @QMF_INACTIVE, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %105 = and i32 %104, %103
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %106

106:                                              ; preds = %99, %95
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 6), align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* @QMF_HIDDEN, align 4
  %112 = load i32, i32* @QMF_INACTIVE, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %116 = and i32 %115, %114
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %117

117:                                              ; preds = %110, %106
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 7), align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 8
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i32, i32* @QMF_HIDDEN, align 4
  %123 = load i32, i32* @QMF_INACTIVE, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %127 = and i32 %126, %125
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %128

128:                                              ; preds = %121, %117
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 8), align 8
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32, i32* @QMF_HIDDEN, align 4
  %134 = load i32, i32* @QMF_INACTIVE, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %138 = and i32 %137, %136
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %139

139:                                              ; preds = %132, %128
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @s_ivo, i32 0, i32 9), align 8
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i32, i32* @QMF_HIDDEN, align 4
  %145 = load i32, i32* @QMF_INACTIVE, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  %149 = and i32 %148, %147
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @s_graphicsoptions, i32 0, i32 0, i32 0, i32 0), align 8
  br label %150

150:                                              ; preds = %143, %139
  %151 = call i32 (...) @GraphicsOptions_CheckConfig()
  ret void
}

declare dso_local i32 @GraphicsOptions_CheckConfig(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
