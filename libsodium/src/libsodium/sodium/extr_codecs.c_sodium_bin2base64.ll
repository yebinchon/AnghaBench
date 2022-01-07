; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_codecs.c_sodium_bin2base64.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_codecs.c_sodium_bin2base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARIANT_NO_PADDING_MASK = common dso_local global i32 0, align 4
@VARIANT_URLSAFE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sodium_bin2base64(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @sodium_base64_check_variant(i32 %18)
  %20 = load i64, i64* %9, align 8
  %21 = udiv i64 %20, 3
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %15, align 8
  %24 = mul i64 3, %23
  %25 = sub i64 %22, %24
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %15, align 8
  %27 = mul i64 %26, 4
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %16, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %5
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @VARIANT_NO_PADDING_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 4
  store i64 %37, i64* %12, align 8
  br label %44

38:                                               ; preds = %30
  %39 = load i64, i64* %16, align 8
  %40 = lshr i64 %39, 1
  %41 = add i64 2, %40
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %12, align 8
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44, %5
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (...) @sodium_misuse()
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @VARIANT_URLSAFE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %108

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %90, %56
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = load i32, i32* %17, align 4
  %63 = shl i32 %62, 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %14, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add i32 %63, %69
  store i32 %70, i32* %17, align 4
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, 8
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %76, %61
  %74 = load i64, i64* %11, align 8
  %75 = icmp uge i64 %74, 6
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i64, i64* %11, align 8
  %78 = sub i64 %77, 6
  store i64 %78, i64* %11, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i64, i64* %11, align 8
  %81 = trunc i64 %80 to i32
  %82 = lshr i32 %79, %81
  %83 = and i32 %82, 63
  %84 = call i64 @b64_byte_to_urlsafe_char(i32 %83)
  %85 = trunc i64 %84 to i8
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %13, align 8
  %89 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 %85, i8* %89, align 1
  br label %73

90:                                               ; preds = %73
  br label %57

91:                                               ; preds = %57
  %92 = load i64, i64* %11, align 8
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i32, i32* %17, align 4
  %96 = load i64, i64* %11, align 8
  %97 = sub i64 6, %96
  %98 = trunc i64 %97 to i32
  %99 = shl i32 %95, %98
  %100 = and i32 %99, 63
  %101 = call i64 @b64_byte_to_urlsafe_char(i32 %100)
  %102 = trunc i64 %101 to i8
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %13, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %13, align 8
  %106 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8 %102, i8* %106, align 1
  br label %107

107:                                              ; preds = %94, %91
  br label %160

108:                                              ; preds = %51
  br label %109

109:                                              ; preds = %142, %108
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %109
  %114 = load i32, i32* %17, align 4
  %115 = shl i32 %114, 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i64, i64* %14, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %14, align 8
  %119 = getelementptr inbounds i8, i8* %116, i64 %117
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add i32 %115, %121
  store i32 %122, i32* %17, align 4
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, 8
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %128, %113
  %126 = load i64, i64* %11, align 8
  %127 = icmp uge i64 %126, 6
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load i64, i64* %11, align 8
  %130 = sub i64 %129, 6
  store i64 %130, i64* %11, align 8
  %131 = load i32, i32* %17, align 4
  %132 = load i64, i64* %11, align 8
  %133 = trunc i64 %132 to i32
  %134 = lshr i32 %131, %133
  %135 = and i32 %134, 63
  %136 = call i64 @b64_byte_to_char(i32 %135)
  %137 = trunc i64 %136 to i8
  %138 = load i8*, i8** %6, align 8
  %139 = load i64, i64* %13, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %13, align 8
  %141 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 %137, i8* %141, align 1
  br label %125

142:                                              ; preds = %125
  br label %109

143:                                              ; preds = %109
  %144 = load i64, i64* %11, align 8
  %145 = icmp ugt i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32, i32* %17, align 4
  %148 = load i64, i64* %11, align 8
  %149 = sub i64 6, %148
  %150 = trunc i64 %149 to i32
  %151 = shl i32 %147, %150
  %152 = and i32 %151, 63
  %153 = call i64 @b64_byte_to_char(i32 %152)
  %154 = trunc i64 %153 to i8
  %155 = load i8*, i8** %6, align 8
  %156 = load i64, i64* %13, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %13, align 8
  %158 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8 %154, i8* %158, align 1
  br label %159

159:                                              ; preds = %146, %143
  br label %160

160:                                              ; preds = %159, %107
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %12, align 8
  %163 = icmp ule i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  br label %166

166:                                              ; preds = %170, %160
  %167 = load i64, i64* %13, align 8
  %168 = load i64, i64* %12, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i8*, i8** %6, align 8
  %172 = load i64, i64* %13, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %13, align 8
  %174 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8 61, i8* %174, align 1
  br label %166

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %181, %175
  %177 = load i8*, i8** %6, align 8
  %178 = load i64, i64* %13, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %13, align 8
  %180 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8 0, i8* %180, align 1
  br label %181

181:                                              ; preds = %176
  %182 = load i64, i64* %13, align 8
  %183 = load i64, i64* %7, align 8
  %184 = icmp ult i64 %182, %183
  br i1 %184, label %176, label %185

185:                                              ; preds = %181
  %186 = load i8*, i8** %6, align 8
  ret i8* %186
}

declare dso_local i32 @sodium_base64_check_variant(i32) #1

declare dso_local i32 @sodium_misuse(...) #1

declare dso_local i64 @b64_byte_to_urlsafe_char(i32) #1

declare dso_local i64 @b64_byte_to_char(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
