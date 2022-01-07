; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_COM_ParseExt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_COM_ParseExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i64 0, align 8
@com_token = common dso_local global i8* null, align 8
@com_tokenline = common dso_local global i64 0, align 8
@com_lines = common dso_local global i64 0, align 8
@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @COM_ParseExt(i8** %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i64, i64* @qfalse, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** @com_token, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  store i64 0, i64* @com_tokenline, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i8**, i8*** %4, align 8
  store i8* null, i8** %18, align 8
  %19 = load i8*, i8** @com_token, align 8
  store i8* %19, i8** %3, align 8
  br label %202

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %123
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @SkipWhitespace(i8* %22, i64* %8)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i8**, i8*** %4, align 8
  store i8* null, i8** %27, align 8
  %28 = load i8*, i8** @com_token, align 8
  store i8* %28, i8** %3, align 8
  br label %202

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = load i8**, i8*** %4, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** @com_token, align 8
  store i8* %38, i8** %3, align 8
  br label %202

39:                                               ; preds = %32, %29
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %66, %51
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 10
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  br label %54

69:                                               ; preds = %64
  br label %123

70:                                               ; preds = %45, %39
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %121

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 42
  br i1 %78, label %79, label %121

79:                                               ; preds = %73
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %110, %79
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 42
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 47
  br label %98

98:                                               ; preds = %92, %87
  %99 = phi i1 [ true, %87 ], [ %97, %92 ]
  br label %100

100:                                              ; preds = %98, %82
  %101 = phi i1 [ false, %82 ], [ %99, %98 ]
  br i1 %101, label %102, label %113

102:                                              ; preds = %100
  %103 = load i8*, i8** %9, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 10
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, i64* @com_lines, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* @com_lines, align 8
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %9, align 8
  br label %82

113:                                              ; preds = %100
  %114 = load i8*, i8** %9, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  store i8* %119, i8** %9, align 8
  br label %120

120:                                              ; preds = %117, %113
  br label %122

121:                                              ; preds = %73, %70
  br label %124

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %69
  br label %21

124:                                              ; preds = %121
  %125 = load i64, i64* @com_lines, align 8
  store i64 %125, i64* @com_tokenline, align 8
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 34
  br i1 %127, label %128, label %170

128:                                              ; preds = %124
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  br label %131

131:                                              ; preds = %128, %169
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %9, align 8
  %134 = load i8, i8* %132, align 1
  %135 = sext i8 %134 to i32
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 34
  br i1 %137, label %141, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %138, %131
  %142 = load i8*, i8** @com_token, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 0, i8* %145, align 1
  %146 = load i8*, i8** %9, align 8
  %147 = load i8**, i8*** %4, align 8
  store i8* %146, i8** %147, align 8
  %148 = load i8*, i8** @com_token, align 8
  store i8* %148, i8** %3, align 8
  br label %202

149:                                              ; preds = %138
  %150 = load i32, i32* %6, align 4
  %151 = icmp eq i32 %150, 10
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i64, i64* @com_lines, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* @com_lines, align 8
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load i32, i32* %6, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** @com_token, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8 %162, i8* %166, align 1
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %160, %155
  br label %131

170:                                              ; preds = %124
  br label %171

171:                                              ; preds = %191, %170
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %174 = sub nsw i32 %173, 1
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load i32, i32* %6, align 4
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** @com_token, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8 %178, i8* %182, align 1
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %176, %171
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %9, align 8
  %188 = load i8*, i8** %9, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %185
  %192 = load i32, i32* %6, align 4
  %193 = icmp sgt i32 %192, 32
  br i1 %193, label %171, label %194

194:                                              ; preds = %191
  %195 = load i8*, i8** @com_token, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  store i8 0, i8* %198, align 1
  %199 = load i8*, i8** %9, align 8
  %200 = load i8**, i8*** %4, align 8
  store i8* %199, i8** %200, align 8
  %201 = load i8*, i8** @com_token, align 8
  store i8* %201, i8** %3, align 8
  br label %202

202:                                              ; preds = %194, %141, %35, %26, %17
  %203 = load i8*, i8** %3, align 8
  ret i8* %203
}

declare dso_local i8* @SkipWhitespace(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
