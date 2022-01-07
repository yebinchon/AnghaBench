; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tag.c_tag_parse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tag.c_tag_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i32 }

@tag_parse.tag_types = internal global [5 x i8*] [i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"commit\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"blob\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"object \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"object field invalid\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"object too short\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"type \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"type field not found\00", align 1
@GIT_OBJECT_INVALID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"invalid object type\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"tag \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"tag field not found\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"tagger \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"tag contains no message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*)* @tag_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tag_parse(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @git_oid__parse(i32* %14, i8** %6, i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @tag_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  br label %225

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 5
  %23 = load i8*, i8** %7, align 8
  %24 = icmp uge i8* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @tag_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %225

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @memcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @tag_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %225

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  store i8* %35, i8** %6, align 8
  %36 = load i32, i32* @GIT_OBJECT_INVALID, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 1, i32* %11, align 4
  br label %39

39:                                               ; preds = %74, %33
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @tag_parse.tag_types, i64 0, i64 0))
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [5 x i8*], [5 x i8*]* @tag_parse.tag_types, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %12, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8*, i8** %7, align 8
  %53 = icmp uge i8* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 @tag_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %55, i32* %4, align 4
  br label %225

56:                                               ; preds = %43
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [5 x i8*], [5 x i8*]* @tag_parse.tag_types, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @memcmp(i8* %57, i8* %61, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %6, align 8
  br label %77

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %39

77:                                               ; preds = %66, %39
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @GIT_OBJECT_INVALID, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @tag_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  store i32 %84, i32* %4, align 4
  br label %225

85:                                               ; preds = %77
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  %88 = load i8*, i8** %7, align 8
  %89 = icmp uge i8* %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @tag_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %91, i32* %4, align 4
  br label %225

92:                                               ; preds = %85
  %93 = load i8*, i8** %6, align 8
  %94 = call i64 @memcmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @tag_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i32 %97, i32* %4, align 4
  br label %225

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  store i8* %100, i8** %6, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = call i8* @memchr(i8* %101, i8 signext 10, i32 %107)
  store i8* %108, i8** %10, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = call i32 @tag_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %112, i32* %4, align 4
  br label %225

113:                                              ; preds = %98
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  store i64 %118, i64* %8, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %9, i64 %119, i32 1)
  %121 = load i64, i64* %9, align 8
  %122 = call i8* @git__malloc(i64 %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @memcpy(i8* %131, i8* %132, i64 %133)
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load i8*, i8** %10, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8* %141, i8** %6, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  store i8* null, i8** %143, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = icmp ult i8* %144, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %113
  %148 = load i8*, i8** %6, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 10
  br i1 %151, label %152, label %168

152:                                              ; preds = %147
  %153 = call i8* @git__malloc(i64 4)
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %158)
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = call i64 @git_signature__parse(i8* %162, i8** %6, i8* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8 signext 10)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %152
  store i32 -1, i32* %4, align 4
  br label %225

167:                                              ; preds = %152
  br label %168

168:                                              ; preds = %167, %147, %113
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  store i8* null, i8** %170, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = icmp ult i8* %171, %172
  br i1 %173, label %174, label %224

174:                                              ; preds = %168
  %175 = load i8*, i8** %6, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 10
  br i1 %178, label %179, label %196

179:                                              ; preds = %174
  %180 = load i8*, i8** %6, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = trunc i64 %185 to i32
  %187 = call i8* @git__memmem(i8* %180, i32 %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 2)
  store i8* %187, i8** %10, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %179
  %191 = load i8*, i8** %10, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  store i8* %192, i8** %6, align 8
  br label %195

193:                                              ; preds = %179
  %194 = call i32 @tag_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  store i32 %194, i32* %4, align 4
  br label %225

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %195, %174
  %197 = load i8*, i8** %7, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %6, align 8
  %200 = ptrtoint i8* %197 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  store i64 %202, i64* %8, align 8
  %203 = load i64, i64* %8, align 8
  %204 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %9, i64 %203, i32 1)
  %205 = load i64, i64* %9, align 8
  %206 = call i8* @git__malloc(i64 %205)
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %211)
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 3
  %215 = load i8*, i8** %214, align 8
  %216 = load i8*, i8** %6, align 8
  %217 = load i64, i64* %8, align 8
  %218 = call i32 @memcpy(i8* %215, i8* %216, i64 %217)
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 3
  %221 = load i8*, i8** %220, align 8
  %222 = load i64, i64* %8, align 8
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8 0, i8* %223, align 1
  br label %224

224:                                              ; preds = %196, %168
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %224, %193, %166, %111, %96, %90, %83, %54, %31, %25, %18
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i64 @git_oid__parse(i32*, i8**, i8*, i8*) #1

declare dso_local i32 @tag_error(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i8* @git__malloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @git_signature__parse(i8*, i8**, i8*, i8*, i8 signext) #1

declare dso_local i8* @git__memmem(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
