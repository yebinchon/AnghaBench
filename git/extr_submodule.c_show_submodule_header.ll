; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_show_submodule_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_show_submodule_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.diff_options = type { i32 }
%struct.object_id = type { i32 }
%struct.repository = type { i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { %struct.commit* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DIRTY_SUBMODULE_UNTRACKED = common dso_local global i32 0, align 4
@DIRTY_SUBMODULE_MODIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"(new submodule)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"(submodule deleted)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"(commits not present)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Submodule %s \00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" (rewind)\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, i8*, %struct.object_id*, %struct.object_id*, i32, %struct.repository*, %struct.commit**, %struct.commit**, %struct.commit_list**)* @show_submodule_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_submodule_header(%struct.diff_options* %0, i8* %1, %struct.object_id* %2, %struct.object_id* %3, i32 %4, %struct.repository* %5, %struct.commit** %6, %struct.commit** %7, %struct.commit_list** %8) #0 {
  %10 = alloca %struct.diff_options*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.object_id*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.repository*, align 8
  %16 = alloca %struct.commit**, align 8
  %17 = alloca %struct.commit**, align 8
  %18 = alloca %struct.commit_list**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.strbuf, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.object_id* %2, %struct.object_id** %12, align 8
  store %struct.object_id* %3, %struct.object_id** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.repository* %5, %struct.repository** %15, align 8
  store %struct.commit** %6, %struct.commit*** %16, align 8
  store %struct.commit** %7, %struct.commit*** %17, align 8
  store %struct.commit_list** %8, %struct.commit_list*** %18, align 8
  store i8* null, i8** %19, align 8
  %23 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @DIRTY_SUBMODULE_UNTRACKED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %9
  %29 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @diff_emit_submodule_untracked(%struct.diff_options* %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %9
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @DIRTY_SUBMODULE_MODIFIED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @diff_emit_submodule_modified(%struct.diff_options* %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.object_id*, %struct.object_id** %12, align 8
  %43 = call i64 @is_null_oid(%struct.object_id* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %52

46:                                               ; preds = %41
  %47 = load %struct.object_id*, %struct.object_id** %13, align 8
  %48 = call i64 @is_null_oid(%struct.object_id* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %51, %45
  %53 = load %struct.repository*, %struct.repository** %15, align 8
  %54 = icmp ne %struct.repository* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %19, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %59

59:                                               ; preds = %58, %55
  br label %124

60:                                               ; preds = %52
  %61 = load %struct.repository*, %struct.repository** %15, align 8
  %62 = load %struct.object_id*, %struct.object_id** %12, align 8
  %63 = call %struct.commit* @lookup_commit_reference(%struct.repository* %61, %struct.object_id* %62)
  %64 = load %struct.commit**, %struct.commit*** %16, align 8
  store %struct.commit* %63, %struct.commit** %64, align 8
  %65 = load %struct.repository*, %struct.repository** %15, align 8
  %66 = load %struct.object_id*, %struct.object_id** %13, align 8
  %67 = call %struct.commit* @lookup_commit_reference(%struct.repository* %65, %struct.object_id* %66)
  %68 = load %struct.commit**, %struct.commit*** %17, align 8
  store %struct.commit* %67, %struct.commit** %68, align 8
  %69 = load %struct.object_id*, %struct.object_id** %12, align 8
  %70 = call i64 @is_null_oid(%struct.object_id* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = load %struct.commit**, %struct.commit*** %16, align 8
  %74 = load %struct.commit*, %struct.commit** %73, align 8
  %75 = icmp ne %struct.commit* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %72, %60
  %77 = load %struct.object_id*, %struct.object_id** %13, align 8
  %78 = call i64 @is_null_oid(%struct.object_id* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load %struct.commit**, %struct.commit*** %17, align 8
  %82 = load %struct.commit*, %struct.commit** %81, align 8
  %83 = icmp ne %struct.commit* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80, %72
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %85

85:                                               ; preds = %84, %80, %76
  %86 = load %struct.repository*, %struct.repository** %15, align 8
  %87 = load %struct.commit**, %struct.commit*** %16, align 8
  %88 = load %struct.commit*, %struct.commit** %87, align 8
  %89 = load %struct.commit**, %struct.commit*** %17, align 8
  %90 = load %struct.commit*, %struct.commit** %89, align 8
  %91 = call %struct.commit_list* @repo_get_merge_bases(%struct.repository* %86, %struct.commit* %88, %struct.commit* %90)
  %92 = load %struct.commit_list**, %struct.commit_list*** %18, align 8
  store %struct.commit_list* %91, %struct.commit_list** %92, align 8
  %93 = load %struct.commit_list**, %struct.commit_list*** %18, align 8
  %94 = load %struct.commit_list*, %struct.commit_list** %93, align 8
  %95 = icmp ne %struct.commit_list* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %85
  %97 = load %struct.commit_list**, %struct.commit_list*** %18, align 8
  %98 = load %struct.commit_list*, %struct.commit_list** %97, align 8
  %99 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %98, i32 0, i32 0
  %100 = load %struct.commit*, %struct.commit** %99, align 8
  %101 = load %struct.commit**, %struct.commit*** %16, align 8
  %102 = load %struct.commit*, %struct.commit** %101, align 8
  %103 = icmp eq %struct.commit* %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 1, i32* %21, align 4
  br label %115

105:                                              ; preds = %96
  %106 = load %struct.commit_list**, %struct.commit_list*** %18, align 8
  %107 = load %struct.commit_list*, %struct.commit_list** %106, align 8
  %108 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %107, i32 0, i32 0
  %109 = load %struct.commit*, %struct.commit** %108, align 8
  %110 = load %struct.commit**, %struct.commit*** %17, align 8
  %111 = load %struct.commit*, %struct.commit** %110, align 8
  %112 = icmp eq %struct.commit* %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 1, i32* %22, align 4
  br label %114

114:                                              ; preds = %113, %105
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %85
  %117 = load %struct.object_id*, %struct.object_id** %12, align 8
  %118 = load %struct.object_id*, %struct.object_id** %13, align 8
  %119 = call i64 @oideq(%struct.object_id* %117, %struct.object_id* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = call i32 @strbuf_release(%struct.strbuf* %20)
  br label %160

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %59
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %125)
  %127 = load %struct.object_id*, %struct.object_id** %12, align 8
  %128 = load i32, i32* @DEFAULT_ABBREV, align 4
  %129 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %20, %struct.object_id* %127, i32 %128)
  %130 = load i32, i32* %22, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %21, align 4
  %134 = icmp ne i32 %133, 0
  br label %135

135:                                              ; preds = %132, %124
  %136 = phi i1 [ true, %124 ], [ %134, %132 ]
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %139 = call i32 @strbuf_addstr(%struct.strbuf* %20, i8* %138)
  %140 = load %struct.object_id*, %struct.object_id** %13, align 8
  %141 = load i32, i32* @DEFAULT_ABBREV, align 4
  %142 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %20, %struct.object_id* %140, i32 %141)
  %143 = load i8*, i8** %19, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load i8*, i8** %19, align 8
  %147 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %146)
  br label %154

148:                                              ; preds = %135
  %149 = load i32, i32* %22, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %153 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %148, %145
  %155 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %156 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @diff_emit_submodule_header(%struct.diff_options* %155, i32 %157)
  %159 = call i32 @strbuf_release(%struct.strbuf* %20)
  br label %160

160:                                              ; preds = %154, %121
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @diff_emit_submodule_untracked(%struct.diff_options*, i8*) #2

declare dso_local i32 @diff_emit_submodule_modified(%struct.diff_options*, i8*) #2

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local %struct.commit* @lookup_commit_reference(%struct.repository*, %struct.object_id*) #2

declare dso_local %struct.commit_list* @repo_get_merge_bases(%struct.repository*, %struct.commit*, %struct.commit*) #2

declare dso_local i64 @oideq(%struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, %struct.object_id*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @diff_emit_submodule_header(%struct.diff_options*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
