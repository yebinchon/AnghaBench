; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)* }
%struct.charlcd_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LCD_FLAG_N = common dso_local global i32 0, align 4
@LCD_FLAG_D = common dso_local global i32 0, align 4
@LCD_FLAG_C = common dso_local global i32 0, align 4
@LCD_FLAG_B = common dso_local global i32 0, align 4
@LCD_CMD_FUNCTION_SET = common dso_local global i32 0, align 4
@LCD_CMD_DATA_LEN_8BITS = common dso_local global i32 0, align 4
@LCD_FLAG_F = common dso_local global i32 0, align 4
@LCD_CMD_FONT_5X10_DOTS = common dso_local global i32 0, align 4
@LCD_CMD_TWO_LINES = common dso_local global i32 0, align 4
@LCD_CMD_DISPLAY_CTRL = common dso_local global i32 0, align 4
@LCD_CMD_DISPLAY_ON = common dso_local global i32 0, align 4
@LCD_CMD_CURSOR_ON = common dso_local global i32 0, align 4
@LCD_CMD_BLINK_ON = common dso_local global i32 0, align 4
@LCD_FLAG_L = common dso_local global i32 0, align 4
@LCD_CMD_ENTRY_MODE = common dso_local global i32 0, align 4
@LCD_CMD_CURSOR_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charlcd*)* @charlcd_init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charlcd_init_display(%struct.charlcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charlcd*, align 8
  %4 = alloca void (%struct.charlcd*, i32)*, align 8
  %5 = alloca %struct.charlcd_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %3, align 8
  %7 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %8 = call %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd* %7)
  store %struct.charlcd_priv* %8, %struct.charlcd_priv** %5, align 8
  %9 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %10 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %15 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %204

21:                                               ; preds = %13, %1
  %22 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %23 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @LCD_FLAG_N, align 4
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = load i32, i32* @LCD_FLAG_D, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LCD_FLAG_C, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @LCD_FLAG_B, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %38 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = call i32 @long_sleep(i32 20)
  %40 = load i32, i32* @LCD_CMD_FUNCTION_SET, align 4
  %41 = load i32, i32* @LCD_CMD_DATA_LEN_8BITS, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %44 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %55

47:                                               ; preds = %29
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %51 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %53, align 8
  store void (%struct.charlcd*, i32)* %54, void (%struct.charlcd*, i32)** %4, align 8
  br label %61

55:                                               ; preds = %29
  %56 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %57 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %59, align 8
  store void (%struct.charlcd*, i32)* %60, void (%struct.charlcd*, i32)** %4, align 8
  br label %61

61:                                               ; preds = %55, %47
  %62 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %4, align 8
  %63 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %64 = load i32, i32* %6, align 4
  call void %62(%struct.charlcd* %63, i32 %64)
  %65 = call i32 @long_sleep(i32 10)
  %66 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %4, align 8
  %67 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %68 = load i32, i32* %6, align 4
  call void %66(%struct.charlcd* %67, i32 %68)
  %69 = call i32 @long_sleep(i32 10)
  %70 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %4, align 8
  %71 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %72 = load i32, i32* %6, align 4
  call void %70(%struct.charlcd* %71, i32 %72)
  %73 = call i32 @long_sleep(i32 10)
  %74 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %75 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %88

78:                                               ; preds = %61
  %79 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %80 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %82, align 8
  %84 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %85 = load i32, i32* @LCD_CMD_FUNCTION_SET, align 4
  %86 = ashr i32 %85, 4
  call void %83(%struct.charlcd* %84, i32 %86)
  %87 = call i32 @long_sleep(i32 10)
  br label %88

88:                                               ; preds = %78, %61
  %89 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %90 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %92, align 8
  %94 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %95 = load i32, i32* @LCD_CMD_FUNCTION_SET, align 4
  %96 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %97 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 8
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* @LCD_CMD_DATA_LEN_8BITS, align 4
  br label %103

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = or i32 %95, %104
  %106 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %107 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @LCD_FLAG_F, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* @LCD_CMD_FONT_5X10_DOTS, align 4
  br label %115

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  %117 = or i32 %105, %116
  %118 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %119 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @LCD_FLAG_N, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* @LCD_CMD_TWO_LINES, align 4
  br label %127

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  %129 = or i32 %117, %128
  call void %93(%struct.charlcd* %94, i32 %129)
  %130 = call i32 @long_sleep(i32 10)
  %131 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %132 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %134, align 8
  %136 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %137 = load i32, i32* @LCD_CMD_DISPLAY_CTRL, align 4
  call void %135(%struct.charlcd* %136, i32 %137)
  %138 = call i32 @long_sleep(i32 10)
  %139 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %140 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %142, align 8
  %144 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %145 = load i32, i32* @LCD_CMD_DISPLAY_CTRL, align 4
  %146 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %147 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @LCD_FLAG_D, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %127
  %153 = load i32, i32* @LCD_CMD_DISPLAY_ON, align 4
  br label %155

154:                                              ; preds = %127
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = or i32 %145, %156
  %158 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %159 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @LCD_FLAG_C, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = load i32, i32* @LCD_CMD_CURSOR_ON, align 4
  br label %167

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ 0, %166 ]
  %169 = or i32 %157, %168
  %170 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %171 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @LCD_FLAG_B, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32, i32* @LCD_CMD_BLINK_ON, align 4
  br label %179

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i32 [ %177, %176 ], [ 0, %178 ]
  %181 = or i32 %169, %180
  call void %143(%struct.charlcd* %144, i32 %181)
  %182 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %183 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %184 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @LCD_FLAG_L, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 1, i32 0
  %191 = call i32 @charlcd_backlight(%struct.charlcd* %182, i32 %190)
  %192 = call i32 @long_sleep(i32 10)
  %193 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %194 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %193, i32 0, i32 2
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load void (%struct.charlcd*, i32)*, void (%struct.charlcd*, i32)** %196, align 8
  %198 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %199 = load i32, i32* @LCD_CMD_ENTRY_MODE, align 4
  %200 = load i32, i32* @LCD_CMD_CURSOR_INC, align 4
  %201 = or i32 %199, %200
  call void %197(%struct.charlcd* %198, i32 %201)
  %202 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %203 = call i32 @charlcd_clear_display(%struct.charlcd* %202)
  store i32 0, i32* %2, align 4
  br label %204

204:                                              ; preds = %179, %18
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd*) #1

declare dso_local i32 @long_sleep(i32) #1

declare dso_local i32 @charlcd_backlight(%struct.charlcd*, i32) #1

declare dso_local i32 @charlcd_clear_display(%struct.charlcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
