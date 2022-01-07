; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_signature.c_git_signature__parse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_signature.c_git_signature__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i32* }
%struct.TYPE_5__ = type { i32, i8, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no newline given\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"expected prefix doesn't match actual\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"malformed e-mail\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid Unix timestamp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_signature__parse(%struct.TYPE_6__* %0, i8** %1, i8* %2, i8* %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8 %4, i8* %11, align 1
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %12, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = call i32 @memset(%struct.TYPE_6__* %25, i32 0, i32 32)
  %27 = load i8, i8* %11, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %5
  %31 = load i8*, i8** %12, align 8
  %32 = load i8, i8* %11, align 1
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i8* @memchr(i8* %31, i8 signext %32, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = call i32 @signature_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %6, align 4
  br label %230

43:                                               ; preds = %30, %5
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %15, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %15, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8*, i8** %9, align 8
  %53 = icmp uge i8* %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i64 @memcmp(i8* %55, i8* %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %46
  %61 = call i32 @signature_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 %61, i32* %6, align 4
  br label %230

62:                                               ; preds = %54
  %63 = load i64, i64* %15, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %65, i8** %12, align 8
  br label %66

66:                                               ; preds = %62, %43
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = call i8* @git__memrchr(i8* %67, i8 signext 60, i32 %73)
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i8* @git__memrchr(i8* %75, i8 signext 62, i32 %81)
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %66
  %86 = load i8*, i8** %14, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i8*, i8** %14, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = icmp ule i8* %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %85, %66
  %93 = call i32 @signature_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %93, i32* %6, align 4
  br label %230

94:                                               ; preds = %88
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %96, i8** %13, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sub nsw i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = call i8* @extract_trimmed(i8* %97, i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = call i8* @extract_trimmed(i8* %109, i32 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = load i8*, i8** %9, align 8
  %123 = icmp ult i8* %121, %122
  br i1 %123, label %124, label %226

124:                                              ; preds = %94
  %125 = load i8*, i8** %14, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  store i8* %126, i8** %16, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i8*, i8** %16, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = call i64 @git__strntol64(i32* %129, i8* %130, i32 %136, i8** %17, i32 10)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %124
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @git__free(i32* %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @git__free(i32* %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  store i32* null, i32** %149, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  store i32* null, i32** %151, align 8
  %152 = call i32 @signature_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 %152, i32* %6, align 4
  br label %230

153:                                              ; preds = %124
  %154 = load i8*, i8** %17, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = load i8*, i8** %9, align 8
  %157 = icmp ult i8* %155, %156
  br i1 %157, label %158, label %225

158:                                              ; preds = %153
  %159 = load i8*, i8** %17, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  store i8* %160, i8** %21, align 8
  %161 = load i8*, i8** %21, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 45
  br i1 %165, label %166, label %172

166:                                              ; preds = %158
  %167 = load i8*, i8** %21, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 43
  br i1 %171, label %184, label %172

172:                                              ; preds = %166, %158
  %173 = load i8*, i8** %21, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8*, i8** %9, align 8
  %176 = load i8*, i8** %21, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = sub nsw i64 %179, 1
  %181 = trunc i64 %180 to i32
  %182 = call i64 @git__strntol32(i32* %18, i8* %174, i32 %181, i8** %22, i32 10)
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %172, %166
  store i32 0, i32* %18, align 4
  br label %185

185:                                              ; preds = %184, %172
  %186 = load i32, i32* %18, align 4
  %187 = sdiv i32 %186, 100
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* %18, align 4
  %189 = srem i32 %188, 100
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %19, align 4
  %191 = icmp sle i32 %190, 14
  br i1 %191, label %192, label %224

192:                                              ; preds = %185
  %193 = load i32, i32* %20, align 4
  %194 = icmp sle i32 %193, 59
  br i1 %194, label %195, label %224

195:                                              ; preds = %192
  %196 = load i32, i32* %19, align 4
  %197 = mul nsw i32 %196, 60
  %198 = load i32, i32* %20, align 4
  %199 = add nsw i32 %197, %198
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 8
  %203 = load i8*, i8** %21, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  store i8 %205, i8* %208, align 4
  %209 = load i8*, i8** %21, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 0
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 45
  br i1 %213, label %214, label %223

214:                                              ; preds = %195
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 0, %218
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  br label %223

223:                                              ; preds = %214, %195
  br label %224

224:                                              ; preds = %223, %192, %185
  br label %225

225:                                              ; preds = %224, %153
  br label %226

226:                                              ; preds = %225, %94
  %227 = load i8*, i8** %9, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = load i8**, i8*** %8, align 8
  store i8* %228, i8** %229, align 8
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %226, %139, %92, %60, %41
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @signature_error(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i8* @git__memrchr(i8*, i8 signext, i32) #1

declare dso_local i8* @extract_trimmed(i8*, i32) #1

declare dso_local i64 @git__strntol64(i32*, i8*, i32, i8**, i32) #1

declare dso_local i32 @git__free(i32*) #1

declare dso_local i64 @git__strntol32(i32*, i8*, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
