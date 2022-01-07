; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xhistogram.c_try_lcs.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xhistogram.c_try_lcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histindex = type { i32, i32, %struct.record** }
%struct.record = type { i32, i32, %struct.record* }
%struct.region = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.histindex*, %struct.region*, i32, i32, i32, i32, i32)* @try_lcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_lcs(%struct.histindex* %0, %struct.region* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.histindex*, align 8
  %9 = alloca %struct.region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.record*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.histindex* %0, %struct.histindex** %8, align 8
  store %struct.region* %1, %struct.region** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %15, align 4
  %26 = load %struct.histindex*, %struct.histindex** %8, align 8
  %27 = getelementptr inbounds %struct.histindex, %struct.histindex* %26, i32 0, i32 2
  %28 = load %struct.record**, %struct.record*** %27, align 8
  %29 = load %struct.histindex*, %struct.histindex** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @TABLE_HASH(%struct.histindex* %29, i32 2, i32 %30)
  %32 = getelementptr inbounds %struct.record*, %struct.record** %28, i64 %31
  %33 = load %struct.record*, %struct.record** %32, align 8
  store %struct.record* %33, %struct.record** %16, align 8
  br label %34

34:                                               ; preds = %213, %7
  %35 = load %struct.record*, %struct.record** %16, align 8
  %36 = icmp ne %struct.record* %35, null
  br i1 %36, label %37, label %217

37:                                               ; preds = %34
  %38 = load %struct.record*, %struct.record** %16, align 8
  %39 = getelementptr inbounds %struct.record, %struct.record* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.histindex*, %struct.histindex** %8, align 8
  %42 = getelementptr inbounds %struct.histindex, %struct.histindex* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ugt i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load %struct.histindex*, %struct.histindex** %8, align 8
  %47 = getelementptr inbounds %struct.histindex, %struct.histindex* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load %struct.histindex*, %struct.histindex** %8, align 8
  %52 = load %struct.record*, %struct.record** %16, align 8
  %53 = getelementptr inbounds %struct.record, %struct.record* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @CMP(%struct.histindex* %51, i32 1, i32 %54, i32 2, i32 %55)
  %57 = load %struct.histindex*, %struct.histindex** %8, align 8
  %58 = getelementptr inbounds %struct.histindex, %struct.histindex* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %45
  br label %213

60:                                               ; preds = %37
  %61 = load %struct.record*, %struct.record** %16, align 8
  %62 = getelementptr inbounds %struct.record, %struct.record* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  %64 = load %struct.histindex*, %struct.histindex** %8, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @CMP(%struct.histindex* %64, i32 1, i32 %65, i32 2, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %213

70:                                               ; preds = %60
  %71 = load %struct.histindex*, %struct.histindex** %8, align 8
  %72 = getelementptr inbounds %struct.histindex, %struct.histindex* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %210, %70
  store i32 0, i32* %23, align 4
  %74 = load %struct.histindex*, %struct.histindex** %8, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @NEXT_PTR(%struct.histindex* %74, i32 %75)
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* %20, align 4
  %80 = load %struct.record*, %struct.record** %16, align 8
  %81 = getelementptr inbounds %struct.record, %struct.record* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %22, align 4
  br label %83

83:                                               ; preds = %114, %73
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.histindex*, %struct.histindex** %8, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sub i32 %93, 1
  %95 = load i32, i32* %19, align 4
  %96 = sub i32 %95, 1
  %97 = call i32 @CMP(%struct.histindex* %92, i32 1, i32 %94, i32 2, i32 %96)
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %91, %87, %83
  %100 = phi i1 [ false, %87 ], [ false, %83 ], [ %98, %91 ]
  br i1 %100, label %101, label %115

101:                                              ; preds = %99
  %102 = load i32, i32* %17, align 4
  %103 = add i32 %102, -1
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %19, align 4
  %105 = add i32 %104, -1
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %22, align 4
  %107 = icmp ult i32 1, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* %22, align 4
  %110 = load %struct.histindex*, %struct.histindex** %8, align 8
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @CNT(%struct.histindex* %110, i32 %111)
  %113 = call i32 @XDL_MIN(i32 %109, i32 %112)
  store i32 %113, i32* %22, align 4
  br label %114

114:                                              ; preds = %108, %101
  br label %83

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %147, %115
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @LINE_END(i32 1)
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i32, i32* %20, align 4
  %122 = call i32 @LINE_END(i32 2)
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load %struct.histindex*, %struct.histindex** %8, align 8
  %126 = load i32, i32* %18, align 4
  %127 = add i32 %126, 1
  %128 = load i32, i32* %20, align 4
  %129 = add i32 %128, 1
  %130 = call i32 @CMP(%struct.histindex* %125, i32 1, i32 %127, i32 2, i32 %129)
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %124, %120, %116
  %133 = phi i1 [ false, %120 ], [ false, %116 ], [ %131, %124 ]
  br i1 %133, label %134, label %148

134:                                              ; preds = %132
  %135 = load i32, i32* %18, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %20, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %22, align 4
  %140 = icmp ult i32 1, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load i32, i32* %22, align 4
  %143 = load %struct.histindex*, %struct.histindex** %8, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @CNT(%struct.histindex* %143, i32 %144)
  %146 = call i32 @XDL_MIN(i32 %142, i32 %145)
  store i32 %146, i32* %22, align 4
  br label %147

147:                                              ; preds = %141, %134
  br label %116

148:                                              ; preds = %132
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp ule i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* %20, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %152, %148
  %156 = load %struct.region*, %struct.region** %9, align 8
  %157 = getelementptr inbounds %struct.region, %struct.region* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.region*, %struct.region** %9, align 8
  %160 = getelementptr inbounds %struct.region, %struct.region* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sub i32 %158, %161
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %17, align 4
  %165 = sub i32 %163, %164
  %166 = icmp ult i32 %162, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %155
  %168 = load i32, i32* %22, align 4
  %169 = load %struct.histindex*, %struct.histindex** %8, align 8
  %170 = getelementptr inbounds %struct.histindex, %struct.histindex* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ult i32 %168, %171
  br i1 %172, label %173, label %189

173:                                              ; preds = %167, %155
  %174 = load i32, i32* %17, align 4
  %175 = load %struct.region*, %struct.region** %9, align 8
  %176 = getelementptr inbounds %struct.region, %struct.region* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %19, align 4
  %178 = load %struct.region*, %struct.region** %9, align 8
  %179 = getelementptr inbounds %struct.region, %struct.region* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load %struct.region*, %struct.region** %9, align 8
  %182 = getelementptr inbounds %struct.region, %struct.region* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %20, align 4
  %184 = load %struct.region*, %struct.region** %9, align 8
  %185 = getelementptr inbounds %struct.region, %struct.region* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %22, align 4
  %187 = load %struct.histindex*, %struct.histindex** %8, align 8
  %188 = getelementptr inbounds %struct.histindex, %struct.histindex* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %173, %167
  %190 = load i32, i32* %21, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %212

193:                                              ; preds = %189
  br label %194

194:                                              ; preds = %205, %193
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %18, align 4
  %197 = icmp ule i32 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load %struct.histindex*, %struct.histindex** %8, align 8
  %200 = load i32, i32* %21, align 4
  %201 = call i32 @NEXT_PTR(%struct.histindex* %199, i32 %200)
  store i32 %201, i32* %21, align 4
  %202 = load i32, i32* %21, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  store i32 1, i32* %23, align 4
  br label %206

205:                                              ; preds = %198
  br label %194

206:                                              ; preds = %204, %194
  %207 = load i32, i32* %23, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  br label %212

210:                                              ; preds = %206
  %211 = load i32, i32* %21, align 4
  store i32 %211, i32* %17, align 4
  br label %73

212:                                              ; preds = %209, %192
  br label %213

213:                                              ; preds = %212, %69, %59
  %214 = load %struct.record*, %struct.record** %16, align 8
  %215 = getelementptr inbounds %struct.record, %struct.record* %214, i32 0, i32 2
  %216 = load %struct.record*, %struct.record** %215, align 8
  store %struct.record* %216, %struct.record** %16, align 8
  br label %34

217:                                              ; preds = %34
  %218 = load i32, i32* %15, align 4
  ret i32 %218
}

declare dso_local i64 @TABLE_HASH(%struct.histindex*, i32, i32) #1

declare dso_local i32 @CMP(%struct.histindex*, i32, i32, i32, i32) #1

declare dso_local i32 @NEXT_PTR(%struct.histindex*, i32) #1

declare dso_local i32 @XDL_MIN(i32, i32) #1

declare dso_local i32 @CNT(%struct.histindex*, i32) #1

declare dso_local i32 @LINE_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
