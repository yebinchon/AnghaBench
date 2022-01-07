; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_printf.c_number.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_printf.c_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@number.digits = internal constant [16 x i8] c"0123456789ABCDEF", align 16
@SMALL = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@ZEROPAD = common dso_local global i32 0, align 4
@SIGN = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@SPACE = common dso_local global i32 0, align 4
@SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i32, i32, i32)* @number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @number(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [66 x i8], align 16
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @SMALL, align 4
  %21 = and i32 %19, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %17, align 1
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @LEFT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32, i32* @ZEROPAD, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %13, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %27, %6
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 16
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  store i8* null, i8** %7, align 8
  br label %228

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @ZEROPAD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 48, i32 32
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @SIGN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %39
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  store i8 45, i8* %16, align 1
  %55 = load i64, i64* %9, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  br label %77

59:                                               ; preds = %51
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @PLUS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  store i8 43, i8* %16, align 1
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %11, align 4
  br label %76

67:                                               ; preds = %59
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @SPACE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  store i8 32, i8* %16, align 1
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76, %54
  br label %78

78:                                               ; preds = %77, %39
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @SPECIAL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 16
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, 2
  store i32 %88, i32* %11, align 4
  br label %96

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %86
  br label %97

97:                                               ; preds = %96, %78
  store i32 0, i32* %18, align 4
  %98 = load i64, i64* %9, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %18, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [66 x i8], [66 x i8]* %14, i64 0, i64 %103
  store i8 48, i8* %104, align 1
  br label %125

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %109, %105
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i64 @__do_div(i64 %110, i32 %111)
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* @number.digits, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* %17, align 1
  %117 = sext i8 %116 to i32
  %118 = or i32 %115, %117
  %119 = trunc i32 %118 to i8
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %18, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [66 x i8], [66 x i8]* %14, i64 0, i64 %122
  store i8 %119, i8* %123, align 1
  br label %106

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %100
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* %18, align 4
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @ZEROPAD, align 4
  %137 = load i32, i32* @LEFT, align 4
  %138 = add nsw i32 %136, %137
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %146, %141
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %11, align 4
  %145 = icmp sgt i32 %143, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %8, align 8
  store i8 32, i8* %147, align 1
  br label %142

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %131
  %151 = load i8, i8* %16, align 1
  %152 = icmp ne i8 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i8, i8* %16, align 1
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %8, align 8
  store i8 %154, i8* %155, align 1
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @SPECIAL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %157
  %163 = load i32, i32* %10, align 4
  %164 = icmp eq i32 %163, 8
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %8, align 8
  store i8 48, i8* %166, align 1
  br label %181

168:                                              ; preds = %162
  %169 = load i32, i32* %10, align 4
  %170 = icmp eq i32 %169, 16
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %8, align 8
  store i8 48, i8* %172, align 1
  %174 = load i8, i8* %17, align 1
  %175 = sext i8 %174 to i32
  %176 = or i32 88, %175
  %177 = trunc i32 %176 to i8
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %8, align 8
  store i8 %177, i8* %178, align 1
  br label %180

180:                                              ; preds = %171, %168
  br label %181

181:                                              ; preds = %180, %165
  br label %182

182:                                              ; preds = %181, %157
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @LEFT, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %197, label %187

187:                                              ; preds = %182
  br label %188

188:                                              ; preds = %192, %187
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %11, align 4
  %191 = icmp sgt i32 %189, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i8, i8* %15, align 1
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %8, align 8
  store i8 %193, i8* %194, align 1
  br label %188

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %182
  br label %198

198:                                              ; preds = %203, %197
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %12, align 4
  %202 = icmp slt i32 %199, %200
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %8, align 8
  store i8 48, i8* %204, align 1
  br label %198

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %211, %206
  %208 = load i32, i32* %18, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %18, align 4
  %210 = icmp sgt i32 %208, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [66 x i8], [66 x i8]* %14, i64 0, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = load i8*, i8** %8, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %8, align 8
  store i8 %215, i8* %216, align 1
  br label %207

218:                                              ; preds = %207
  br label %219

219:                                              ; preds = %223, %218
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %11, align 4
  %222 = icmp sgt i32 %220, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i8*, i8** %8, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %8, align 8
  store i8 32, i8* %224, align 1
  br label %219

226:                                              ; preds = %219
  %227 = load i8*, i8** %8, align 8
  store i8* %227, i8** %7, align 8
  br label %228

228:                                              ; preds = %226, %38
  %229 = load i8*, i8** %7, align 8
  ret i8* %229
}

declare dso_local i64 @__do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
