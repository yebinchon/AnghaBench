; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_parse_privacy_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_parse_privacy_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"parsing privacy key '%s', reqeol=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"privacy key = %016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_privacy_key(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @verbosity, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %3
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = or i32 %26, 32
  %28 = icmp sge i32 %27, 97
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = or i32 %35, 32
  %37 = icmp sle i32 %36, 122
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %39, 32
  br label %41

41:                                               ; preds = %38, %29, %20
  %42 = phi i1 [ false, %29 ], [ false, %20 ], [ %40, %38 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %20

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  store i32 -1, i32* %4, align 4
  br label %232

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sge i32 %60, 48
  br i1 %61, label %62, label %110

62:                                               ; preds = %53
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 57
  br i1 %69, label %70, label %110

70:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %96, %70
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sge i32 %77, 48
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sle i32 %85, 57
  br label %87

87:                                               ; preds = %79, %71
  %88 = phi i1 [ false, %71 ], [ %86, %79 ]
  br i1 %88, label %89, label %109

89:                                               ; preds = %87
  %90 = load i32, i32* %9, align 4
  %91 = icmp sge i32 %90, 48
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp ugt i32 %93, 214748364
  br i1 %94, label %95, label %96

95:                                               ; preds = %92, %89
  store i32 -1, i32* %4, align 4
  br label %232

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = mul i32 %97, 10
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = sub nsw i32 %104, 48
  %106 = add i32 %98, %105
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %71

109:                                              ; preds = %87
  br label %180

110:                                              ; preds = %62, %53
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 42
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  store i32 -1, i32* %11, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %179

121:                                              ; preds = %110
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 95
  br i1 %128, label %129, label %154

129:                                              ; preds = %121
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 32
  br i1 %136, label %137, label %154

137:                                              ; preds = %129
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 44
  br i1 %144, label %145, label %154

145:                                              ; preds = %137
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  store i32 -1, i32* %4, align 4
  br label %232

154:                                              ; preds = %145, %137, %129, %121
  br label %155

155:                                              ; preds = %169, %154
  %156 = load i8*, i8** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp sge i32 %161, 48
  br i1 %162, label %163, label %170

163:                                              ; preds = %155
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp sge i32 %166, 64
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 -1, i32* %4, align 4
  br label %232

169:                                              ; preds = %163
  br label %155

170:                                              ; preds = %155
  %171 = load i8*, i8** %5, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 %175, %176
  %178 = call i32 @compute_crc32(i8* %174, i32 %177)
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %170, %118
  br label %180

180:                                              ; preds = %179, %109
  %181 = load i8*, i8** %5, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = icmp ne i8 %185, 0
  br i1 %186, label %187, label %212

187:                                              ; preds = %180
  %188 = load i32, i32* %7, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 -1, i32* %4, align 4
  br label %232

191:                                              ; preds = %187
  %192 = load i8*, i8** %5, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 32
  br i1 %198, label %199, label %211

199:                                              ; preds = %191
  %200 = load i8*, i8** %5, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 %205, 44
  br i1 %206, label %210, label %207

207:                                              ; preds = %199
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %207, %199
  store i32 -1, i32* %4, align 4
  br label %232

211:                                              ; preds = %207, %191
  br label %212

212:                                              ; preds = %211, %180
  %213 = load i8*, i8** %5, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @compute_crc32(i8* %213, i32 %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = zext i32 %216 to i64
  %218 = shl i64 %217, 32
  %219 = load i32, i32* %11, align 4
  %220 = zext i32 %219 to i64
  %221 = add i64 %218, %220
  %222 = load i64*, i64** %6, align 8
  store i64 %221, i64* %222, align 8
  %223 = load i32, i32* @verbosity, align 4
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %230

225:                                              ; preds = %212
  %226 = load i32, i32* @stderr, align 4
  %227 = load i64*, i64** %6, align 8
  %228 = load i64, i64* %227, align 8
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %226, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %228)
  br label %230

230:                                              ; preds = %225, %212
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %230, %210, %190, %168, %153, %95, %52
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @compute_crc32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
