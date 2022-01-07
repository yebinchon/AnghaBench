; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mac/extr_misc.c_unmktime.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mac/extr_misc.c_unmktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unmktime.__mon_yday = internal constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@SECS_PER_DAY = common dso_local global i32 0, align 4
@SECS_PER_HOUR = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32*, i32*, i32*, i32*, i32*, i32*)* @unmktime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmktime(i32 %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i16*, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SECS_PER_DAY, align 4
  %26 = call i32 @div_u64_rem(i32 %24, i32 %25, i32* %18)
  store i32 %26, i32* %17, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* %18, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %18, align 4
  br label %32

32:                                               ; preds = %35, %8
  %33 = load i32, i32* %18, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @SECS_PER_DAY, align 4
  %37 = load i32, i32* %18, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %17, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %17, align 4
  br label %32

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @SECS_PER_DAY, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @SECS_PER_DAY, align 4
  %48 = load i32, i32* %18, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %17, align 4
  br label %42

52:                                               ; preds = %42
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* @SECS_PER_HOUR, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32*, i32** %14, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @SECS_PER_HOUR, align 4
  %58 = load i32, i32* %18, align 4
  %59 = srem i32 %58, %57
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @SECS_PER_MINUTE, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32*, i32** %15, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @SECS_PER_MINUTE, align 4
  %66 = srem i32 %64, %65
  %67 = load i32*, i32** %16, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 4, %68
  %70 = srem i32 %69, 7
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %52
  %74 = load i32, i32* %20, align 4
  %75 = add nsw i32 %74, 7
  store i32 %75, i32* %20, align 4
  br label %76

76:                                               ; preds = %73, %52
  store i32 1970, i32* %19, align 4
  br label %77

77:                                               ; preds = %102, %76
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %19, align 4
  %83 = srem i32 %82, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load i32, i32* %19, align 4
  %87 = srem i32 %86, 100
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %19, align 4
  %91 = srem i32 %90, 400
  %92 = icmp eq i32 %91, 0
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ true, %85 ], [ %92, %89 ]
  br label %95

95:                                               ; preds = %93, %80
  %96 = phi i1 [ false, %80 ], [ %94, %93 ]
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 366, i32 365
  %99 = icmp sge i32 %81, %98
  br label %100

100:                                              ; preds = %95, %77
  %101 = phi i1 [ true, %77 ], [ %99, %95 ]
  br i1 %101, label %102, label %188

102:                                              ; preds = %100
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %17, align 4
  %105 = sdiv i32 %104, 365
  %106 = add nsw i32 %103, %105
  %107 = load i32, i32* %17, align 4
  %108 = srem i32 %107, 365
  %109 = icmp slt i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = sub nsw i32 %106, %110
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %23, align 8
  %113 = load i64, i64* %23, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %113, %115
  %117 = mul nsw i64 %116, 365
  %118 = load i64, i64* %23, align 8
  %119 = sub nsw i64 %118, 1
  %120 = sdiv i64 %119, 4
  %121 = load i64, i64* %23, align 8
  %122 = sub nsw i64 %121, 1
  %123 = srem i64 %122, 4
  %124 = icmp slt i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = sub nsw i64 %120, %126
  %128 = load i64, i64* %23, align 8
  %129 = sub nsw i64 %128, 1
  %130 = sdiv i64 %129, 100
  %131 = load i64, i64* %23, align 8
  %132 = sub nsw i64 %131, 1
  %133 = srem i64 %132, 100
  %134 = icmp slt i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = sext i32 %135 to i64
  %137 = sub nsw i64 %130, %136
  %138 = sub nsw i64 %127, %137
  %139 = load i64, i64* %23, align 8
  %140 = sub nsw i64 %139, 1
  %141 = sdiv i64 %140, 400
  %142 = load i64, i64* %23, align 8
  %143 = sub nsw i64 %142, 1
  %144 = srem i64 %143, 400
  %145 = icmp slt i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = sext i32 %146 to i64
  %148 = sub nsw i64 %141, %147
  %149 = add nsw i64 %138, %148
  %150 = add nsw i64 %117, %149
  %151 = load i32, i32* %19, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sdiv i32 %152, 4
  %154 = load i32, i32* %19, align 4
  %155 = sub nsw i32 %154, 1
  %156 = srem i32 %155, 4
  %157 = icmp slt i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = sub nsw i32 %153, %158
  %160 = load i32, i32* %19, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sdiv i32 %161, 100
  %163 = load i32, i32* %19, align 4
  %164 = sub nsw i32 %163, 1
  %165 = srem i32 %164, 100
  %166 = icmp slt i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = sub nsw i32 %162, %167
  %169 = sub nsw i32 %159, %168
  %170 = load i32, i32* %19, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sdiv i32 %171, 400
  %173 = load i32, i32* %19, align 4
  %174 = sub nsw i32 %173, 1
  %175 = srem i32 %174, 400
  %176 = icmp slt i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = sub nsw i32 %172, %177
  %179 = add nsw i32 %169, %178
  %180 = sext i32 %179 to i64
  %181 = sub nsw i64 %150, %180
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %17, align 4
  %186 = load i64, i64* %23, align 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %19, align 4
  br label %77

188:                                              ; preds = %100
  %189 = load i32, i32* %19, align 4
  %190 = sub nsw i32 %189, 1900
  %191 = load i32*, i32** %11, align 8
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* %17, align 4
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %19, align 4
  %194 = srem i32 %193, 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %188
  %197 = load i32, i32* %19, align 4
  %198 = srem i32 %197, 100
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %19, align 4
  %202 = srem i32 %201, 400
  %203 = icmp eq i32 %202, 0
  br label %204

204:                                              ; preds = %200, %196
  %205 = phi i1 [ true, %196 ], [ %203, %200 ]
  br label %206

206:                                              ; preds = %204, %188
  %207 = phi i1 [ false, %188 ], [ %205, %204 ]
  %208 = zext i1 %207 to i32
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [2 x [13 x i16]], [2 x [13 x i16]]* @unmktime.__mon_yday, i64 0, i64 %209
  %211 = getelementptr inbounds [13 x i16], [13 x i16]* %210, i64 0, i64 0
  store i16* %211, i16** %22, align 8
  store i32 11, i32* %19, align 4
  br label %212

212:                                              ; preds = %223, %206
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = load i16*, i16** %22, align 8
  %216 = load i32, i32* %19, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i16, i16* %215, i64 %217
  %219 = load i16, i16* %218, align 2
  %220 = zext i16 %219 to i64
  %221 = icmp slt i64 %214, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %212
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %19, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %19, align 4
  br label %212

226:                                              ; preds = %212
  %227 = load i16*, i16** %22, align 8
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i16, i16* %227, i64 %229
  %231 = load i16, i16* %230, align 2
  %232 = zext i16 %231 to i32
  %233 = load i32, i32* %17, align 4
  %234 = sub nsw i32 %233, %232
  store i32 %234, i32* %17, align 4
  %235 = load i32, i32* %19, align 4
  %236 = load i32*, i32** %12, align 8
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, 1
  %239 = load i32*, i32** %13, align 8
  store i32 %238, i32* %239, align 4
  ret void
}

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
