; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c_golomb_encode_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c_golomb_encode_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEN_BITS = common dso_local global i32 0, align 4

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
  %17 = load i32, i32* @LEN_BITS, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @LEN_BITS, align 4
  %19 = add nsw i32 %18, 1
  %20 = shl i32 1, %19
  store i32 %20, i32* %10, align 4
  store i32 128, i32* %11, align 4
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %46, %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %12, align 8
  store i8 0, i8* %32, align 1
  store i32 128, i32* %11, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %34, %35
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %43, %40
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i32, i32* %11, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  br label %24

51:                                               ; preds = %24
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @compute_golomb_parameter(i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  store i32 31, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %61, %51
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %9, align 4
  br label %57

67:                                               ; preds = %57
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %71, %72
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %165, %67
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %166

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %81, %83
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %15, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %15, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %5, align 8
  br label %90

90:                                               ; preds = %109, %78
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %12, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %12, align 8
  store i8 -128, i8* %99, align 1
  store i32 64, i32* %11, align 4
  br label %109

100:                                              ; preds = %94
  %101 = load i32, i32* %11, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 %104, %101
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %102, align 1
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %100, %97
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %16, align 4
  br label %90

113:                                              ; preds = %90
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i8*, i8** %12, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %12, align 8
  store i8 0, i8* %118, align 1
  store i32 64, i32* %11, align 4
  br label %122

119:                                              ; preds = %113
  %120 = load i32, i32* %11, align 4
  %121 = ashr i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i32, i32* %16, align 4
  %128 = mul nsw i32 4, %127
  %129 = add nsw i32 %128, 2
  %130 = load i32, i32* %9, align 4
  %131 = shl i32 %129, %130
  store i32 %131, i32* %16, align 4
  br label %140

132:                                              ; preds = %122
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %133, %134
  %136 = mul nsw i32 2, %135
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %9, align 4
  %139 = shl i32 %137, %138
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %132, %126
  br label %141

141:                                              ; preds = %160, %140
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, -2147483648
  br i1 %143, label %144, label %165

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %12, align 8
  store i8 0, i8* %149, align 1
  store i32 128, i32* %11, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %16, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  %155 = load i8*, i8** %12, align 8
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add nsw i32 %157, %154
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %155, align 1
  br label %160

160:                                              ; preds = %153, %150
  %161 = load i32, i32* %16, align 4
  %162 = shl i32 %161, 1
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %11, align 4
  %164 = ashr i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %141

165:                                              ; preds = %141
  br label %75

166:                                              ; preds = %75
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 128
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i8*, i8** %12, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %12, align 8
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i8*, i8** %12, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %15, align 4
  %179 = load i8*, i8** %8, align 8
  %180 = ptrtoint i8* %179 to i32
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = sub i64 0, %185
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = call i32 @_golomb_decode_list(i32 %180, i32 %181, i32 %182, i32* %187)
  %189 = load i32, i32* %15, align 4
  ret i32 %189
}

declare dso_local i32 @compute_golomb_parameter(i32, i32) #1

declare dso_local i32 @_golomb_decode_list(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
