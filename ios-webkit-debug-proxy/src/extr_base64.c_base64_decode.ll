; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_base64.c_base64_decode.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_base64.c_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLARSSL_ERR_BASE64_INVALID_CHARACTER = common dso_local global i32 0, align 4
@base64_dec_map = common dso_local global i32* null, align 8
@POLARSSL_ERR_BASE64_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64_decode(i8* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %98, %4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %101

19:                                               ; preds = %15
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = sub i64 %20, %21
  %23 = icmp uge i64 %22, 2
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 13
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %98

40:                                               ; preds = %31, %24, %19
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %98

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 61
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @POLARSSL_ERR_BASE64_INVALID_CHARACTER, align 4
  store i32 %60, i32* %5, align 4
  br label %198

61:                                               ; preds = %55, %48
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sgt i32 %66, 127
  br i1 %67, label %78, label %68

68:                                               ; preds = %61
  %69 = load i32*, i32** @base64_dec_map, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 127
  br i1 %77, label %78, label %80

78:                                               ; preds = %68, %61
  %79 = load i32, i32* @POLARSSL_ERR_BASE64_INVALID_CHARACTER, align 4
  store i32 %79, i32* %5, align 4
  br label %198

80:                                               ; preds = %68
  %81 = load i32*, i32** @base64_dec_map, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 64
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @POLARSSL_ERR_BASE64_INVALID_CHARACTER, align 4
  store i32 %94, i32* %5, align 4
  br label %198

95:                                               ; preds = %90, %80
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %95, %47, %39
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %15

101:                                              ; preds = %15
  %102 = load i64, i64* %11, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %198

105:                                              ; preds = %101
  %106 = load i64, i64* %11, align 8
  %107 = mul i64 %106, 6
  %108 = add i64 %107, 7
  %109 = lshr i64 %108, 3
  store i64 %109, i64* %11, align 8
  %110 = load i64*, i64** %7, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i64, i64* %11, align 8
  %116 = load i64*, i64** %7, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i32, i32* @POLARSSL_ERR_BASE64_BUFFER_TOO_SMALL, align 4
  store i32 %117, i32* %5, align 4
  br label %198

118:                                              ; preds = %105
  store i32 3, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %11, align 8
  %119 = load i8*, i8** %6, align 8
  store i8* %119, i8** %14, align 8
  br label %120

120:                                              ; preds = %186, %118
  %121 = load i64, i64* %10, align 8
  %122 = icmp ugt i64 %121, 0
  br i1 %122, label %123, label %191

123:                                              ; preds = %120
  %124 = load i8*, i8** %8, align 8
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 13
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %8, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 10
  br i1 %132, label %133, label %134

133:                                              ; preds = %128, %123
  br label %186

134:                                              ; preds = %128
  %135 = load i32*, i32** @base64_dec_map, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 64
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = shl i32 %145, 6
  %147 = load i32*, i32** @base64_dec_map, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 63
  %154 = or i32 %146, %153
  store i32 %154, i32* %13, align 4
  %155 = load i64, i64* %11, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %11, align 8
  %157 = icmp eq i64 %156, 4
  br i1 %157, label %158, label %185

158:                                              ; preds = %134
  store i64 0, i64* %11, align 8
  %159 = load i32, i32* %12, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = ashr i32 %162, 16
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %14, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %14, align 8
  store i8 %164, i8* %165, align 1
  br label %167

167:                                              ; preds = %161, %158
  %168 = load i32, i32* %12, align 4
  %169 = icmp sgt i32 %168, 1
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i32, i32* %13, align 4
  %172 = ashr i32 %171, 8
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %14, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %14, align 8
  store i8 %173, i8* %174, align 1
  br label %176

176:                                              ; preds = %170, %167
  %177 = load i32, i32* %12, align 4
  %178 = icmp sgt i32 %177, 2
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load i32, i32* %13, align 4
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %14, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %14, align 8
  store i8 %181, i8* %182, align 1
  br label %184

184:                                              ; preds = %179, %176
  br label %185

185:                                              ; preds = %184, %134
  br label %186

186:                                              ; preds = %185, %133
  %187 = load i64, i64* %10, align 8
  %188 = add i64 %187, -1
  store i64 %188, i64* %10, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %8, align 8
  br label %120

191:                                              ; preds = %120
  %192 = load i8*, i8** %14, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = load i64*, i64** %7, align 8
  store i64 %196, i64* %197, align 8
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %191, %114, %104, %93, %78, %59
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
