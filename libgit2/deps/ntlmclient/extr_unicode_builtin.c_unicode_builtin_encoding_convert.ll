; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_builtin.c_unicode_builtin_encoding_convert.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_builtin.c_unicode_builtin_encoding_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@unicode_builtin_utf8_to_16 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@unicode_builtin_utf16_to_8 = common dso_local global i64 0, align 8
@strictConversion = common dso_local global i32 0, align 4
@lenientConversion = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"invalid unicode string; trailing data remains\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"unknown unicode conversion failure\00", align 1
@NTLM_UNICODE_MAX_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"unicode conversion too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, %struct.TYPE_3__*, i8*, i64, i64)* @unicode_builtin_encoding_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicode_builtin_encoding_convert(i8** %0, i64* %1, %struct.TYPE_3__* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %22, align 4
  %24 = load i8**, i8*** %8, align 8
  store i8* null, i8** %24, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** %11, align 8
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %15, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @unicode_builtin_utf8_to_16, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %6
  %34 = load i64, i64* %12, align 8
  %35 = mul i64 %34, 2
  %36 = add i64 %35, 2
  store i64 %36, i64* %20, align 8
  br label %41

37:                                               ; preds = %6
  %38 = load i64, i64* %12, align 8
  %39 = udiv i64 %38, 2
  %40 = add i64 %39, 1
  store i64 %40, i64* %20, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i64, i64* %20, align 8
  %43 = add i64 %42, 7
  %44 = and i64 %43, -8
  store i64 %44, i64* %20, align 8
  %45 = load i64, i64* %20, align 8
  %46 = call i8* @malloc(i64 %45)
  store i8* %46, i8** %16, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntlm_client_set_errmsg(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %182

53:                                               ; preds = %41
  %54 = load i8*, i8** %16, align 8
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i64, i64* %20, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %18, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @unicode_builtin_utf16_to_8, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i8*, i8** %18, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %63, i8** %18, align 8
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %132
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @unicode_builtin_utf8_to_16, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = bitcast i8** %14 to i32**
  %71 = load i8*, i8** %15, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = bitcast i8** %17 to i32**
  %74 = load i8*, i8** %18, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* @strictConversion, align 4
  %77 = call i32 @ConvertUTF8toUTF16(i32** %70, i32* %72, i32** %73, i32* %75, i32 %76)
  store i32 %77, i32* %23, align 4
  br label %87

78:                                               ; preds = %65
  %79 = bitcast i8** %14 to i32**
  %80 = load i8*, i8** %15, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = bitcast i8** %17 to i32**
  %83 = load i8*, i8** %18, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* @lenientConversion, align 4
  %86 = call i32 @ConvertUTF16toUTF8(i32** %79, i32* %81, i32** %82, i32* %84, i32 %85)
  store i32 %86, i32* %23, align 4
  br label %87

87:                                               ; preds = %78, %69
  %88 = load i32, i32* %23, align 4
  switch i32 %88, label %101 [
    i32 131, label %89
    i32 130, label %90
    i32 128, label %95
    i32 129, label %96
  ]

89:                                               ; preds = %87
  store i32 1, i32* %22, align 4
  br label %154

90:                                               ; preds = %87
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ntlm_client_set_errmsg(i32 %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %154

95:                                               ; preds = %87
  br label %106

96:                                               ; preds = %87
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ntlm_client_set_errmsg(i32 %99, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %154

101:                                              ; preds = %87
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ntlm_client_set_errmsg(i32 %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %154

106:                                              ; preds = %95
  %107 = load i64, i64* %20, align 8
  %108 = shl i64 %107, 1
  %109 = load i64, i64* %20, align 8
  %110 = lshr i64 %109, 1
  %111 = sub i64 %108, %110
  %112 = add i64 %111, 7
  %113 = and i64 %112, -8
  store i64 %113, i64* %20, align 8
  %114 = load i64, i64* %20, align 8
  %115 = load i64, i64* @NTLM_UNICODE_MAX_LEN, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ntlm_client_set_errmsg(i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %154

122:                                              ; preds = %106
  %123 = load i8*, i8** %16, align 8
  %124 = load i64, i64* %20, align 8
  %125 = call i8* @realloc(i8* %123, i64 %124)
  store i8* %125, i8** %19, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ntlm_client_set_errmsg(i32 %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %154

132:                                              ; preds = %122
  %133 = load i8*, i8** %17, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  store i64 %137, i64* %21, align 8
  %138 = load i8*, i8** %19, align 8
  store i8* %138, i8** %16, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = load i64, i64* %21, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %17, align 8
  %142 = load i8*, i8** %16, align 8
  %143 = load i64, i64* %20, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %18, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* @unicode_builtin_utf8_to_16, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 2, i32 1
  %150 = load i8*, i8** %18, align 8
  %151 = sext i32 %149 to i64
  %152 = sub i64 0, %151
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8* %153, i8** %18, align 8
  br label %65

154:                                              ; preds = %127, %117, %101, %96, %90, %89
  %155 = load i32, i32* %22, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i8*, i8** %16, align 8
  %159 = call i32 @free(i8* %158)
  store i32 0, i32* %7, align 4
  br label %182

160:                                              ; preds = %154
  %161 = load i8*, i8** %17, align 8
  %162 = load i8*, i8** %16, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  store i64 %165, i64* %21, align 8
  %166 = load i8*, i8** %16, align 8
  %167 = load i64, i64* %21, align 8
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8 0, i8* %168, align 1
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* @unicode_builtin_utf8_to_16, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %160
  %173 = load i8*, i8** %16, align 8
  %174 = load i64, i64* %21, align 8
  %175 = add i64 %174, 1
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 0, i8* %176, align 1
  br label %177

177:                                              ; preds = %172, %160
  %178 = load i8*, i8** %16, align 8
  %179 = load i8**, i8*** %8, align 8
  store i8* %178, i8** %179, align 8
  %180 = load i64, i64* %21, align 8
  %181 = load i64*, i64** %9, align 8
  store i64 %180, i64* %181, align 8
  store i32 1, i32* %7, align 4
  br label %182

182:                                              ; preds = %177, %157, %48
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ntlm_client_set_errmsg(i32, i8*) #1

declare dso_local i32 @ConvertUTF8toUTF16(i32**, i32*, i32**, i32*, i32) #1

declare dso_local i32 @ConvertUTF16toUTF8(i32**, i32*, i32**, i32*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
