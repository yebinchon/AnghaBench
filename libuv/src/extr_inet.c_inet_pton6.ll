; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_inet.c_inet_pton6.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_inet.c_inet_pton6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton6.xdigits_l = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@inet_pton6.xdigits_u = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@UV_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @inet_pton6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton6(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8* %19, i8** %7, align 8
  %20 = call i32 @memset(i8* %19, i8 signext 0, i32 4)
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  store i8* %22, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 58
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 58
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @UV_EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %217

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i8*, i8** %4, align 8
  store i8* %37, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %101, %84, %71, %36
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %137

44:                                               ; preds = %38
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_l, i64 0, i64 0), i8** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_l, i64 0, i64 0), i32 %45)
  store i8* %46, i8** %15, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_u, i64 0, i64 0), i8** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_u, i64 0, i64 0), i32 %49)
  store i8* %50, i8** %15, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  %56 = shl i32 %55, 4
  store i32 %56, i32* %14, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = or i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = icmp sgt i32 %67, 4
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = load i32, i32* @UV_EINVAL, align 4
  store i32 %70, i32* %3, align 4
  br label %217

71:                                               ; preds = %54
  br label %38

72:                                               ; preds = %51
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 58
  br i1 %74, label %75, label %117

75:                                               ; preds = %72
  %76 = load i8*, i8** %4, align 8
  store i8* %76, i8** %11, align 8
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @UV_EINVAL, align 4
  store i32 %83, i32* %3, align 4
  br label %217

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  store i8* %85, i8** %9, align 8
  br label %38

86:                                               ; preds = %75
  %87 = load i8*, i8** %4, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @UV_EINVAL, align 4
  store i32 %92, i32* %3, align 4
  br label %217

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ugt i8* %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @UV_EINVAL, align 4
  store i32 %100, i32* %3, align 4
  br label %217

101:                                              ; preds = %94
  %102 = load i32, i32* %14, align 4
  %103 = lshr i32 %102, 8
  %104 = trunc i32 %103 to i8
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 255
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %7, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i32, i32* %14, align 4
  %111 = trunc i32 %110 to i8
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 255
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %7, align 8
  store i8 %114, i8* %115, align 1
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %38

117:                                              ; preds = %72
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 46
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  %123 = load i8*, i8** %8, align 8
  %124 = icmp ule i8* %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @inet_pton4(i8* %126, i8* %127)
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 4
  store i8* %133, i8** %7, align 8
  store i32 0, i32* %13, align 4
  br label %137

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %120, %117
  %136 = load i32, i32* @UV_EINVAL, align 4
  store i32 %136, i32* %3, align 4
  br label %217

137:                                              ; preds = %131, %38
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %137
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  %143 = load i8*, i8** %8, align 8
  %144 = icmp ugt i8* %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @UV_EINVAL, align 4
  store i32 %146, i32* %3, align 4
  br label %217

147:                                              ; preds = %140
  %148 = load i32, i32* %14, align 4
  %149 = lshr i32 %148, 8
  %150 = trunc i32 %149 to i8
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 255
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %7, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %7, align 8
  store i8 %153, i8* %154, align 1
  %156 = load i32, i32* %14, align 4
  %157 = trunc i32 %156 to i8
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 255
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %7, align 8
  store i8 %160, i8* %161, align 1
  br label %163

163:                                              ; preds = %147, %137
  %164 = load i8*, i8** %9, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %207

166:                                              ; preds = %163
  %167 = load i8*, i8** %7, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %17, align 4
  %173 = load i8*, i8** %7, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load i32, i32* @UV_EINVAL, align 4
  store i32 %177, i32* %3, align 4
  br label %217

178:                                              ; preds = %166
  store i32 1, i32* %18, align 4
  br label %179

179:                                              ; preds = %202, %178
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %205

183:                                              ; preds = %179
  %184 = load i8*, i8** %9, align 8
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = sub nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %184, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = load i8*, i8** %8, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sub nsw i32 0, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8 %190, i8* %195, align 1
  %196 = load i8*, i8** %9, align 8
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %18, align 4
  %199 = sub nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %196, i64 %200
  store i8 0, i8* %201, align 1
  br label %202

202:                                              ; preds = %183
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  br label %179

205:                                              ; preds = %179
  %206 = load i8*, i8** %8, align 8
  store i8* %206, i8** %7, align 8
  br label %207

207:                                              ; preds = %205, %163
  %208 = load i8*, i8** %7, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = icmp ne i8* %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = load i32, i32* @UV_EINVAL, align 4
  store i32 %212, i32* %3, align 4
  br label %217

213:                                              ; preds = %207
  %214 = load i8*, i8** %5, align 8
  %215 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %216 = call i32 @memcpy(i8* %214, i8* %215, i32 4)
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %213, %211, %176, %145, %135, %99, %91, %82, %69, %33
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @inet_pton4(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
