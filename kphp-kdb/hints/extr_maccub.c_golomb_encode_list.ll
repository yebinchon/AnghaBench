; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_golomb_encode_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_golomb_encode_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @golomb_encode_list(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %21

21:                                               ; preds = %25, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %21

31:                                               ; preds = %21
  store i32 128, i32* %11, align 4
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  store i8 0, i8* %33, align 1
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %58, %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %12, align 8
  store i8 0, i8* %44, align 1
  store i32 128, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %46, %47
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, %52
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i32, i32* %11, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @compute_golomb_parameter(i32 %64, i32 %65)
  store i32 %66, i32* %14, align 4
  store i32 31, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %71, %63
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  br label %67

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %179, %77
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %180

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %89, %91
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %15, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %5, align 8
  %98 = load i32, i32* %16, align 4
  %99 = icmp sgt i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %123, %86
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %12, align 8
  store i8 -128, i8* %113, align 1
  store i32 64, i32* %11, align 4
  br label %123

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, %115
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %116, align 1
  %121 = load i32, i32* %11, align 4
  %122 = ashr i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %114, %111
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %16, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %16, align 4
  br label %104

127:                                              ; preds = %104
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i8*, i8** %12, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %12, align 8
  store i8 0, i8* %132, align 1
  store i32 64, i32* %11, align 4
  br label %136

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = ashr i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i32, i32* %16, align 4
  %142 = mul nsw i32 4, %141
  %143 = add nsw i32 %142, 2
  %144 = load i32, i32* %9, align 4
  %145 = shl i32 %143, %144
  store i32 %145, i32* %16, align 4
  br label %154

146:                                              ; preds = %136
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %147, %148
  %150 = mul nsw i32 2, %149
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %9, align 4
  %153 = shl i32 %151, %152
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %146, %140
  br label %155

155:                                              ; preds = %174, %154
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, -2147483648
  br i1 %157, label %158, label %179

158:                                              ; preds = %155
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i8*, i8** %12, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %12, align 8
  store i8 0, i8* %163, align 1
  store i32 128, i32* %11, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %16, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = load i32, i32* %11, align 4
  %169 = load i8*, i8** %12, align 8
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = add nsw i32 %171, %168
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %169, align 1
  br label %174

174:                                              ; preds = %167, %164
  %175 = load i32, i32* %16, align 4
  %176 = shl i32 %175, 1
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %11, align 4
  %178 = ashr i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %155

179:                                              ; preds = %155
  br label %83

180:                                              ; preds = %83
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 128
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i8*, i8** %12, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %12, align 8
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i8*, i8** %12, align 8
  %188 = load i8*, i8** %8, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %15, align 4
  %193 = load i8*, i8** %8, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = sub i64 0, %199
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = getelementptr inbounds i32, i32* %201, i64 -1
  %203 = call i32 @golomb_decode_list(i32 %194, i32 %195, i32 %196, i32* %202)
  %204 = load i32, i32* %15, align 4
  ret i32 %204
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_golomb_parameter(i32, i32) #1

declare dso_local i32 @golomb_decode_list(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
