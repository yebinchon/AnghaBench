; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_delete_remote_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_delete_remote_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i8*, %struct.object_id, %struct.ref* }
%struct.object_id = type { i32 }
%struct.TYPE_2__ = type { i8* }
%struct.active_request_slot = type { i32, %struct.slot_results* }
%struct.slot_results = type { i8*, i32 }

@remote_refs = common dso_local global %struct.ref* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"No remote branch matches %s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"More than one remote branch matches %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Remote HEAD is not a symref\00", align 1
@MAXDEPTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Remote branch %s is the current HEAD\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Remote HEAD symrefs too deep\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Unable to resolve remote HEAD\00", align 1
@.str.7 = private unnamed_addr constant [91 x i8] c"Remote HEAD resolves to object %s\0Awhich does not exist locally, perhaps you need to fetch?\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Unable to resolve remote branch %s\00", align 1
@.str.9 = private unnamed_addr constant [96 x i8] c"Remote branch %s resolves to object %s\0Awhich does not exist locally, perhaps you need to fetch?\00", align 1
@.str.10 = private unnamed_addr constant [127 x i8] c"The branch '%s' is not an ancestor of your current HEAD.\0AIf you are sure you want to delete it, run:\0A\09'git http-push -D %s %s'\00", align 1
@repo = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Removing remote branch '%s'\0A\00", align 1
@dry_run = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@DAV_DELETE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"DELETE request failed (%d/%ld)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Unable to start DELETE request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @delete_remote_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_remote_branch(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.active_request_slot*, align 8
  %14 = alloca %struct.slot_results, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.ref*, %struct.ref** @remote_refs, align 8
  store %struct.ref* %18, %struct.ref** %6, align 8
  store %struct.ref* null, %struct.ref** %7, align 8
  store i8* null, i8** %9, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %67, %2
  %22 = load %struct.ref*, %struct.ref** %6, align 8
  %23 = icmp ne %struct.ref* %22, null
  br i1 %23, label %24, label %71

24:                                               ; preds = %21
  %25 = load %struct.ref*, %struct.ref** %6, align 8
  %26 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %16, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %46, label %33

33:                                               ; preds = %24
  %34 = load i8*, i8** %16, align 8
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @memcmp(i8* %41, i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33, %24
  br label %67

47:                                               ; preds = %33
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i8*, i8** %16, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 47
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %67

63:                                               ; preds = %51, %47
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  %66 = load %struct.ref*, %struct.ref** %6, align 8
  store %struct.ref* %66, %struct.ref** %7, align 8
  br label %67

67:                                               ; preds = %63, %62, %46
  %68 = load %struct.ref*, %struct.ref** %6, align 8
  %69 = getelementptr inbounds %struct.ref, %struct.ref* %68, i32 0, i32 2
  %70 = load %struct.ref*, %struct.ref** %69, align 8
  store %struct.ref* %70, %struct.ref** %6, align 8
  br label %21

71:                                               ; preds = %21
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %75)
  store i32 %76, i32* %3, align 4
  br label %223

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  store i32 %82, i32* %3, align 4
  br label %223

83:                                               ; preds = %77
  %84 = call i32 @fetch_symref(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9, %struct.object_id* %8)
  %85 = load i8*, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %88, i32* %3, align 4
  br label %223

89:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %114, %89
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @MAXDEPTH, align 4
  %96 = icmp slt i32 %94, %95
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi i1 [ false, %90 ], [ %96, %93 ]
  br i1 %98, label %99, label %117

99:                                               ; preds = %97
  %100 = load %struct.ref*, %struct.ref** %7, align 8
  %101 = getelementptr inbounds %struct.ref, %struct.ref* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @strcmp(i8* %102, i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load %struct.ref*, %struct.ref** %7, align 8
  %108 = getelementptr inbounds %struct.ref, %struct.ref* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %109)
  store i32 %110, i32* %3, align 4
  br label %223

111:                                              ; preds = %99
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @fetch_symref(i8* %112, i8** %9, %struct.object_id* %8)
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %90

117:                                              ; preds = %97
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %173, label %120

120:                                              ; preds = %117
  %121 = load i8*, i8** %9, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %124, i32* %3, align 4
  br label %223

125:                                              ; preds = %120
  %126 = call i64 @is_null_oid(%struct.object_id* %8)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 %129, i32* %3, align 4
  br label %223

130:                                              ; preds = %125
  %131 = call i32 @has_object_file(%struct.object_id* %8)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = call i8* @oid_to_hex(%struct.object_id* %8)
  %135 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.7, i64 0, i64 0), i8* %134)
  store i32 %135, i32* %3, align 4
  br label %223

136:                                              ; preds = %130
  %137 = load %struct.ref*, %struct.ref** %7, align 8
  %138 = getelementptr inbounds %struct.ref, %struct.ref* %137, i32 0, i32 1
  %139 = call i64 @is_null_oid(%struct.object_id* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.ref*, %struct.ref** %7, align 8
  %143 = getelementptr inbounds %struct.ref, %struct.ref* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %144)
  store i32 %145, i32* %3, align 4
  br label %223

146:                                              ; preds = %136
  %147 = load %struct.ref*, %struct.ref** %7, align 8
  %148 = getelementptr inbounds %struct.ref, %struct.ref* %147, i32 0, i32 1
  %149 = call i32 @has_object_file(%struct.object_id* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %146
  %152 = load %struct.ref*, %struct.ref** %7, align 8
  %153 = getelementptr inbounds %struct.ref, %struct.ref* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.ref*, %struct.ref** %7, align 8
  %156 = getelementptr inbounds %struct.ref, %struct.ref* %155, i32 0, i32 1
  %157 = call i8* @oid_to_hex(%struct.object_id* %156)
  %158 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.9, i64 0, i64 0), i8* %154, i8* %157)
  store i32 %158, i32* %3, align 4
  br label %223

159:                                              ; preds = %146
  %160 = load %struct.ref*, %struct.ref** %7, align 8
  %161 = call i32 @verify_merge_base(%struct.object_id* %8, %struct.ref* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %159
  %164 = load %struct.ref*, %struct.ref** %7, align 8
  %165 = getelementptr inbounds %struct.ref, %struct.ref* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %4, align 8
  %171 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.10, i64 0, i64 0), i8* %166, i8* %169, i8* %170)
  store i32 %171, i32* %3, align 4
  br label %223

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %117
  %174 = load i32, i32* @stderr, align 4
  %175 = load %struct.ref*, %struct.ref** %7, align 8
  %176 = getelementptr inbounds %struct.ref, %struct.ref* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @fprintf(i32 %174, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %177)
  %179 = load i64, i64* @dry_run, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %223

182:                                              ; preds = %173
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.ref*, %struct.ref** %7, align 8
  %187 = getelementptr inbounds %struct.ref, %struct.ref* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i8* @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %185, i8* %188)
  store i8* %189, i8** %15, align 8
  %190 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %190, %struct.active_request_slot** %13, align 8
  %191 = load %struct.active_request_slot*, %struct.active_request_slot** %13, align 8
  %192 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %191, i32 0, i32 1
  store %struct.slot_results* %14, %struct.slot_results** %192, align 8
  %193 = load %struct.active_request_slot*, %struct.active_request_slot** %13, align 8
  %194 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i8*, i8** %15, align 8
  %197 = load i32, i32* @DAV_DELETE, align 4
  %198 = call i32 @curl_setup_http_get(i32 %195, i8* %196, i32 %197)
  %199 = load %struct.active_request_slot*, %struct.active_request_slot** %13, align 8
  %200 = call i64 @start_active_slot(%struct.active_request_slot* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %182
  %203 = load %struct.active_request_slot*, %struct.active_request_slot** %13, align 8
  %204 = call i32 @run_active_slot(%struct.active_request_slot* %203)
  %205 = load i8*, i8** %15, align 8
  %206 = call i32 @free(i8* %205)
  %207 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %14, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @CURLE_OK, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %14, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %14, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %213, i8* %215)
  store i32 %216, i32* %3, align 4
  br label %223

217:                                              ; preds = %202
  br label %222

218:                                              ; preds = %182
  %219 = load i8*, i8** %15, align 8
  %220 = call i32 @free(i8* %219)
  %221 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  store i32 %221, i32* %3, align 4
  br label %223

222:                                              ; preds = %217
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %222, %218, %211, %181, %163, %151, %141, %133, %128, %123, %106, %87, %80, %74
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @fetch_symref(i8*, i8**, %struct.object_id*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @has_object_file(%struct.object_id*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @verify_merge_base(%struct.object_id*, %struct.ref*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

declare dso_local %struct.active_request_slot* @get_active_slot(...) #1

declare dso_local i32 @curl_setup_http_get(i32, i8*, i32) #1

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @run_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
