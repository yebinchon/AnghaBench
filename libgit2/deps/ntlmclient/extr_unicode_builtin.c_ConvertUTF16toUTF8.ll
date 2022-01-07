; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_builtin.c_ConvertUTF16toUTF8.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_unicode_builtin.c_ConvertUTF16toUTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conversionOK = common dso_local global i32 0, align 4
@UNI_SUR_HIGH_START = common dso_local global i64 0, align 8
@UNI_SUR_HIGH_END = common dso_local global i64 0, align 8
@UNI_SUR_LOW_START = common dso_local global i64 0, align 8
@UNI_SUR_LOW_END = common dso_local global i64 0, align 8
@halfShift = common dso_local global i64 0, align 8
@halfBase = common dso_local global i64 0, align 8
@strictConversion = common dso_local global i64 0, align 8
@sourceIllegal = common dso_local global i32 0, align 4
@sourceExhausted = common dso_local global i32 0, align 4
@UNI_REPLACEMENT_CHAR = common dso_local global i64 0, align 8
@targetExhausted = common dso_local global i32 0, align 4
@firstByteMark = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i64*, i32**, i32*, i64)* @ConvertUTF16toUTF8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertUTF16toUTF8(i64** %0, i64* %1, i32** %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load i32, i32* @conversionOK, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i64**, i64*** %6, align 8
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %12, align 8
  %23 = load i32**, i32*** %8, align 8
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %13, align 8
  br label %25

25:                                               ; preds = %182, %5
  %26 = load i64*, i64** %12, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = icmp ult i64* %26, %27
  br i1 %28, label %29, label %188

29:                                               ; preds = %25
  store i16 0, i16* %15, align 2
  store i64 191, i64* %16, align 8
  store i64 128, i64* %17, align 8
  %30 = load i64*, i64** %12, align 8
  store i64* %30, i64** %18, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %12, align 8
  %33 = load i64, i64* %31, align 8
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @UNI_SUR_HIGH_START, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %29
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @UNI_SUR_HIGH_END, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %37
  %42 = load i64*, i64** %12, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = icmp ult i64* %42, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %41
  %46 = load i64*, i64** %12, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %19, align 8
  %48 = load i64, i64* %19, align 8
  %49 = load i64, i64* @UNI_SUR_LOW_START, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load i64, i64* %19, align 8
  %53 = load i64, i64* @UNI_SUR_LOW_END, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @UNI_SUR_HIGH_START, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* @halfShift, align 8
  %60 = shl i64 %58, %59
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* @UNI_SUR_LOW_START, align 8
  %63 = sub nsw i64 %61, %62
  %64 = add nsw i64 %60, %63
  %65 = load i64, i64* @halfBase, align 8
  %66 = add nsw i64 %64, %65
  store i64 %66, i64* %14, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %12, align 8
  br label %78

69:                                               ; preds = %51, %45
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @strictConversion, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64*, i64** %12, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 -1
  store i64* %75, i64** %12, align 8
  %76 = load i32, i32* @sourceIllegal, align 4
  store i32 %76, i32* %11, align 4
  br label %188

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %55
  br label %83

79:                                               ; preds = %41
  %80 = load i64*, i64** %12, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 -1
  store i64* %81, i64** %12, align 8
  %82 = load i32, i32* @sourceExhausted, align 4
  store i32 %82, i32* %11, align 4
  br label %188

83:                                               ; preds = %78
  br label %102

84:                                               ; preds = %37, %29
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @strictConversion, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* @UNI_SUR_LOW_START, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* @UNI_SUR_LOW_END, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i64*, i64** %12, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 -1
  store i64* %98, i64** %12, align 8
  %99 = load i32, i32* @sourceIllegal, align 4
  store i32 %99, i32* %11, align 4
  br label %188

100:                                              ; preds = %92, %88
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %101, %83
  %103 = load i64, i64* %14, align 8
  %104 = icmp slt i64 %103, 128
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i16 1, i16* %15, align 2
  br label %123

106:                                              ; preds = %102
  %107 = load i64, i64* %14, align 8
  %108 = icmp slt i64 %107, 2048
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i16 2, i16* %15, align 2
  br label %122

110:                                              ; preds = %106
  %111 = load i64, i64* %14, align 8
  %112 = icmp slt i64 %111, 65536
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i16 3, i16* %15, align 2
  br label %121

114:                                              ; preds = %110
  %115 = load i64, i64* %14, align 8
  %116 = icmp slt i64 %115, 1114112
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i16 4, i16* %15, align 2
  br label %120

118:                                              ; preds = %114
  store i16 3, i16* %15, align 2
  %119 = load i64, i64* @UNI_REPLACEMENT_CHAR, align 8
  store i64 %119, i64* %14, align 8
  br label %120

120:                                              ; preds = %118, %117
  br label %121

121:                                              ; preds = %120, %113
  br label %122

122:                                              ; preds = %121, %109
  br label %123

123:                                              ; preds = %122, %105
  %124 = load i16, i16* %15, align 2
  %125 = zext i16 %124 to i32
  %126 = load i32*, i32** %13, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %13, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = icmp ugt i32* %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load i64*, i64** %18, align 8
  store i64* %133, i64** %12, align 8
  %134 = load i16, i16* %15, align 2
  %135 = zext i16 %134 to i32
  %136 = load i32*, i32** %13, align 8
  %137 = sext i32 %135 to i64
  %138 = sub i64 0, %137
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32* %139, i32** %13, align 8
  %140 = load i32, i32* @targetExhausted, align 4
  store i32 %140, i32* %11, align 4
  br label %188

141:                                              ; preds = %123
  %142 = load i16, i16* %15, align 2
  %143 = zext i16 %142 to i32
  switch i32 %143, label %182 [
    i32 4, label %144
    i32 3, label %153
    i32 2, label %162
    i32 1, label %171
  ]

144:                                              ; preds = %141
  %145 = load i64, i64* %14, align 8
  %146 = or i64 %145, 128
  %147 = and i64 %146, 191
  %148 = trunc i64 %147 to i32
  %149 = load i32*, i32** %13, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 -1
  store i32* %150, i32** %13, align 8
  store i32 %148, i32* %150, align 4
  %151 = load i64, i64* %14, align 8
  %152 = ashr i64 %151, 6
  store i64 %152, i64* %14, align 8
  br label %153

153:                                              ; preds = %141, %144
  %154 = load i64, i64* %14, align 8
  %155 = or i64 %154, 128
  %156 = and i64 %155, 191
  %157 = trunc i64 %156 to i32
  %158 = load i32*, i32** %13, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 -1
  store i32* %159, i32** %13, align 8
  store i32 %157, i32* %159, align 4
  %160 = load i64, i64* %14, align 8
  %161 = ashr i64 %160, 6
  store i64 %161, i64* %14, align 8
  br label %162

162:                                              ; preds = %141, %153
  %163 = load i64, i64* %14, align 8
  %164 = or i64 %163, 128
  %165 = and i64 %164, 191
  %166 = trunc i64 %165 to i32
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 -1
  store i32* %168, i32** %13, align 8
  store i32 %166, i32* %168, align 4
  %169 = load i64, i64* %14, align 8
  %170 = ashr i64 %169, 6
  store i64 %170, i64* %14, align 8
  br label %171

171:                                              ; preds = %141, %162
  %172 = load i64, i64* %14, align 8
  %173 = load i64*, i64** @firstByteMark, align 8
  %174 = load i16, i16* %15, align 2
  %175 = zext i16 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = or i64 %172, %177
  %179 = trunc i64 %178 to i32
  %180 = load i32*, i32** %13, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 -1
  store i32* %181, i32** %13, align 8
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %171, %141
  %183 = load i16, i16* %15, align 2
  %184 = zext i16 %183 to i32
  %185 = load i32*, i32** %13, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %13, align 8
  br label %25

188:                                              ; preds = %132, %96, %79, %73, %25
  %189 = load i64*, i64** %12, align 8
  %190 = load i64**, i64*** %6, align 8
  store i64* %189, i64** %190, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i32**, i32*** %8, align 8
  store i32* %191, i32** %192, align 8
  %193 = load i32, i32* %11, align 4
  ret i32 %193
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
