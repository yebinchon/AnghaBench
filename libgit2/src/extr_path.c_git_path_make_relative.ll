; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_make_relative.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_make_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s is not a parent of %s\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_make_relative(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  store i64 1, i64* %13, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %7, align 8
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %59, %2
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %64

35:                                               ; preds = %33
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %9, align 8
  br label %58

48:                                               ; preds = %40, %35
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %64

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  br label %23

64:                                               ; preds = %56, %33
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %65, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70, %64
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 47
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 47
  br i1 %83, label %84, label %92

84:                                               ; preds = %79, %74
  %85 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @git_error_set(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %86, i8* %89)
  %91 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %91, i32* %3, align 4
  br label %227

92:                                               ; preds = %79, %70
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 47
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i8*, i8** %7, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  br label %134

104:                                              ; preds = %97, %92
  %105 = load i8*, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 47
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %7, align 8
  br label %133

116:                                              ; preds = %108, %104
  %117 = load i8*, i8** %6, align 8
  %118 = load i8, i8* %117, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = call i32 @git_buf_clear(%struct.TYPE_6__* %125)
  store i32 0, i32* %3, align 4
  br label %227

127:                                              ; preds = %120, %116
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8* %129, i8** %6, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8* %131, i8** %7, align 8
  br label %132

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %113
  br label %134

134:                                              ; preds = %133, %101
  %135 = load i8*, i8** %6, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = ptrtoint i8* %135 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = load i64, i64* %10, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %10, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i8, i8* %144, align 1
  %146 = icmp ne i8 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %134
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @git_buf_set(%struct.TYPE_6__* %148, i8* %149, i64 %150)
  store i32 %151, i32* %3, align 4
  br label %227

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %168, %152
  %154 = load i8*, i8** %7, align 8
  %155 = call i8* @strchr(i8* %154, i8 signext 47)
  store i8* %155, i8** %7, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %157, %153
  %164 = phi i1 [ false, %153 ], [ %162, %157 ]
  br i1 %164, label %165, label %171

165:                                              ; preds = %163
  %166 = load i64, i64* %13, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %13, align 8
  br label %168

168:                                              ; preds = %165
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %7, align 8
  br label %153

171:                                              ; preds = %163
  %172 = load i64, i64* %13, align 8
  %173 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %11, i64 %172, i32 3)
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* %10, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %11, i64 %174, i32 %176)
  %178 = load i64, i64* %11, align 8
  %179 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %12, i64 %178, i32 1)
  %180 = load i8*, i8** %6, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = ptrtoint i8* %180 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  store i64 %186, i64* %15, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %188 = load i64, i64* %12, align 8
  %189 = call i64 @git_buf_try_grow(%struct.TYPE_6__* %187, i64 %188, i32 1)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %171
  store i32 -1, i32* %3, align 4
  br label %227

192:                                              ; preds = %171
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i64, i64* %15, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %6, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load i64, i64* %13, align 8
  %202 = mul i64 %201, 3
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i8*, i8** %6, align 8
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %205, 1
  %207 = call i32 @memmove(i8* %203, i8* %204, i64 %206)
  store i64 0, i64* %14, align 8
  br label %208

208:                                              ; preds = %220, %192
  %209 = load i64, i64* %14, align 8
  %210 = load i64, i64* %13, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load i64, i64* %14, align 8
  %217 = mul i64 %216, 3
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = call i32 @memcpy(i8* %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  br label %220

220:                                              ; preds = %212
  %221 = load i64, i64* %14, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %14, align 8
  br label %208

223:                                              ; preds = %208
  %224 = load i64, i64* %11, align 8
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %223, %191, %147, %124, %84
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @git_error_set(i32, i8*, i8*, i8*) #1

declare dso_local i32 @git_buf_clear(%struct.TYPE_6__*) #1

declare dso_local i32 @git_buf_set(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64*, i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i64 @git_buf_try_grow(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
