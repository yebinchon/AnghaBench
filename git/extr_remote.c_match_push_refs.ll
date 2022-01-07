; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_match_push_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_match_push_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.ref = type { i64, %struct.ref*, i32, i32, i32 }
%struct.refspec = type { i32 }
%struct.string_list_item = type { %struct.ref* }
%struct.refspec_item = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.ref* }

@MATCH_REFS_ALL = common dso_local global i32 0, align 4
@MATCH_REFS_MIRROR = common dso_local global i32 0, align 4
@MATCH_REFS_PRUNE = common dso_local global i32 0, align 4
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@FROM_SRC = common dso_local global i32 0, align 4
@MATCH_REFS_FOLLOW_TAGS = common dso_local global i32 0, align 4
@FROM_DST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_push_refs(%struct.ref* %0, %struct.ref** %1, %struct.refspec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref**, align 8
  %8 = alloca %struct.refspec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ref*, align 8
  %15 = alloca %struct.ref**, align 8
  %16 = alloca %struct.string_list, align 4
  %17 = alloca %struct.string_list_item*, align 8
  %18 = alloca %struct.ref*, align 8
  %19 = alloca %struct.refspec_item*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.string_list, align 4
  %22 = alloca i8*, align 8
  store %struct.ref* %0, %struct.ref** %6, align 8
  store %struct.ref** %1, %struct.ref*** %7, align 8
  store %struct.refspec* %2, %struct.refspec** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @MATCH_REFS_ALL, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MATCH_REFS_MIRROR, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MATCH_REFS_PRUNE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.ref**, %struct.ref*** %7, align 8
  %33 = call %struct.ref** @tail_ref(%struct.ref** %32)
  store %struct.ref** %33, %struct.ref*** %15, align 8
  %34 = bitcast %struct.string_list* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %35 = load %struct.refspec*, %struct.refspec** %8, align 8
  %36 = getelementptr inbounds %struct.refspec, %struct.refspec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %4
  %40 = load %struct.refspec*, %struct.refspec** %8, align 8
  %41 = call i32 @refspec_append(%struct.refspec* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %4
  %43 = load %struct.ref*, %struct.ref** %6, align 8
  %44 = load %struct.ref**, %struct.ref*** %7, align 8
  %45 = load %struct.ref*, %struct.ref** %44, align 8
  %46 = load %struct.refspec*, %struct.refspec** %8, align 8
  %47 = call i32 @match_explicit_refs(%struct.ref* %43, %struct.ref* %45, %struct.ref*** %15, %struct.refspec* %46)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.ref*, %struct.ref** %6, align 8
  store %struct.ref* %48, %struct.ref** %14, align 8
  br label %49

49:                                               ; preds = %129, %42
  %50 = load %struct.ref*, %struct.ref** %14, align 8
  %51 = icmp ne %struct.ref* %50, null
  br i1 %51, label %52, label %133

52:                                               ; preds = %49
  store %struct.refspec_item* null, %struct.refspec_item** %19, align 8
  %53 = load %struct.refspec*, %struct.refspec** %8, align 8
  %54 = load %struct.ref*, %struct.ref** %14, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @FROM_SRC, align 4
  %57 = call i8* @get_ref_match(%struct.refspec* %53, %struct.ref* %54, i32 %55, i32 %56, %struct.refspec_item** %19)
  store i8* %57, i8** %20, align 8
  %58 = load i8*, i8** %20, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %129

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load %struct.ref**, %struct.ref*** %7, align 8
  %67 = load %struct.ref*, %struct.ref** %66, align 8
  %68 = call i32 @prepare_ref_index(%struct.string_list* %16, %struct.ref* %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i8*, i8** %20, align 8
  %71 = call %struct.string_list_item* @string_list_lookup(%struct.string_list* %16, i8* %70)
  store %struct.string_list_item* %71, %struct.string_list_item** %17, align 8
  %72 = load %struct.string_list_item*, %struct.string_list_item** %17, align 8
  %73 = icmp ne %struct.string_list_item* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.string_list_item*, %struct.string_list_item** %17, align 8
  %76 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %75, i32 0, i32 0
  %77 = load %struct.ref*, %struct.ref** %76, align 8
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi %struct.ref* [ %77, %74 ], [ null, %78 ]
  store %struct.ref* %80, %struct.ref** %18, align 8
  %81 = load %struct.ref*, %struct.ref** %18, align 8
  %82 = icmp ne %struct.ref* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.ref*, %struct.ref** %18, align 8
  %85 = getelementptr inbounds %struct.ref, %struct.ref* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %126

89:                                               ; preds = %83
  br label %116

90:                                               ; preds = %79
  %91 = load %struct.refspec_item*, %struct.refspec_item** %19, align 8
  %92 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %126

102:                                              ; preds = %98, %95, %90
  %103 = load i8*, i8** %20, align 8
  %104 = call %struct.ref* @make_linked_ref(i8* %103, %struct.ref*** %15)
  store %struct.ref* %104, %struct.ref** %18, align 8
  %105 = load %struct.ref*, %struct.ref** %18, align 8
  %106 = getelementptr inbounds %struct.ref, %struct.ref* %105, i32 0, i32 4
  %107 = load %struct.ref*, %struct.ref** %14, align 8
  %108 = getelementptr inbounds %struct.ref, %struct.ref* %107, i32 0, i32 4
  %109 = call i32 @oidcpy(i32* %106, i32* %108)
  %110 = load %struct.ref*, %struct.ref** %18, align 8
  %111 = load %struct.ref*, %struct.ref** %18, align 8
  %112 = getelementptr inbounds %struct.ref, %struct.ref* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.TYPE_2__* @string_list_insert(%struct.string_list* %16, i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store %struct.ref* %110, %struct.ref** %115, align 8
  br label %116

116:                                              ; preds = %102, %89
  %117 = load %struct.ref*, %struct.ref** %14, align 8
  %118 = call i64 @copy_ref(%struct.ref* %117)
  %119 = load %struct.ref*, %struct.ref** %18, align 8
  %120 = getelementptr inbounds %struct.ref, %struct.ref* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.refspec_item*, %struct.refspec_item** %19, align 8
  %122 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ref*, %struct.ref** %18, align 8
  %125 = getelementptr inbounds %struct.ref, %struct.ref* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %116, %101, %88
  %127 = load i8*, i8** %20, align 8
  %128 = call i32 @free(i8* %127)
  br label %129

129:                                              ; preds = %126, %60
  %130 = load %struct.ref*, %struct.ref** %14, align 8
  %131 = getelementptr inbounds %struct.ref, %struct.ref* %130, i32 0, i32 1
  %132 = load %struct.ref*, %struct.ref** %131, align 8
  store %struct.ref* %132, %struct.ref** %14, align 8
  br label %49

133:                                              ; preds = %49
  %134 = call i32 @string_list_clear(%struct.string_list* %16, i32 0)
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @MATCH_REFS_FOLLOW_TAGS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.ref*, %struct.ref** %6, align 8
  %141 = load %struct.ref**, %struct.ref*** %7, align 8
  %142 = call i32 @add_missing_tags(%struct.ref* %140, %struct.ref** %141, %struct.ref*** %15)
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %192

146:                                              ; preds = %143
  %147 = bitcast %struct.string_list* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  %148 = load %struct.ref**, %struct.ref*** %7, align 8
  %149 = load %struct.ref*, %struct.ref** %148, align 8
  store %struct.ref* %149, %struct.ref** %14, align 8
  br label %150

150:                                              ; preds = %186, %146
  %151 = load %struct.ref*, %struct.ref** %14, align 8
  %152 = icmp ne %struct.ref* %151, null
  br i1 %152, label %153, label %190

153:                                              ; preds = %150
  %154 = load %struct.ref*, %struct.ref** %14, align 8
  %155 = getelementptr inbounds %struct.ref, %struct.ref* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %186

159:                                              ; preds = %153
  %160 = load %struct.refspec*, %struct.refspec** %8, align 8
  %161 = load %struct.ref*, %struct.ref** %14, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @FROM_DST, align 4
  %164 = call i8* @get_ref_match(%struct.refspec* %160, %struct.ref* %161, i32 %162, i32 %163, %struct.refspec_item** null)
  store i8* %164, i8** %22, align 8
  %165 = load i8*, i8** %22, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %185

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.string_list, %struct.string_list* %21, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load %struct.ref*, %struct.ref** %6, align 8
  %173 = call i32 @prepare_ref_index(%struct.string_list* %21, %struct.ref* %172)
  br label %174

174:                                              ; preds = %171, %167
  %175 = load i8*, i8** %22, align 8
  %176 = call i32 @string_list_has_string(%struct.string_list* %21, i8* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = call i64 (...) @alloc_delete_ref()
  %180 = load %struct.ref*, %struct.ref** %14, align 8
  %181 = getelementptr inbounds %struct.ref, %struct.ref* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %178, %174
  %183 = load i8*, i8** %22, align 8
  %184 = call i32 @free(i8* %183)
  br label %185

185:                                              ; preds = %182, %159
  br label %186

186:                                              ; preds = %185, %158
  %187 = load %struct.ref*, %struct.ref** %14, align 8
  %188 = getelementptr inbounds %struct.ref, %struct.ref* %187, i32 0, i32 1
  %189 = load %struct.ref*, %struct.ref** %188, align 8
  store %struct.ref* %189, %struct.ref** %14, align 8
  br label %150

190:                                              ; preds = %150
  %191 = call i32 @string_list_clear(%struct.string_list* %21, i32 0)
  br label %192

192:                                              ; preds = %190, %143
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 -1, i32* %5, align 4
  br label %197

196:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %196, %195
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local %struct.ref** @tail_ref(%struct.ref**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @refspec_append(%struct.refspec*, i8*) #1

declare dso_local i32 @match_explicit_refs(%struct.ref*, %struct.ref*, %struct.ref***, %struct.refspec*) #1

declare dso_local i8* @get_ref_match(%struct.refspec*, %struct.ref*, i32, i32, %struct.refspec_item**) #1

declare dso_local i32 @prepare_ref_index(%struct.string_list*, %struct.ref*) #1

declare dso_local %struct.string_list_item* @string_list_lookup(%struct.string_list*, i8*) #1

declare dso_local %struct.ref* @make_linked_ref(i8*, %struct.ref***) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @string_list_insert(%struct.string_list*, i32) #1

declare dso_local i64 @copy_ref(%struct.ref*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @add_missing_tags(%struct.ref*, %struct.ref**, %struct.ref***) #1

declare dso_local i32 @string_list_has_string(%struct.string_list*, i8*) #1

declare dso_local i64 @alloc_delete_ref(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
