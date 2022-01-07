; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_stemmer.c_stem_string_to_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_stemmer.c_stem_string_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stem_string_to_utf8(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %2, %199
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %200

24:                                               ; preds = %11
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  br label %199

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 64
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %200

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %4, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 192
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %200

63:                                               ; preds = %49
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 31
  %66 = shl i32 %65, 6
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 63
  %69 = or i32 %66, %68
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  br label %197

75:                                               ; preds = %45
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %75
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %4, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 192
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %93, label %87

87:                                               ; preds = %79
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %200

93:                                               ; preds = %79
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %4, align 8
  %96 = load i8, i8* %94, align 1
  %97 = zext i8 %96 to i32
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 192
  %100 = icmp eq i32 %99, 128
  br i1 %100, label %107, label %101

101:                                              ; preds = %93
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %200

107:                                              ; preds = %93
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 15
  %110 = shl i32 %109, 12
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, 63
  %113 = shl i32 %112, 6
  %114 = or i32 %110, %113
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %115, 63
  %117 = or i32 %114, %116
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  br label %196

123:                                              ; preds = %75
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %189

127:                                              ; preds = %123
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %4, align 8
  %130 = load i8, i8* %128, align 1
  %131 = zext i8 %130 to i32
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, 192
  %134 = icmp eq i32 %133, 128
  br i1 %134, label %141, label %135

135:                                              ; preds = %127
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 0, i32* %139, align 4
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %200

141:                                              ; preds = %127
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %4, align 8
  %144 = load i8, i8* %142, align 1
  %145 = zext i8 %144 to i32
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = and i32 %146, 192
  %148 = icmp eq i32 %147, 128
  br i1 %148, label %155, label %149

149:                                              ; preds = %141
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 0, i32* %153, align 4
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %3, align 4
  br label %200

155:                                              ; preds = %141
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %4, align 8
  %158 = load i8, i8* %156, align 1
  %159 = zext i8 %158 to i32
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = and i32 %160, 192
  %162 = icmp eq i32 %161, 128
  br i1 %162, label %169, label %163

163:                                              ; preds = %155
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 0, i32* %167, align 4
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %200

169:                                              ; preds = %155
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 7
  %172 = shl i32 %171, 18
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, 63
  %175 = shl i32 %174, 12
  %176 = or i32 %172, %175
  %177 = load i32, i32* %9, align 4
  %178 = and i32 %177, 63
  %179 = shl i32 %178, 6
  %180 = or i32 %176, %179
  %181 = load i32, i32* %10, align 4
  %182 = and i32 %181, 63
  %183 = or i32 %180, %182
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %183, i32* %188, align 4
  br label %195

189:                                              ; preds = %123
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 0, i32* %193, align 4
  %194 = load i32, i32* %6, align 4
  store i32 %194, i32* %3, align 4
  br label %200

195:                                              ; preds = %169
  br label %196

196:                                              ; preds = %195, %107
  br label %197

197:                                              ; preds = %196, %63
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198, %28
  br label %11

200:                                              ; preds = %189, %163, %149, %135, %101, %87, %57, %39, %18
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
