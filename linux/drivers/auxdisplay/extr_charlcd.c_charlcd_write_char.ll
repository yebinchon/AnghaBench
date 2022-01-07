; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_write_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_write_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.charlcd*, i8)*, i32 (%struct.charlcd*, i32)* }
%struct.charlcd_priv = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@LCD_CMD_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"[2J\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[H\00", align 1
@LCD_ESCAPE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*, i8)* @charlcd_write_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charlcd_write_char(%struct.charlcd* %0, i8 signext %1) #0 {
  %3 = alloca %struct.charlcd*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.charlcd_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %8 = call %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd* %7)
  store %struct.charlcd_priv* %8, %struct.charlcd_priv** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 10
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %14 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load i8, i8* %4, align 1
  %20 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %21 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %25 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8 %19, i8* %29, align 1
  %30 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %31 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %35 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8 0, i8* %38, align 1
  br label %163

39:                                               ; preds = %12, %2
  %40 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %41 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 -1, i64* %42, align 8
  %43 = load i8, i8* %4, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %158 [
    i32 128, label %45
    i32 8, label %58
    i32 12, label %104
    i32 10, label %107
    i32 13, label %149
    i32 9, label %155
  ]

45:                                               ; preds = %39
  %46 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %47 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %50 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %54 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8 0, i8* %57, align 1
  br label %162

58:                                               ; preds = %39
  %59 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %60 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %58
  %65 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %66 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %70 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %75 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %77, align 8
  %79 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %80 = load i32, i32* @LCD_CMD_SHIFT, align 4
  %81 = call i32 %78(%struct.charlcd* %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %64
  %83 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %84 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %58
  %89 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %90 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (%struct.charlcd*, i8)*, i32 (%struct.charlcd*, i8)** %92, align 8
  %94 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %95 = call i32 %93(%struct.charlcd* %94, i8 signext 32)
  %96 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %97 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %99, align 8
  %101 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %102 = load i32, i32* @LCD_CMD_SHIFT, align 4
  %103 = call i32 %100(%struct.charlcd* %101, i32 %102)
  br label %162

104:                                              ; preds = %39
  %105 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %106 = call i32 @charlcd_clear_fast(%struct.charlcd* %105)
  br label %162

107:                                              ; preds = %39
  br label %108

108:                                              ; preds = %125, %107
  %109 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %110 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %114 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %108
  %118 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %119 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32 (%struct.charlcd*, i8)*, i32 (%struct.charlcd*, i8)** %121, align 8
  %123 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %124 = call i32 %122(%struct.charlcd* %123, i8 signext 32)
  br label %125

125:                                              ; preds = %117
  %126 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %127 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %108

131:                                              ; preds = %108
  %132 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %133 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %136 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  %140 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %141 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = srem i32 %139, %142
  %144 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %145 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %148 = call i32 @charlcd_gotoxy(%struct.charlcd* %147)
  br label %162

149:                                              ; preds = %39
  %150 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %151 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %154 = call i32 @charlcd_gotoxy(%struct.charlcd* %153)
  br label %162

155:                                              ; preds = %39
  %156 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %157 = call i32 @charlcd_print(%struct.charlcd* %156, i8 signext 32)
  br label %162

158:                                              ; preds = %39
  %159 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %160 = load i8, i8* %4, align 1
  %161 = call i32 @charlcd_print(%struct.charlcd* %159, i8 signext %160)
  br label %162

162:                                              ; preds = %158, %155, %149, %131, %104, %88, %45
  br label %163

163:                                              ; preds = %162, %18
  %164 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %165 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp uge i64 %167, 2
  br i1 %168, label %169, label %234

169:                                              ; preds = %163
  store i32 0, i32* %6, align 4
  %170 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %171 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %169
  %177 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %178 = call i32 @charlcd_clear_fast(%struct.charlcd* %177)
  store i32 1, i32* %6, align 4
  br label %218

179:                                              ; preds = %169
  %180 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %181 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strcmp(i8* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %179
  %187 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %188 = call i32 @charlcd_home(%struct.charlcd* %187)
  store i32 1, i32* %6, align 4
  br label %217

189:                                              ; preds = %179
  %190 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %191 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp uge i64 %193, 3
  br i1 %194, label %195, label %216

195:                                              ; preds = %189
  %196 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %197 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 91
  br i1 %203, label %204, label %216

204:                                              ; preds = %195
  %205 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %206 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 76
  br i1 %212, label %213, label %216

213:                                              ; preds = %204
  %214 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %215 = call i32 @handle_lcd_special_code(%struct.charlcd* %214)
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %213, %204, %195, %189
  br label %217

217:                                              ; preds = %216, %186
  br label %218

218:                                              ; preds = %217, %176
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %218
  %222 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %223 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* @LCD_ESCAPE_LEN, align 4
  %227 = sext i32 %226 to i64
  %228 = icmp uge i64 %225, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %221, %218
  %230 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %231 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  store i64 -1, i64* %232, align 8
  br label %233

233:                                              ; preds = %229, %221
  br label %234

234:                                              ; preds = %233, %163
  ret void
}

declare dso_local %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd*) #1

declare dso_local i32 @charlcd_clear_fast(%struct.charlcd*) #1

declare dso_local i32 @charlcd_gotoxy(%struct.charlcd*) #1

declare dso_local i32 @charlcd_print(%struct.charlcd*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @charlcd_home(%struct.charlcd*) #1

declare dso_local i32 @handle_lcd_special_code(%struct.charlcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
