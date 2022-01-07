; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_iconv.c_unicode_iconv_encoding_convert.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_iconv.c_unicode_iconv_encoding_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@unicode_iconv_utf8_to_16 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@errno = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@NTLM_UNICODE_MAX_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"unicode conversion too large\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"invalid unicode string; trailing data remains\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, %struct.TYPE_4__*, i8*, i64, i64)* @unicode_iconv_encoding_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicode_iconv_encoding_convert(i8** %0, i64* %1, %struct.TYPE_4__* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %23, align 8
  %25 = load i8**, i8*** %8, align 8
  store i8* null, i8** %25, align 8
  %26 = load i64*, i64** %9, align 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = call i32 @unicode_iconv_init(%struct.TYPE_4__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %157

31:                                               ; preds = %6
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @unicode_iconv_utf8_to_16, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %24, align 4
  %39 = load i64, i64* %12, align 8
  %40 = mul i64 %39, 2
  %41 = add i64 %40, 2
  store i64 %41, i64* %20, align 8
  store i64 2, i64* %21, align 8
  br label %49

42:                                               ; preds = %31
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %24, align 4
  %46 = load i64, i64* %12, align 8
  %47 = udiv i64 %46, 2
  %48 = add i64 %47, 1
  store i64 %48, i64* %20, align 8
  store i64 1, i64* %21, align 8
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i64, i64* %20, align 8
  %51 = add i64 %50, 7
  %52 = and i64 %51, -8
  store i64 %52, i64* %20, align 8
  %53 = load i64, i64* %20, align 8
  %54 = call i8* @malloc(i64 %53)
  store i8* %54, i8** %16, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntlm_client_set_errmsg(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %157

61:                                               ; preds = %49
  %62 = load i8*, i8** %11, align 8
  store i8* %62, i8** %14, align 8
  %63 = load i64, i64* %12, align 8
  store i64 %63, i64* %18, align 8
  br label %64

64:                                               ; preds = %61, %123
  %65 = load i8*, i8** %16, align 8
  %66 = load i64, i64* %23, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %15, align 8
  %68 = load i64, i64* %20, align 8
  %69 = load i64, i64* %21, align 8
  %70 = sub i64 %68, %69
  %71 = load i64, i64* %23, align 8
  %72 = sub i64 %70, %71
  store i64 %72, i64* %19, align 8
  %73 = load i32, i32* %24, align 4
  %74 = call i64 @iconv(i32 %73, i8** %14, i64* %18, i8** %15, i64* %19)
  store i64 %74, i64* %22, align 8
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* %21, align 8
  %77 = sub i64 %75, %76
  %78 = load i64, i64* %19, align 8
  %79 = sub i64 %77, %78
  store i64 %79, i64* %23, align 8
  %80 = load i64, i64* %22, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %64
  br label %125

83:                                               ; preds = %64
  %84 = load i64, i64* %22, align 8
  %85 = icmp eq i64 %84, -1
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @E2BIG, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @errno, align 8
  %95 = call i8* @strerror(i64 %94)
  %96 = call i32 @ntlm_client_set_errmsg(i32 %93, i8* %95)
  br label %154

97:                                               ; preds = %86, %83
  %98 = load i64, i64* %20, align 8
  %99 = shl i64 %98, 1
  %100 = load i64, i64* %20, align 8
  %101 = lshr i64 %100, 1
  %102 = sub i64 %99, %101
  %103 = add i64 %102, 7
  %104 = and i64 %103, -8
  store i64 %104, i64* %20, align 8
  %105 = load i64, i64* %20, align 8
  %106 = load i64, i64* @NTLM_UNICODE_MAX_LEN, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ntlm_client_set_errmsg(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %154

113:                                              ; preds = %97
  %114 = load i8*, i8** %16, align 8
  %115 = load i64, i64* %20, align 8
  %116 = call i8* @realloc(i8* %114, i64 %115)
  store i8* %116, i8** %17, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ntlm_client_set_errmsg(i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %154

123:                                              ; preds = %113
  %124 = load i8*, i8** %17, align 8
  store i8* %124, i8** %16, align 8
  br label %64

125:                                              ; preds = %82
  %126 = load i64, i64* %18, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ntlm_client_set_errmsg(i32 %131, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %154

133:                                              ; preds = %125
  %134 = load i8*, i8** %16, align 8
  %135 = load i64, i64* %23, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* @unicode_iconv_utf8_to_16, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load i8*, i8** %16, align 8
  %142 = load i64, i64* %23, align 8
  %143 = add i64 %142, 1
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8 0, i8* %144, align 1
  br label %145

145:                                              ; preds = %140, %133
  %146 = load i8*, i8** %16, align 8
  %147 = load i8**, i8*** %8, align 8
  store i8* %146, i8** %147, align 8
  %148 = load i64*, i64** %9, align 8
  %149 = icmp ne i64* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i64, i64* %23, align 8
  %152 = load i64*, i64** %9, align 8
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %150, %145
  store i32 1, i32* %7, align 4
  br label %157

154:                                              ; preds = %128, %118, %108, %90
  %155 = load i8*, i8** %16, align 8
  %156 = call i32 @free(i8* %155)
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %154, %153, %56, %30
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @unicode_iconv_init(%struct.TYPE_4__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ntlm_client_set_errmsg(i32, i8*) #1

declare dso_local i64 @iconv(i32, i8**, i64*, i8**, i64*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
