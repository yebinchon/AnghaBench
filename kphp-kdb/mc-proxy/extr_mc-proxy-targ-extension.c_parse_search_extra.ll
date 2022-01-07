; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_parse_search_extra.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_parse_search_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i32*)* @parse_search_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_search_extra(i8* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 41
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %169

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %54, %30
  %34 = load i32, i32* %14, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 35
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 40
  br label %52

52:                                               ; preds = %44, %36, %33
  %53 = phi i1 [ false, %36 ], [ false, %33 ], [ %51, %44 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %14, align 4
  br label %33

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %221

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 35
  br i1 %68, label %69, label %95

69:                                               ; preds = %61
  %70 = load i32, i32* %14, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32*, i32** %9, align 8
  %83 = call i8* @parse_search_extra_common(i8* %77, i32 %81, i8 signext 41, i32* %82, i32* %15)
  %84 = load i8*, i8** %7, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %69
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %6, align 4
  br label %221

94:                                               ; preds = %69
  br label %95

95:                                               ; preds = %94, %61
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %110, %95
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 40
  br label %108

108:                                              ; preds = %100, %96
  %109 = phi i1 [ false, %96 ], [ %107, %100 ]
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %96

113:                                              ; preds = %108
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 -1, i32* %6, align 4
  br label %221

118:                                              ; preds = %113
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %16, align 4
  br label %120

120:                                              ; preds = %133, %118
  %121 = load i32, i32* %14, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 35
  br label %131

131:                                              ; preds = %123, %120
  %132 = phi i1 [ false, %120 ], [ %130, %123 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %14, align 4
  br label %120

136:                                              ; preds = %131
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* %16, align 4
  %141 = load i32*, i32** %10, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32*, i32** %11, align 8
  store i32 %142, i32* %143, align 4
  store i32 0, i32* %6, align 4
  br label %221

144:                                              ; preds = %136
  %145 = load i32, i32* %14, align 4
  %146 = load i32*, i32** %10, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  store i32 -1, i32* %17, align 4
  %149 = load i8*, i8** %7, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %14, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32*, i32** %9, align 8
  %157 = call i8* @parse_search_extra_common(i8* %152, i32 %155, i8 signext 40, i32* %156, i32* %17)
  %158 = load i8*, i8** %7, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = load i32*, i32** %11, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, -1
  br i1 %165, label %166, label %168

166:                                              ; preds = %144
  %167 = load i32, i32* %17, align 4
  store i32 %167, i32* %6, align 4
  br label %221

168:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %221

169:                                              ; preds = %5
  %170 = load i32, i32* %8, align 4
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %185, %169
  %173 = load i32, i32* %18, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i8*, i8** %7, align 8
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 35
  br label %183

183:                                              ; preds = %175, %172
  %184 = phi i1 [ false, %172 ], [ %182, %175 ]
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %18, align 4
  br label %172

188:                                              ; preds = %183
  %189 = load i32, i32* %18, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i32, i32* %8, align 4
  %193 = load i32*, i32** %10, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32*, i32** %11, align 8
  store i32 %194, i32* %195, align 4
  store i32 0, i32* %6, align 4
  br label %221

196:                                              ; preds = %188
  %197 = load i32, i32* %18, align 4
  %198 = load i32*, i32** %10, align 8
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %18, align 4
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %18, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load i32*, i32** %9, align 8
  %209 = call i8* @parse_search_extra_common(i8* %204, i32 %207, i8 signext 0, i32* %208, i32* %12)
  %210 = load i8*, i8** %7, align 8
  %211 = ptrtoint i8* %209 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = trunc i64 %213 to i32
  %215 = load i32*, i32** %11, align 8
  store i32 %214, i32* %215, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %219

218:                                              ; preds = %196
  store i32 0, i32* %12, align 4
  br label %219

219:                                              ; preds = %218, %196
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %219, %191, %168, %166, %139, %117, %92, %60
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i8* @parse_search_extra_common(i8*, i32, i8 signext, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
