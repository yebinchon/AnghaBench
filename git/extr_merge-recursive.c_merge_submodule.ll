; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_submodule.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }
%struct.object_array = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Failed to merge submodule %s (not checked out)\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to merge submodule %s (commits not present)\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Failed to merge submodule %s (commits don't follow merge-base)\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Fast-forwarding submodule %s to the following commit:\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Fast-forwarding submodule %s\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Failed to merge submodule %s (merge following commits not found)\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Failed to merge submodule %s (not fast-forward)\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Found a possible merge resolution for the submodule:\0A\00", align 1
@.str.8 = private unnamed_addr constant [152 x i8] c"If this is correct simply add it to the index for example\0Aby using:\0A\0A  git update-index --cacheinfo 160000 %s \22%s\22\0A\0Awhich will accept this suggestion.\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Failed to merge submodule %s (multiple merges found)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.object_id*, i8*, %struct.object_id*, %struct.object_id*, %struct.object_id*)* @merge_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_submodule(%struct.merge_options* %0, %struct.object_id* %1, i8* %2, %struct.object_id* %3, %struct.object_id* %4, %struct.object_id* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.merge_options*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.object_id*, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.commit*, align 8
  %16 = alloca %struct.commit*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.object_array, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.object_id* %3, %struct.object_id** %11, align 8
  store %struct.object_id* %4, %struct.object_id** %12, align 8
  store %struct.object_id* %5, %struct.object_id** %13, align 8
  %21 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %22 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %20, align 4
  %29 = load %struct.object_id*, %struct.object_id** %9, align 8
  %30 = load %struct.object_id*, %struct.object_id** %12, align 8
  %31 = call i32 @oidcpy(%struct.object_id* %29, %struct.object_id* %30)
  %32 = load %struct.object_id*, %struct.object_id** %11, align 8
  %33 = call i64 @is_null_oid(%struct.object_id* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %230

36:                                               ; preds = %6
  %37 = load %struct.object_id*, %struct.object_id** %12, align 8
  %38 = call i64 @is_null_oid(%struct.object_id* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %230

41:                                               ; preds = %36
  %42 = load %struct.object_id*, %struct.object_id** %13, align 8
  %43 = call i64 @is_null_oid(%struct.object_id* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %230

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @add_submodule_odb(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %52 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %51, i32 1, i32 %52, i8* %53)
  store i32 0, i32* %7, align 4
  br label %230

55:                                               ; preds = %46
  %56 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %57 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.object_id*, %struct.object_id** %11, align 8
  %60 = call %struct.commit* @lookup_commit_reference(i32 %58, %struct.object_id* %59)
  store %struct.commit* %60, %struct.commit** %14, align 8
  %61 = icmp ne %struct.commit* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %64 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.object_id*, %struct.object_id** %12, align 8
  %67 = call %struct.commit* @lookup_commit_reference(i32 %65, %struct.object_id* %66)
  store %struct.commit* %67, %struct.commit** %15, align 8
  %68 = icmp ne %struct.commit* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %71 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.object_id*, %struct.object_id** %13, align 8
  %74 = call %struct.commit* @lookup_commit_reference(i32 %72, %struct.object_id* %73)
  store %struct.commit* %74, %struct.commit** %16, align 8
  %75 = icmp ne %struct.commit* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %69, %62, %55
  %77 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %78 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %77, i32 1, i32 %78, i8* %79)
  store i32 0, i32* %7, align 4
  br label %230

81:                                               ; preds = %69
  %82 = load %struct.commit*, %struct.commit** %14, align 8
  %83 = load %struct.commit*, %struct.commit** %15, align 8
  %84 = call i64 @in_merge_bases(%struct.commit* %82, %struct.commit* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.commit*, %struct.commit** %14, align 8
  %88 = load %struct.commit*, %struct.commit** %16, align 8
  %89 = call i64 @in_merge_bases(%struct.commit* %87, %struct.commit* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %93 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %92, i32 1, i32 %93, i8* %94)
  store i32 0, i32* %7, align 4
  br label %230

96:                                               ; preds = %86
  %97 = load %struct.commit*, %struct.commit** %15, align 8
  %98 = load %struct.commit*, %struct.commit** %16, align 8
  %99 = call i64 @in_merge_bases(%struct.commit* %97, %struct.commit* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %96
  %102 = load %struct.object_id*, %struct.object_id** %9, align 8
  %103 = load %struct.object_id*, %struct.object_id** %13, align 8
  %104 = call i32 @oidcpy(%struct.object_id* %102, %struct.object_id* %103)
  %105 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %106 = call i64 @show(%struct.merge_options* %105, i32 3)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %110 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %109, i32 3, i32 %110, i8* %111)
  %113 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %114 = load %struct.commit*, %struct.commit** %16, align 8
  %115 = call i32 @output_commit_title(%struct.merge_options* %113, %struct.commit* %114)
  br label %127

116:                                              ; preds = %101
  %117 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %118 = call i64 @show(%struct.merge_options* %117, i32 2)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %122 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %121, i32 2, i32 %122, i8* %123)
  br label %126

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %120
  br label %127

127:                                              ; preds = %126, %108
  store i32 1, i32* %7, align 4
  br label %230

128:                                              ; preds = %96
  %129 = load %struct.commit*, %struct.commit** %16, align 8
  %130 = load %struct.commit*, %struct.commit** %15, align 8
  %131 = call i64 @in_merge_bases(%struct.commit* %129, %struct.commit* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %128
  %134 = load %struct.object_id*, %struct.object_id** %9, align 8
  %135 = load %struct.object_id*, %struct.object_id** %12, align 8
  %136 = call i32 @oidcpy(%struct.object_id* %134, %struct.object_id* %135)
  %137 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %138 = call i64 @show(%struct.merge_options* %137, i32 3)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %133
  %141 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %142 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %141, i32 3, i32 %142, i8* %143)
  %145 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %146 = load %struct.commit*, %struct.commit** %15, align 8
  %147 = call i32 @output_commit_title(%struct.merge_options* %145, %struct.commit* %146)
  br label %159

148:                                              ; preds = %133
  %149 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %150 = call i64 @show(%struct.merge_options* %149, i32 2)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %154 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i8*, i8** %10, align 8
  %156 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %153, i32 2, i32 %154, i8* %155)
  br label %158

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %152
  br label %159

159:                                              ; preds = %158, %140
  store i32 1, i32* %7, align 4
  br label %230

160:                                              ; preds = %128
  %161 = load i32, i32* %20, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  store i32 0, i32* %7, align 4
  br label %230

164:                                              ; preds = %160
  %165 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %166 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load %struct.commit*, %struct.commit** %15, align 8
  %170 = load %struct.commit*, %struct.commit** %16, align 8
  %171 = call i32 @find_first_merges(i32 %167, %struct.object_array* %18, i8* %168, %struct.commit* %169, %struct.commit* %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  switch i32 %172, label %204 [
    i32 0, label %173
    i32 1, label %178
  ]

173:                                              ; preds = %164
  %174 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %175 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %174, i32 1, i32 %175, i8* %176)
  br label %228

178:                                              ; preds = %164
  %179 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %180 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %181 = load i8*, i8** %10, align 8
  %182 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %179, i32 1, i32 %180, i8* %181)
  %183 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %184 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %185 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %183, i32 2, i32 %184)
  %186 = getelementptr inbounds %struct.object_array, %struct.object_array* %18, i32 0, i32 1
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = bitcast %struct.TYPE_5__* %190 to %struct.commit*
  %192 = call i32 @print_commit(%struct.commit* %191)
  %193 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %194 = call i32 @_(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.8, i64 0, i64 0))
  %195 = getelementptr inbounds %struct.object_array, %struct.object_array* %18, i32 0, i32 1
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = call i32 @oid_to_hex(i32* %200)
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %193, i32 2, i32 %194, i32 %201, i8* %202)
  br label %228

204:                                              ; preds = %164
  %205 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %206 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %207 = load i8*, i8** %10, align 8
  %208 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %205, i32 1, i32 %206, i8* %207)
  store i32 0, i32* %19, align 4
  br label %209

209:                                              ; preds = %224, %204
  %210 = load i32, i32* %19, align 4
  %211 = getelementptr inbounds %struct.object_array, %struct.object_array* %18, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.object_array, %struct.object_array* %18, i32 0, i32 1
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = bitcast %struct.TYPE_5__* %221 to %struct.commit*
  %223 = call i32 @print_commit(%struct.commit* %222)
  br label %224

224:                                              ; preds = %214
  %225 = load i32, i32* %19, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %19, align 4
  br label %209

227:                                              ; preds = %209
  br label %228

228:                                              ; preds = %227, %178, %173
  %229 = call i32 @object_array_clear(%struct.object_array* %18)
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %228, %163, %159, %127, %91, %76, %50, %45, %40, %35
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i64 @add_submodule_odb(i8*) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i64 @in_merge_bases(%struct.commit*, %struct.commit*) #1

declare dso_local i64 @show(%struct.merge_options*, i32) #1

declare dso_local i32 @output_commit_title(%struct.merge_options*, %struct.commit*) #1

declare dso_local i32 @find_first_merges(i32, %struct.object_array*, i8*, %struct.commit*, %struct.commit*) #1

declare dso_local i32 @print_commit(%struct.commit*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @object_array_clear(%struct.object_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
