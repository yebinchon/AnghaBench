; ModuleID = '/home/carl/AnghaBench/git/extr_line-range.c_parse_range_funcname.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-range.c_parse_range_funcname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.userdiff_driver = type { %struct.userdiff_funcname }
%struct.userdiff_funcname = type { i32, i64 }

@REG_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"-L parameter '%s': %s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"-L parameter '%s' starting at line %ld: no match\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"-L parameter '%s' matches at EOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8* (i8*, i64)*, i8*, i64, i64, i64*, i64*, i8*, %struct.index_state*)* @parse_range_funcname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_range_funcname(i8* %0, i8* (i8*, i64)* %1, i8* %2, i64 %3, i64 %4, i64* %5, i64* %6, i8* %7, %struct.index_state* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8* (i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.index_state*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.userdiff_driver*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.userdiff_funcname*, align 8
  %29 = alloca [1024 x i8], align 16
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  store i8* %0, i8** %11, align 8
  store i8* (i8*, i64)* %1, i8* (i8*, i64)** %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64* %5, i64** %16, align 8
  store i64* %6, i64** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.index_state* %8, %struct.index_state** %19, align 8
  store i8* null, i8** %23, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 94
  br i1 %35, label %36, label %39

36:                                               ; preds = %9
  store i64 1, i64* %15, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %36, %9
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 58
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %21, align 8
  br label %48

48:                                               ; preds = %74, %39
  %49 = load i8*, i8** %21, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %21, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 58
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %77

60:                                               ; preds = %58
  %61 = load i8*, i8** %21, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 92
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i8*, i8** %21, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %21, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %21, align 8
  br label %74

74:                                               ; preds = %71, %65, %60
  %75 = load i8*, i8** %21, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %21, align 8
  br label %48

77:                                               ; preds = %58
  %78 = load i8*, i8** %21, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = icmp eq i8* %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i8* null, i8** %10, align 8
  br label %216

83:                                               ; preds = %77
  %84 = load i64*, i64** %16, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %21, align 8
  store i8* %87, i8** %10, align 8
  br label %216

88:                                               ; preds = %83
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8*, i8** %21, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = ptrtoint i8* %91 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i8* @xstrndup(i8* %90, i32 %97)
  store i8* %98, i8** %20, align 8
  %99 = load i64, i64* %15, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %15, align 8
  %101 = load i8* (i8*, i64)*, i8* (i8*, i64)** %12, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i64, i64* %15, align 8
  %104 = call i8* %101(i8* %102, i64 %103)
  store i8* %104, i8** %24, align 8
  %105 = load %struct.index_state*, %struct.index_state** %19, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = call %struct.userdiff_driver* @userdiff_find_by_path(%struct.index_state* %105, i8* %106)
  store %struct.userdiff_driver* %107, %struct.userdiff_driver** %22, align 8
  %108 = load %struct.userdiff_driver*, %struct.userdiff_driver** %22, align 8
  %109 = icmp ne %struct.userdiff_driver* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %88
  %111 = load %struct.userdiff_driver*, %struct.userdiff_driver** %22, align 8
  %112 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.userdiff_funcname, %struct.userdiff_funcname* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  %117 = load %struct.userdiff_driver*, %struct.userdiff_driver** %22, align 8
  %118 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %117, i32 0, i32 0
  store %struct.userdiff_funcname* %118, %struct.userdiff_funcname** %28, align 8
  %119 = call i8* @xcalloc(i32 1, i32 1)
  store i8* %119, i8** %23, align 8
  %120 = load i8*, i8** %23, align 8
  %121 = load %struct.userdiff_funcname*, %struct.userdiff_funcname** %28, align 8
  %122 = getelementptr inbounds %struct.userdiff_funcname, %struct.userdiff_funcname* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.userdiff_funcname*, %struct.userdiff_funcname** %28, align 8
  %125 = getelementptr inbounds %struct.userdiff_funcname, %struct.userdiff_funcname* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @xdiff_set_find_func(i8* %120, i64 %123, i32 %126)
  br label %128

128:                                              ; preds = %116, %110, %88
  %129 = load i8*, i8** %20, align 8
  %130 = load i32, i32* @REG_NEWLINE, align 4
  %131 = call i32 @regcomp(i32* %27, i8* %129, i32 %130)
  store i32 %131, i32* %26, align 4
  %132 = load i32, i32* %26, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load i32, i32* %26, align 4
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %137 = call i32 @regerror(i32 %135, i32* %27, i8* %136, i32 1024)
  %138 = load i8*, i8** %20, align 8
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %140 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %138, i8* %139)
  br label %141

141:                                              ; preds = %134, %128
  %142 = load i8*, i8** %23, align 8
  %143 = load i8*, i8** %24, align 8
  %144 = call i8* @find_funcname_matching_regexp(i8* %142, i8* %143, i32* %27)
  store i8* %144, i8** %25, align 8
  %145 = load i8*, i8** %25, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %141
  %148 = load i8*, i8** %20, align 8
  %149 = load i64, i64* %15, align 8
  %150 = add nsw i64 %149, 1
  %151 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %148, i64 %150)
  br label %152

152:                                              ; preds = %147, %141
  %153 = load i64*, i64** %16, align 8
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %162, %152
  %155 = load i8*, i8** %25, align 8
  %156 = load i8* (i8*, i64)*, i8* (i8*, i64)** %12, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = load i64*, i64** %16, align 8
  %159 = load i64, i64* %158, align 8
  %160 = call i8* %156(i8* %157, i64 %159)
  %161 = icmp ugt i8* %155, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i64*, i64** %16, align 8
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %163, align 8
  br label %154

166:                                              ; preds = %154
  %167 = load i64*, i64** %16, align 8
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %14, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i8*, i8** %20, align 8
  %173 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %171, %166
  %175 = load i64*, i64** %16, align 8
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  %178 = load i64*, i64** %17, align 8
  store i64 %177, i64* %178, align 8
  br label %179

179:                                              ; preds = %202, %174
  %180 = load i64*, i64** %17, align 8
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %14, align 8
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %184, label %206

184:                                              ; preds = %179
  %185 = load i8* (i8*, i64)*, i8* (i8*, i64)** %12, align 8
  %186 = load i8*, i8** %13, align 8
  %187 = load i64*, i64** %17, align 8
  %188 = load i64, i64* %187, align 8
  %189 = call i8* %185(i8* %186, i64 %188)
  store i8* %189, i8** %30, align 8
  %190 = load i8* (i8*, i64)*, i8* (i8*, i64)** %12, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = load i64*, i64** %17, align 8
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, 1
  %195 = call i8* %190(i8* %191, i64 %194)
  store i8* %195, i8** %31, align 8
  %196 = load i8*, i8** %23, align 8
  %197 = load i8*, i8** %30, align 8
  %198 = load i8*, i8** %31, align 8
  %199 = call i64 @match_funcname(i8* %196, i8* %197, i8* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %184
  br label %206

202:                                              ; preds = %184
  %203 = load i64*, i64** %17, align 8
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  br label %179

206:                                              ; preds = %201, %179
  %207 = call i32 @regfree(i32* %27)
  %208 = load i8*, i8** %23, align 8
  %209 = call i32 @free(i8* %208)
  %210 = load i8*, i8** %20, align 8
  %211 = call i32 @free(i8* %210)
  %212 = load i64*, i64** %16, align 8
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %212, align 8
  %215 = load i8*, i8** %21, align 8
  store i8* %215, i8** %10, align 8
  br label %216

216:                                              ; preds = %206, %86, %82
  %217 = load i8*, i8** %10, align 8
  ret i8* %217
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local %struct.userdiff_driver* @userdiff_find_by_path(%struct.index_state*, i8*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @xdiff_set_find_func(i8*, i64, i32) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @die(i8*, i8*, ...) #1

declare dso_local i8* @find_funcname_matching_regexp(i8*, i8*, i32*) #1

declare dso_local i64 @match_funcname(i8*, i8*, i8*) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
