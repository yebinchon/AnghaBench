; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_make_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_make_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ultra = common dso_local global i32 0, align 4
@BR_ULT = common dso_local global i64 0, align 8
@BR_HRZ = common dso_local global i64 0, align 8
@CR_MIND = common dso_local global i32 0, align 4
@DBG_QOS = common dso_local global i32 0, align 4
@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"make_rate b=%lu, c=%u, %s\00", align 1
@round_up = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nearest\00", align 1
@DBG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"zero rate is not allowed!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CR_MAXPEXP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"A: p=%u, d=%u\00", align 1
@CR_MAXD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"B: p=%u, d=%u\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"C: p=%u, d=%u\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"set_cr internal failure: d=%u p=%u\00", align 1
@CLOCK_SELECT_SHIFT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"actual rate: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*, i32*)* @make_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_rate(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @ultra, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* @BR_ULT, align 8
  br label %26

24:                                               ; preds = %5
  %25 = load i64, i64* @BR_HRZ, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  store i64 %27, i64* %12, align 8
  %28 = load i32, i32* @CR_MIND, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* %12, align 8
  store i64 %29, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %30 = load i32, i32* @DBG_QOS, align 4
  %31 = load i32, i32* @DBG_FLOW, align 4
  %32 = or i32 %30, %31
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @round_up, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %44

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 129
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  br label %44

44:                                               ; preds = %39, %38
  %45 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %38 ], [ %43, %39 ]
  %46 = call i32 (i32, i8*, ...) @PRINTD(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %34, i8* %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @DBG_QOS, align 4
  %51 = load i32, i32* @DBG_ERR, align 4
  %52 = or i32 %50, %51
  %53 = call i32 (i32, i8*, ...) @PRINTD(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %230

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @CR_MAXPEXP, align 4
  %60 = load i32, i32* @CR_MIND, align 4
  %61 = add i32 %59, %60
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i64, i64* %15, align 8
  %65 = urem i64 %64, 2
  %66 = icmp eq i64 %65, 0
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i1 [ false, %57 ], [ %66, %63 ]
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = load i64, i64* %15, align 8
  %71 = lshr i64 %70, 1
  store i64 %71, i64* %15, align 8
  %72 = load i32, i32* %16, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %57

74:                                               ; preds = %67
  %75 = load i64, i64* %15, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @CR_MAXPEXP, align 4
  %78 = load i32, i32* @CR_MIND, align 4
  %79 = add i32 %77, %78
  %80 = load i32, i32* %16, align 4
  %81 = sub i32 %79, %80
  %82 = shl i32 %76, %81
  %83 = zext i32 %82 to i64
  %84 = icmp ule i64 %75, %83
  br i1 %84, label %85, label %126

85:                                               ; preds = %74
  %86 = load i32, i32* %9, align 4
  switch i32 %86, label %107 [
    i32 129, label %87
    i32 128, label %97
  ]

87:                                               ; preds = %85
  %88 = load i64, i64* %12, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %13, align 4
  %91 = shl i32 %89, %90
  %92 = call i32 @DIV_ROUND_UP(i64 %88, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  store i32 1, i32* %14, align 4
  br label %96

96:                                               ; preds = %95, %87
  br label %121

97:                                               ; preds = %85
  %98 = load i64, i64* %12, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %13, align 4
  %101 = shl i32 %99, %100
  %102 = call i32 @DIV_ROUND_CLOSEST(i64 %98, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %105, %97
  br label %121

107:                                              ; preds = %85
  %108 = load i64, i64* %12, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %13, align 4
  %111 = shl i32 %109, %110
  %112 = zext i32 %111 to i64
  %113 = udiv i64 %108, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %107
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %230

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %106, %96
  %122 = load i32, i32* @DBG_QOS, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 (i32, i8*, ...) @PRINTD(i32 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %124)
  br label %185

126:                                              ; preds = %74
  br label %127

127:                                              ; preds = %171, %126
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @CR_MAXD, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %172

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %13, align 4
  %134 = load i64, i64* %15, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @CR_MAXPEXP, align 4
  %137 = load i32, i32* %13, align 4
  %138 = add i32 %136, %137
  %139 = load i32, i32* %16, align 4
  %140 = sub i32 %138, %139
  %141 = shl i32 %135, %140
  %142 = zext i32 %141 to i64
  %143 = icmp ule i64 %134, %142
  br i1 %143, label %144, label %171

144:                                              ; preds = %131
  %145 = load i32, i32* %9, align 4
  switch i32 %145, label %158 [
    i32 129, label %146
    i32 128, label %152
  ]

146:                                              ; preds = %144
  %147 = load i64, i64* %12, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %13, align 4
  %150 = shl i32 %148, %149
  %151 = call i32 @DIV_ROUND_UP(i64 %147, i32 %150)
  store i32 %151, i32* %14, align 4
  br label %166

152:                                              ; preds = %144
  %153 = load i64, i64* %12, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %13, align 4
  %156 = shl i32 %154, %155
  %157 = call i32 @DIV_ROUND_CLOSEST(i64 %153, i32 %156)
  store i32 %157, i32* %14, align 4
  br label %166

158:                                              ; preds = %144
  %159 = load i64, i64* %12, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %13, align 4
  %162 = shl i32 %160, %161
  %163 = zext i32 %162 to i64
  %164 = udiv i64 %159, %163
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %158, %152, %146
  %167 = load i32, i32* @DBG_QOS, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 (i32, i8*, ...) @PRINTD(i32 %167, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %168, i32 %169)
  br label %185

171:                                              ; preds = %131
  br label %127

172:                                              ; preds = %127
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %173, 129
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %230

178:                                              ; preds = %172
  %179 = load i32, i32* @CR_MAXPEXP, align 4
  %180 = shl i32 1, %179
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* @DBG_QOS, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i32 (i32, i8*, ...) @PRINTD(i32 %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %178, %166, %121
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @CR_MAXD, align 4
  %188 = icmp ugt i32 %186, %187
  br i1 %188, label %197, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @CR_MAXPEXP, align 4
  %195 = shl i32 1, %194
  %196 = icmp ugt i32 %193, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %192, %189, %185
  %198 = load i32, i32* @DBG_QOS, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i32 (i32, i8*, ...) @PRINTD(i32 %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %199, i32 %200)
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %6, align 4
  br label %230

204:                                              ; preds = %192
  %205 = load i32*, i32** %10, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @CLOCK_SELECT_SHIFT, align 4
  %210 = shl i32 %208, %209
  %211 = load i32, i32* %14, align 4
  %212 = sub i32 %211, 1
  %213 = or i32 %210, %212
  %214 = load i32*, i32** %10, align 8
  store i32 %213, i32* %214, align 4
  br label %215

215:                                              ; preds = %207, %204
  %216 = load i32*, i32** %11, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load i64, i64* %12, align 8
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %13, align 4
  %222 = shl i32 %220, %221
  %223 = call i32 @DIV_ROUND_UP(i64 %219, i32 %222)
  %224 = load i32*, i32** %11, align 8
  store i32 %223, i32* %224, align 4
  %225 = load i32, i32* @DBG_QOS, align 4
  %226 = load i32*, i32** %11, align 8
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i32, i8*, ...) @PRINTD(i32 %225, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %218, %215
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %229, %197, %175, %117, %49
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
