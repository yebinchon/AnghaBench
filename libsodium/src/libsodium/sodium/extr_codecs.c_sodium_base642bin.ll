; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_codecs.c_sodium_base642bin.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_codecs.c_sodium_base642bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARIANT_URLSAFE_MASK = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@VARIANT_NO_PADDING_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_base642bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @sodium_base64_check_variant(i32 %25)
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @VARIANT_URLSAFE_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %20, align 4
  br label %30

30:                                               ; preds = %90, %58, %8
  %31 = load i64, i64* %18, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %93

34:                                               ; preds = %30
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %18, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %24, align 1
  %39 = load i32, i32* %20, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8, i8* %24, align 1
  %43 = call i32 @b64_urlsafe_char_to_byte(i8 signext %42)
  store i32 %43, i32* %23, align 4
  br label %47

44:                                               ; preds = %34
  %45 = load i8, i8* %24, align 1
  %46 = call i32 @b64_char_to_byte(i8 signext %45)
  store i32 %46, i32* %23, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %23, align 4
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i8*, i8** %13, align 8
  %55 = load i8, i8* %24, align 1
  %56 = call i32* @strchr(i8* %54, i8 signext %55)
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, i64* %18, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %18, align 8
  br label %30

61:                                               ; preds = %53, %50
  br label %93

62:                                               ; preds = %47
  %63 = load i32, i32* %22, align 4
  %64 = shl i32 %63, 6
  %65 = load i32, i32* %23, align 4
  %66 = add i32 %64, %65
  store i32 %66, i32* %22, align 4
  %67 = load i64, i64* %17, align 8
  %68 = add i64 %67, 6
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = icmp uge i64 %69, 8
  br i1 %70, label %71, label %90

71:                                               ; preds = %62
  %72 = load i64, i64* %17, align 8
  %73 = sub i64 %72, 8
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp uge i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @ERANGE, align 4
  store i32 %78, i32* @errno, align 4
  store i32 -1, i32* %21, align 4
  br label %93

79:                                               ; preds = %71
  %80 = load i32, i32* %22, align 4
  %81 = load i64, i64* %17, align 8
  %82 = trunc i64 %81 to i32
  %83 = lshr i32 %80, %82
  %84 = and i32 %83, 255
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %9, align 8
  %87 = load i64, i64* %19, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %19, align 8
  %89 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 %85, i8* %89, align 1
  br label %90

90:                                               ; preds = %79, %62
  %91 = load i64, i64* %18, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %18, align 8
  br label %30

93:                                               ; preds = %77, %61, %30
  %94 = load i64, i64* %17, align 8
  %95 = icmp ugt i64 %94, 4
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %22, align 4
  %98 = load i64, i64* %17, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 1, %99
  %101 = sub i32 %100, 1
  %102 = and i32 %97, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96, %93
  store i32 -1, i32* %21, align 4
  br label %121

105:                                              ; preds = %96
  %106 = load i32, i32* %21, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @VARIANT_NO_PADDING_MASK, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i8*, i8** %11, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = load i64, i64* %17, align 8
  %118 = udiv i64 %117, 2
  %119 = call i32 @_sodium_base642bin_skip_padding(i8* %114, i64 %115, i64* %18, i8* %116, i64 %118)
  store i32 %119, i32* %21, align 4
  br label %120

120:                                              ; preds = %113, %108, %105
  br label %121

121:                                              ; preds = %120, %104
  %122 = load i32, i32* %21, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i64 0, i64* %19, align 8
  br label %148

125:                                              ; preds = %121
  %126 = load i8*, i8** %13, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %147

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %143, %128
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i8*, i8** %13, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = load i64, i64* %18, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = call i32* @strchr(i8* %134, i8 signext %138)
  %140 = icmp ne i32* %139, null
  br label %141

141:                                              ; preds = %133, %129
  %142 = phi i1 [ false, %129 ], [ %140, %133 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i64, i64* %18, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %18, align 8
  br label %129

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %125
  br label %148

148:                                              ; preds = %147, %124
  %149 = load i8**, i8*** %15, align 8
  %150 = icmp ne i8** %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i8*, i8** %11, align 8
  %153 = load i64, i64* %18, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i8**, i8*** %15, align 8
  store i8* %154, i8** %155, align 8
  br label %163

156:                                              ; preds = %148
  %157 = load i64, i64* %18, align 8
  %158 = load i64, i64* %12, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @EINVAL, align 4
  store i32 %161, i32* @errno, align 4
  store i32 -1, i32* %21, align 4
  br label %162

162:                                              ; preds = %160, %156
  br label %163

163:                                              ; preds = %162, %151
  %164 = load i64*, i64** %14, align 8
  %165 = icmp ne i64* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i64, i64* %19, align 8
  %168 = load i64*, i64** %14, align 8
  store i64 %167, i64* %168, align 8
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %21, align 4
  ret i32 %170
}

declare dso_local i32 @sodium_base64_check_variant(i32) #1

declare dso_local i32 @b64_urlsafe_char_to_byte(i8 signext) #1

declare dso_local i32 @b64_char_to_byte(i8 signext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_sodium_base642bin_skip_padding(i8*, i64, i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
