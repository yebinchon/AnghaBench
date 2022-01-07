; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_cs_block_rcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_cs_block_rcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_RCMABR = common dso_local global i64 0, align 8
@ATM_OC3_PCR = common dso_local global i32 0, align 4
@RTGTBL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.he_dev*)* @he_init_cs_block_rcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @he_init_cs_block_rcm(%struct.he_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.he_dev*, align 8
  %4 = alloca [16 x [16 x i32]]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.he_dev* %0, %struct.he_dev** %3, align 8
  store i32 4, i32* %16, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32*** @kmalloc(i32 1024, i32 %17)
  %19 = bitcast i32*** %18 to [16 x [16 x i32]]*
  store [16 x [16 x i32]]* %19, [16 x [16 x i32]]** %4, align 8
  %20 = load [16 x [16 x i32]]*, [16 x [16 x i32]]** %4, align 8
  %21 = icmp ne [16 x [16 x i32]]* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %249

25:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 255
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %31 = load i64, i64* @CONFIG_RCMABR, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @he_writel_rcm(%struct.he_dev* %30, i32 0, i64 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %26

39:                                               ; preds = %26
  store i32 256, i32* %9, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 511
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %45 = load i64, i64* @CONFIG_RCMABR, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 @he_writel_rcm(%struct.he_dev* %44, i32 0, i64 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %55 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = udiv i32 %59, 32
  store i32 %60, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %74, %53
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = load [16 x [16 x i32]]*, [16 x [16 x i32]]** %4, align 8
  %67 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %66, i64 0, i64 0
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %67, i64 0, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %61

77:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %78

78:                                               ; preds = %129, %77
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %132

81:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %125, %81
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 16
  br i1 %84, label %85, label %128

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %86, 14
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load [16 x [16 x i32]]*, [16 x [16 x i32]]** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %89, i64 0, i64 %92
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [16 x i32], [16 x i32]* %93, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = udiv i32 %97, 4
  %99 = load [16 x [16 x i32]]*, [16 x [16 x i32]]** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %99, i64 0, i64 %101
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [16 x i32], [16 x i32]* %102, i64 0, i64 %104
  store i32 %98, i32* %105, align 4
  br label %124

106:                                              ; preds = %85
  %107 = load [16 x [16 x i32]]*, [16 x [16 x i32]]** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %107, i64 0, i64 %110
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %111, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = udiv i32 %115, 2
  %117 = load [16 x [16 x i32]]*, [16 x [16 x i32]]** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %117, i64 0, i64 %119
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %120, i64 0, i64 %122
  store i32 %116, i32* %123, align 4
  br label %124

124:                                              ; preds = %106, %88
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %82

128:                                              ; preds = %82
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %78

132:                                              ; preds = %78
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %242, %132
  %134 = load i32, i32* %10, align 4
  %135 = icmp ult i32 %134, 1024
  br i1 %135, label %136, label %245

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = and i32 %137, 31
  %139 = shl i32 %138, 4
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %10, align 4
  %141 = lshr i32 %140, 5
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = shl i64 1, %143
  %145 = load i32, i32* %12, align 4
  %146 = add i32 %145, 512
  %147 = zext i32 %146 to i64
  %148 = mul i64 %144, %147
  %149 = lshr i64 %148, 9
  store i64 %149, i64* %13, align 8
  %150 = load i64, i64* %13, align 8
  %151 = icmp ult i64 %150, 10
  br i1 %151, label %152, label %153

152:                                              ; preds = %136
  store i64 10, i64* %13, align 8
  br label %153

153:                                              ; preds = %152, %136
  store i32 255, i32* %7, align 4
  br label %154

154:                                              ; preds = %173, %153
  %155 = load i32, i32* %7, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %154
  %158 = load [16 x [16 x i32]]*, [16 x [16 x i32]]** %4, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sdiv i32 %159, 16
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %158, i64 0, i64 %161
  %163 = load i32, i32* %7, align 4
  %164 = srem i32 %163, 16
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %162, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %13, align 8
  %170 = icmp uge i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  br label %176

172:                                              ; preds = %157
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %7, align 4
  br label %154

176:                                              ; preds = %171, %154
  %177 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %178 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @ATM_OC3_PCR, align 4
  %183 = udiv i32 %181, %182
  store i32 %183, i32* %14, align 4
  %184 = load i64, i64* %13, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 272, %186
  %188 = icmp ugt i64 %184, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %176
  store i32 4, i32* %15, align 4
  br label %215

190:                                              ; preds = %176
  %191 = load i64, i64* %13, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 204, %193
  %195 = icmp ugt i64 %191, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  store i32 3, i32* %15, align 4
  br label %214

197:                                              ; preds = %190
  %198 = load i64, i64* %13, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 136, %200
  %202 = icmp ugt i64 %198, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  store i32 2, i32* %15, align 4
  br label %213

204:                                              ; preds = %197
  %205 = load i64, i64* %13, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = mul i64 68, %207
  %209 = icmp ugt i64 %205, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  store i32 1, i32* %15, align 4
  br label %212

211:                                              ; preds = %204
  store i32 0, i32* %15, align 4
  br label %212

212:                                              ; preds = %211, %210
  br label %213

213:                                              ; preds = %212, %203
  br label %214

214:                                              ; preds = %213, %196
  br label %215

215:                                              ; preds = %214, %189
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp sgt i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i32, i32* %16, align 4
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %219, %215
  %222 = load i32, i32* %9, align 4
  %223 = shl i32 %222, 16
  %224 = load i32, i32* %7, align 4
  %225 = shl i32 %224, 8
  %226 = load i32, i32* %15, align 4
  %227 = or i32 %225, %226
  %228 = or i32 %223, %227
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %10, align 4
  %230 = and i32 %229, 1
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %221
  %233 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %234 = load i32, i32* %9, align 4
  %235 = load i64, i64* @CONFIG_RCMABR, align 8
  %236 = add nsw i64 %235, 1024
  %237 = load i32, i32* %10, align 4
  %238 = lshr i32 %237, 1
  %239 = zext i32 %238 to i64
  %240 = add nsw i64 %236, %239
  %241 = call i32 @he_writel_rcm(%struct.he_dev* %233, i32 %234, i64 %240)
  br label %242

242:                                              ; preds = %232, %221
  %243 = load i32, i32* %10, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %133

245:                                              ; preds = %133
  %246 = load [16 x [16 x i32]]*, [16 x [16 x i32]]** %4, align 8
  %247 = bitcast [16 x [16 x i32]]* %246 to i32***
  %248 = call i32 @kfree(i32*** %247)
  store i32 0, i32* %2, align 4
  br label %249

249:                                              ; preds = %245, %22
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32*** @kmalloc(i32, i32) #1

declare dso_local i32 @he_writel_rcm(%struct.he_dev*, i32, i64) #1

declare dso_local i32 @kfree(i32***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
