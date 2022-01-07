; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8ncasecmp.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_utf8.h_utf8ncasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8ncasecmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %20

20:                                               ; preds = %173, %3
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %13, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 0, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %177

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 1, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 224, %32
  %34 = icmp eq i32 192, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %13, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 224, %38
  %40 = icmp eq i32 192, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35, %29
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 224, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %14, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 224, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %177

56:                                               ; preds = %41
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %177

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %177

62:                                               ; preds = %35, %26
  %63 = load i64, i64* %7, align 8
  %64 = icmp uge i64 2, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 240, %68
  %70 = icmp eq i32 224, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i8*, i8** %13, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 240, %74
  %76 = icmp eq i32 224, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %71, %65
  %78 = load i8*, i8** %12, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 240, %80
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %16, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 240, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %17, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %17, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %177

92:                                               ; preds = %77
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %17, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* %4, align 4
  br label %177

97:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %177

98:                                               ; preds = %71, %62
  %99 = load i64, i64* %7, align 8
  %100 = icmp uge i64 3, %99
  br i1 %100, label %101, label %134

101:                                              ; preds = %98
  %102 = load i8*, i8** %12, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 248, %104
  %106 = icmp eq i32 240, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load i8*, i8** %13, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 248, %110
  %112 = icmp eq i32 240, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %107, %101
  %114 = load i8*, i8** %12, align 8
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 248, %116
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %18, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 248, %121
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %19, align 8
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* %19, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  store i32 -1, i32* %4, align 4
  br label %177

128:                                              ; preds = %113
  %129 = load i64, i64* %18, align 8
  %130 = load i64, i64* %19, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 1, i32* %4, align 4
  br label %177

133:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %177

134:                                              ; preds = %107, %98
  %135 = load i8*, i8** %5, align 8
  %136 = call i8* @utf8codepoint(i8* %135, i64* %8)
  store i8* %136, i8** %5, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = call i8* @utf8codepoint(i8* %137, i64* %9)
  store i8* %138, i8** %6, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i64 @utf8codepointsize(i64 %139)
  %141 = load i64, i64* %7, align 8
  %142 = sub i64 %141, %140
  store i64 %142, i64* %7, align 8
  %143 = load i64, i64* %8, align 8
  store i64 %143, i64* %10, align 8
  %144 = load i64, i64* %9, align 8
  store i64 %144, i64* %11, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i64 @utf8lwrcodepoint(i64 %145)
  store i64 %146, i64* %8, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i64 @utf8lwrcodepoint(i64 %147)
  store i64 %148, i64* %9, align 8
  %149 = load i64, i64* %10, align 8
  %150 = icmp eq i64 0, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %134
  %152 = load i64, i64* %11, align 8
  %153 = icmp eq i64 0, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %177

155:                                              ; preds = %151, %134
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %173

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* %11, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 -1, i32* %4, align 4
  br label %177

166:                                              ; preds = %161
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %11, align 8
  %169 = icmp sgt i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i32 1, i32* %4, align 4
  br label %177

171:                                              ; preds = %166
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172, %159
  %174 = load i64, i64* %7, align 8
  %175 = icmp ult i64 0, %174
  br i1 %175, label %20, label %176

176:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %176, %170, %165, %154, %133, %132, %127, %97, %96, %91, %61, %60, %55, %25
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i8* @utf8codepoint(i8*, i64*) #1

declare dso_local i64 @utf8codepointsize(i64) #1

declare dso_local i64 @utf8lwrcodepoint(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
