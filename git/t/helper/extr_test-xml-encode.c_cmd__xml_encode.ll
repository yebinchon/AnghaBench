; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-xml-encode.c_cmd__xml_encode.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-xml-encode.c_cmd__xml_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Could not read <stdin>\00", align 1
@utf8_replace_character = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&#x%02x;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__xml_encode(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %177, %64, %40, %2
  %13 = load i64, i64* %8, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %19 = call i64 @xread(i32 0, i8* %18, i32 1024)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  ret i32 0

23:                                               ; preds = %17
  %24 = load i64, i64* %9, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @die_errno(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %11, align 1
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 192
  %39 = icmp ne i32 %38, 128
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i8*, i8** @utf8_replace_character, align 8
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @fputs(i8* %41, i32 %42)
  store i8* null, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %8, align 8
  br label %12

46:                                               ; preds = %35
  %47 = load i8, i8* %11, align 1
  %48 = load i8*, i8** %7, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %10, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 @fwrite(i8* %55, i32 %61, i32 1, i32 %62)
  store i8* null, i8** %7, align 8
  br label %64

64:                                               ; preds = %54, %46
  br label %12

65:                                               ; preds = %29
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 128
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %140, label %70

70:                                               ; preds = %65
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 38
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %139

77:                                               ; preds = %70
  %78 = load i8, i8* %11, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 39
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @stdout, align 4
  %83 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %138

84:                                               ; preds = %77
  %85 = load i8, i8* %11, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 34
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @stdout, align 4
  %90 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %137

91:                                               ; preds = %84
  %92 = load i8, i8* %11, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 60
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @stdout, align 4
  %97 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %136

98:                                               ; preds = %91
  %99 = load i8, i8* %11, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 62
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @stdout, align 4
  %104 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  br label %135

105:                                              ; preds = %98
  %106 = load i8, i8* %11, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sge i32 %107, 32
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i8, i8* %11, align 1
  %111 = load i32, i32* @stdout, align 4
  %112 = call i32 @fputc(i8 zeroext %110, i32 %111)
  br label %134

113:                                              ; preds = %105
  %114 = load i8, i8* %11, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 9
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i8, i8* %11, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 10
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8, i8* %11, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 13
  br i1 %124, label %125, label %129

125:                                              ; preds = %121, %117, %113
  %126 = load i32, i32* @stdout, align 4
  %127 = load i8, i8* %11, align 1
  %128 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8 zeroext %127)
  br label %133

129:                                              ; preds = %121
  %130 = load i8*, i8** @utf8_replace_character, align 8
  %131 = load i32, i32* @stdout, align 4
  %132 = call i32 @fputs(i8* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %125
  br label %134

134:                                              ; preds = %133, %109
  br label %135

135:                                              ; preds = %134, %102
  br label %136

136:                                              ; preds = %135, %95
  br label %137

137:                                              ; preds = %136, %88
  br label %138

138:                                              ; preds = %137, %81
  br label %139

139:                                              ; preds = %138, %74
  br label %177

140:                                              ; preds = %65
  %141 = load i8, i8* %11, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 224
  %144 = icmp eq i32 %143, 192
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i8, i8* %11, align 1
  %147 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %146, i8* %147, align 1
  store i64 1, i64* %10, align 8
  %148 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  store i8* %149, i8** %7, align 8
  br label %176

150:                                              ; preds = %140
  %151 = load i8, i8* %11, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 240
  %154 = icmp eq i32 %153, 224
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i8, i8* %11, align 1
  %157 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %156, i8* %157, align 1
  store i64 2, i64* %10, align 8
  %158 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  store i8* %159, i8** %7, align 8
  br label %175

160:                                              ; preds = %150
  %161 = load i8, i8* %11, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, 248
  %164 = icmp eq i32 %163, 240
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load i8, i8* %11, align 1
  %167 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %166, i8* %167, align 1
  store i64 3, i64* %10, align 8
  %168 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  store i8* %169, i8** %7, align 8
  br label %174

170:                                              ; preds = %160
  %171 = load i8*, i8** @utf8_replace_character, align 8
  %172 = load i32, i32* @stdout, align 4
  %173 = call i32 @fputs(i8* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %165
  br label %175

175:                                              ; preds = %174, %155
  br label %176

176:                                              ; preds = %175, %145
  br label %177

177:                                              ; preds = %176, %139
  br label %12
}

declare dso_local i64 @xread(i32, i8*, i32) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @fputc(i8 zeroext, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
