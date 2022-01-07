; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_..commonutf8_utils.h_get_char_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_..commonutf8_utils.h_get_char_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @get_char_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_char_utf8(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %225

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  store i32 -1, i32* %30, align 4
  store i32 -1, i32* %3, align 4
  br label %225

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 192
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = load i32*, i32** %4, align 8
  store i32 -1, i32* %40, align 4
  store i32 -1, i32* %3, align 4
  br label %225

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 30
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  store i32 -1, i32* %50, align 4
  store i32 -1, i32* %3, align 4
  br label %225

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 31
  %54 = shl i32 %53, 6
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 63
  %57 = or i32 %54, %56
  %58 = load i32*, i32** %4, align 8
  store i32 %57, i32* %58, align 4
  store i32 2, i32* %3, align 4
  br label %225

59:                                               ; preds = %41
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 192
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = load i32*, i32** %4, align 8
  store i32 -1, i32* %68, align 4
  store i32 -1, i32* %3, align 4
  br label %225

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, 15
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 32
  %78 = or i32 %75, %77
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = load i32*, i32** %4, align 8
  store i32 -1, i32* %81, align 4
  store i32 -1, i32* %3, align 4
  br label %225

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 15
  %85 = shl i32 %84, 12
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 63
  %88 = shl i32 %87, 6
  %89 = or i32 %85, %88
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 63
  %92 = or i32 %89, %91
  %93 = load i32*, i32** %4, align 8
  store i32 %92, i32* %93, align 4
  store i32 3, i32* %3, align 4
  br label %225

94:                                               ; preds = %69
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, 192
  %101 = icmp eq i32 %100, 128
  br i1 %101, label %104, label %102

102:                                              ; preds = %94
  %103 = load i32*, i32** %4, align 8
  store i32 -1, i32* %103, align 4
  store i32 -1, i32* %3, align 4
  br label %225

104:                                              ; preds = %94
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 7
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, 48
  %113 = or i32 %110, %112
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  %116 = load i32*, i32** %4, align 8
  store i32 -1, i32* %116, align 4
  store i32 -1, i32* %3, align 4
  br label %225

117:                                              ; preds = %108
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, 7
  %120 = shl i32 %119, 18
  %121 = load i32, i32* %7, align 4
  %122 = and i32 %121, 63
  %123 = shl i32 %122, 12
  %124 = or i32 %120, %123
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, 63
  %127 = shl i32 %126, 6
  %128 = or i32 %124, %127
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, 63
  %131 = or i32 %128, %130
  %132 = load i32*, i32** %4, align 8
  store i32 %131, i32* %132, align 4
  store i32 4, i32* %3, align 4
  br label %225

133:                                              ; preds = %104
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 4
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = and i32 %138, 192
  %140 = icmp eq i32 %139, 128
  br i1 %140, label %143, label %141

141:                                              ; preds = %133
  %142 = load i32*, i32** %4, align 8
  store i32 -1, i32* %142, align 4
  store i32 -1, i32* %3, align 4
  br label %225

143:                                              ; preds = %133
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %143
  %148 = load i32, i32* %6, align 4
  %149 = and i32 %148, 3
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, 56
  %152 = or i32 %149, %151
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %147
  %155 = load i32*, i32** %4, align 8
  store i32 -1, i32* %155, align 4
  store i32 -1, i32* %3, align 4
  br label %225

156:                                              ; preds = %147
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, 3
  %159 = shl i32 %158, 24
  %160 = load i32, i32* %7, align 4
  %161 = and i32 %160, 63
  %162 = shl i32 %161, 18
  %163 = or i32 %159, %162
  %164 = load i32, i32* %8, align 4
  %165 = and i32 %164, 63
  %166 = shl i32 %165, 12
  %167 = or i32 %163, %166
  %168 = load i32, i32* %9, align 4
  %169 = and i32 %168, 63
  %170 = shl i32 %169, 6
  %171 = or i32 %167, %170
  %172 = load i32, i32* %10, align 4
  %173 = and i32 %172, 63
  %174 = or i32 %171, %173
  %175 = load i32*, i32** %4, align 8
  store i32 %174, i32* %175, align 4
  store i32 5, i32* %3, align 4
  br label %225

176:                                              ; preds = %143
  %177 = load i8*, i8** %5, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 5
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = and i32 %181, 192
  %183 = icmp eq i32 %182, 128
  br i1 %183, label %186, label %184

184:                                              ; preds = %176
  %185 = load i32*, i32** %4, align 8
  store i32 -1, i32* %185, align 4
  store i32 -1, i32* %3, align 4
  br label %225

186:                                              ; preds = %176
  %187 = load i32, i32* %6, align 4
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %223

190:                                              ; preds = %186
  %191 = load i32, i32* %6, align 4
  %192 = and i32 %191, 1
  %193 = load i32, i32* %7, align 4
  %194 = and i32 %193, 60
  %195 = or i32 %192, %194
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %190
  %198 = load i32*, i32** %4, align 8
  store i32 -1, i32* %198, align 4
  store i32 -1, i32* %3, align 4
  br label %225

199:                                              ; preds = %190
  %200 = load i32, i32* %6, align 4
  %201 = and i32 %200, 1
  %202 = shl i32 %201, 30
  %203 = load i32, i32* %7, align 4
  %204 = and i32 %203, 63
  %205 = shl i32 %204, 24
  %206 = or i32 %202, %205
  %207 = load i32, i32* %8, align 4
  %208 = and i32 %207, 63
  %209 = shl i32 %208, 18
  %210 = or i32 %206, %209
  %211 = load i32, i32* %9, align 4
  %212 = and i32 %211, 63
  %213 = shl i32 %212, 12
  %214 = or i32 %210, %213
  %215 = load i32, i32* %10, align 4
  %216 = and i32 %215, 63
  %217 = shl i32 %216, 6
  %218 = or i32 %214, %217
  %219 = load i32, i32* %11, align 4
  %220 = and i32 %219, 63
  %221 = or i32 %218, %220
  %222 = load i32*, i32** %4, align 8
  store i32 %221, i32* %222, align 4
  store i32 6, i32* %3, align 4
  br label %225

223:                                              ; preds = %186
  %224 = load i32*, i32** %4, align 8
  store i32 -1, i32* %224, align 4
  store i32 -1, i32* %3, align 4
  br label %225

225:                                              ; preds = %223, %199, %197, %184, %156, %154, %141, %117, %115, %102, %82, %80, %67, %51, %49, %39, %29, %19
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
