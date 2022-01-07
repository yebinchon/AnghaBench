; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_lex.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_condition_stack = type { i32 }

@MAX_ERROR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"lex (\22%.*s\22, ip_size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"lex: unclosed double quot\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\0Alex: couldn't parse %d-th token (%s)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"BYE\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"unclosed if statement\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lex(i8* %0, i32 %1, i8** %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.forth_condition_stack, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load i32, i32* @MAX_ERROR_BUF_SIZE, align 4
  %20 = zext i32 %19 to i64
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i32 %23)
  %25 = getelementptr inbounds %struct.forth_condition_stack, %struct.forth_condition_stack* %16, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %169, %5
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isspace(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i1 [ false, %27 ], [ %38, %31 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %27

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %172

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 34
  br i1 %56, label %57, label %103

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %75, %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 34
  br label %73

73:                                               ; preds = %65, %61
  %74 = phi i1 [ false, %61 ], [ %72, %65 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %61

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @strcpy(i8* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %188

85:                                               ; preds = %78
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8**, i8*** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @add_lit_str(i8* %93, i8** %94, i32* %15, i32 %95, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %85
  store i32 -1, i32* %6, align 4
  br label %188

100:                                              ; preds = %85
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %169

103:                                              ; preds = %49
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %120, %103
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = call i64 @isspace(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  %117 = xor i1 %116, true
  br label %118

118:                                              ; preds = %109, %105
  %119 = phi i1 [ false, %105 ], [ %117, %109 ]
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %105

123:                                              ; preds = %118
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8**, i8*** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @parse_token(i8* %131, i8** %132, i32* %15, i32 %133, %struct.forth_condition_stack* %16, i8* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %166, label %137

137:                                              ; preds = %123
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @strlen(i8* %138)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* @MAX_ERROR_BUF_SIZE, align 4
  %141 = load i32, i32* %17, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %137
  %147 = load i8*, i8** %11, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* %18, align 4
  %152 = add nsw i32 %151, 1
  %153 = call i32 @memset(i8* %150, i32 0, i32 %152)
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = call i32 @snprintf(i8* %157, i32 %158, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %159, i8* %163)
  br label %165

165:                                              ; preds = %146, %137
  store i32 -1, i32* %6, align 4
  br label %188

166:                                              ; preds = %123
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %166, %100
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %26

172:                                              ; preds = %48
  %173 = load i8**, i8*** %9, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i8*, i8** %11, align 8
  %176 = call i32 @parse_token(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %173, i32* %15, i32 %174, %struct.forth_condition_stack* %16, i8* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %172
  store i32 -1, i32* %6, align 4
  br label %188

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.forth_condition_stack, %struct.forth_condition_stack* %16, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i8*, i8** %11, align 8
  %185 = call i32 @strcpy(i8* %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %188

186:                                              ; preds = %179
  %187 = load i32, i32* %15, align 4
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %186, %183, %178, %165, %99, %82
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i8*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @add_lit_str(i8*, i8**, i32*, i32, i8*) #1

declare dso_local i32 @parse_token(i8*, i8**, i32*, i32, %struct.forth_condition_stack*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
