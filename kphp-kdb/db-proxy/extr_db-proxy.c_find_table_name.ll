; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_find_table_name.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_find_table_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"INTO\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"FROM\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_table_name(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i8], align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %216, %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %221

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @t_skipspc(i8* %22, i8* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @t_getlex(i8* %25, i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i8* null, i8** %5, align 8
  br label %222

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %82

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 65
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 90
  br i1 %43, label %54, label %44

44:                                               ; preds = %39, %34
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sge i32 %47, 97
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 122
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %39
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %5, align 8
  br label %222

58:                                               ; preds = %49, %44
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 96
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = icmp sge i32 %64, 3
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 96
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, 2
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %5, align 8
  br label %222

81:                                               ; preds = %66, %63, %58
  store i8* null, i8** %5, align 8
  br label %222

82:                                               ; preds = %31
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %151

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sge i32 %88, 48
  br i1 %89, label %90, label %150

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %93, 57
  br i1 %94, label %95, label %150

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 46
  br i1 %103, label %113, label %104

104:                                              ; preds = %98, %95
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %150

107:                                              ; preds = %104
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 46
  br i1 %112, label %113, label %150

113:                                              ; preds = %107, %98
  %114 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @memcpy(i8* %114, i8* %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %125
  store i8 %122, i8* %126, align 1
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %129
  store i8 0, i8* %130, align 1
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %132 = call i32 @strtoul(i8* %131, i8** %13, i32 10)
  store i32 %132, i32* %14, align 4
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = getelementptr inbounds i8, i8* %137, i64 -1
  %139 = icmp eq i8* %133, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %113
  %141 = load i32, i32* %14, align 4
  %142 = icmp sge i32 %141, 1
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = icmp sle i32 %144, 300
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %14, align 4
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %143, %140, %113
  br label %150

150:                                              ; preds = %149, %107, %104, %90, %85
  store i32 0, i32* %11, align 4
  br label %151

151:                                              ; preds = %150, %82
  %152 = load i8*, i8** %6, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sge i32 %154, 65
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sle i32 %159, 90
  br i1 %160, label %171, label %161

161:                                              ; preds = %156, %151
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp sge i32 %164, 97
  br i1 %165, label %166, label %216

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp sle i32 %169, 122
  br i1 %170, label %171, label %216

171:                                              ; preds = %166, %156
  store i32 0, i32* %11, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %172, 4
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 @memcmp(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  store i32 1, i32* %11, align 4
  br label %215

179:                                              ; preds = %174, %171
  %180 = load i32, i32* %10, align 4
  %181 = icmp eq i32 %180, 4
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 @memcmp(i8* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  store i32 1, i32* %11, align 4
  br label %214

187:                                              ; preds = %182, %179
  %188 = load i32, i32* %10, align 4
  %189 = icmp eq i32 %188, 5
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i8*, i8** %6, align 8
  %192 = call i32 @memcmp(i8* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  store i32 1, i32* %11, align 4
  br label %213

195:                                              ; preds = %190, %187
  %196 = load i32, i32* %10, align 4
  %197 = icmp eq i32 %196, 6
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i8*, i8** %6, align 8
  %200 = call i32 @memcmp(i8* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  store i32 1, i32* %11, align 4
  br label %212

203:                                              ; preds = %198, %195
  %204 = load i32, i32* %10, align 4
  %205 = icmp eq i32 %204, 7
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load i8*, i8** %6, align 8
  %208 = call i32 @memcmp(i8* %207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  store i32 2, i32* %11, align 4
  br label %211

211:                                              ; preds = %210, %206, %203
  br label %212

212:                                              ; preds = %211, %202
  br label %213

213:                                              ; preds = %212, %194
  br label %214

214:                                              ; preds = %213, %186
  br label %215

215:                                              ; preds = %214, %178
  br label %216

216:                                              ; preds = %215, %166, %161
  %217 = load i32, i32* %10, align 4
  %218 = load i8*, i8** %6, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8* %220, i8** %6, align 8
  br label %17

221:                                              ; preds = %17
  store i8* null, i8** %5, align 8
  br label %222

222:                                              ; preds = %221, %81, %75, %54, %30
  %223 = load i8*, i8** %5, align 8
  ret i8* %223
}

declare dso_local i8* @t_skipspc(i8*, i8*) #1

declare dso_local i32 @t_getlex(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
