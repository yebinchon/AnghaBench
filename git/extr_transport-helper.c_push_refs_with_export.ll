; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_push_refs_with_export.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_push_refs_with_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.strbuf = type { i8* }
%struct.transport = type { %struct.helper_data* }
%struct.helper_data = type { i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ref = type { i8*, %struct.TYPE_3__*, i32, i32, %struct.ref* }
%struct.TYPE_3__ = type { i8* }
%struct.child_process = type { i32 }
%struct.object_id = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [51 x i8] c"remote-helper doesn't support push; refspec needed\00", align 1
@TRANSPORT_PUSH_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"helper %s does not support 'force'\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"export\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"^%s\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"--refspec\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"couldn't run fast-export\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"error while running fast-export\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, %struct.ref*, i32)* @push_refs_with_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_refs_with_export(%struct.transport* %0, %struct.ref* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.transport*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref*, align 8
  %9 = alloca %struct.child_process*, align 8
  %10 = alloca %struct.child_process, align 4
  %11 = alloca %struct.helper_data*, align 8
  %12 = alloca %struct.string_list, align 4
  %13 = alloca %struct.strbuf, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.object_id, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %5, align 8
  store %struct.ref* %1, %struct.ref** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.transport*, %struct.transport** %5, align 8
  %19 = getelementptr inbounds %struct.transport, %struct.transport* %18, i32 0, i32 0
  %20 = load %struct.helper_data*, %struct.helper_data** %19, align 8
  store %struct.helper_data* %20, %struct.helper_data** %11, align 8
  %21 = bitcast %struct.string_list* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %22 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %23 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  %24 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @die(i32 %29)
  br label %31

31:                                               ; preds = %28, %3
  %32 = load %struct.transport*, %struct.transport** %5, align 8
  %33 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  %34 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @set_common_push_options(%struct.transport* %32, i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TRANSPORT_PUSH_FORCE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.transport*, %struct.transport** %5, align 8
  %44 = call i64 @set_helper_option(%struct.transport* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  %49 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @warning(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %42
  br label %53

53:                                               ; preds = %52, %31
  %54 = load %struct.transport*, %struct.transport** %5, align 8
  %55 = call %struct.child_process* @get_helper(%struct.transport* %54)
  store %struct.child_process* %55, %struct.child_process** %9, align 8
  %56 = load %struct.child_process*, %struct.child_process** %9, align 8
  %57 = getelementptr inbounds %struct.child_process, %struct.child_process* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @write_constant(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.ref*, %struct.ref** %6, align 8
  store %struct.ref* %60, %struct.ref** %8, align 8
  br label %61

61:                                               ; preds = %160, %53
  %62 = load %struct.ref*, %struct.ref** %8, align 8
  %63 = icmp ne %struct.ref* %62, null
  br i1 %63, label %64, label %164

64:                                               ; preds = %61
  %65 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  %66 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %65, i32 0, i32 1
  %67 = load %struct.ref*, %struct.ref** %8, align 8
  %68 = getelementptr inbounds %struct.ref, %struct.ref* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @apply_refspecs(%struct.TYPE_4__* %66, i8* %69)
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %64
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @get_oid(i8* %74, %struct.object_id* %15)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  %80 = call i32 @strbuf_detach(%struct.strbuf* %13, i32* null)
  %81 = call i32 @string_list_append_nodup(%struct.string_list* %12, i32 %80)
  %82 = load %struct.ref*, %struct.ref** %8, align 8
  %83 = getelementptr inbounds %struct.ref, %struct.ref* %82, i32 0, i32 3
  %84 = call i32 @oidcpy(i32* %83, %struct.object_id* %15)
  br label %85

85:                                               ; preds = %77, %73, %64
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load %struct.ref*, %struct.ref** %8, align 8
  %89 = getelementptr inbounds %struct.ref, %struct.ref* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = icmp ne %struct.TYPE_3__* %90, null
  br i1 %91, label %92, label %159

92:                                               ; preds = %85
  %93 = load %struct.ref*, %struct.ref** %8, align 8
  %94 = getelementptr inbounds %struct.ref, %struct.ref* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.ref*, %struct.ref** %8, align 8
  %97 = getelementptr inbounds %struct.ref, %struct.ref* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %95, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %146

103:                                              ; preds = %92
  %104 = load %struct.ref*, %struct.ref** %8, align 8
  %105 = getelementptr inbounds %struct.ref, %struct.ref* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %135, label %108

108:                                              ; preds = %103
  %109 = load %struct.ref*, %struct.ref** %8, align 8
  %110 = getelementptr inbounds %struct.ref, %struct.ref* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* @RESOLVE_REF_READING, align 4
  %115 = call i8* @resolve_ref_unsafe(i8* %113, i32 %114, %struct.object_id* %15, i32* %17)
  store i8* %115, i8** %16, align 8
  %116 = load i8*, i8** %16, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* @REF_ISSYMREF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %118, %108
  %124 = load %struct.ref*, %struct.ref** %8, align 8
  %125 = getelementptr inbounds %struct.ref, %struct.ref* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %16, align 8
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i8*, i8** %16, align 8
  %131 = load %struct.ref*, %struct.ref** %8, align 8
  %132 = getelementptr inbounds %struct.ref, %struct.ref* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %130, i8* %133)
  br label %140

135:                                              ; preds = %103
  %136 = load %struct.ref*, %struct.ref** %8, align 8
  %137 = getelementptr inbounds %struct.ref, %struct.ref* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %129
  %141 = call i32 @string_list_append(%struct.string_list* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %142 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @string_list_append(%struct.string_list* %12, i8* %143)
  %145 = call i32 @strbuf_release(%struct.strbuf* %13)
  br label %146

146:                                              ; preds = %140, %92
  %147 = load %struct.ref*, %struct.ref** %8, align 8
  %148 = getelementptr inbounds %struct.ref, %struct.ref* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = load %struct.ref*, %struct.ref** %8, align 8
  %153 = getelementptr inbounds %struct.ref, %struct.ref* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @string_list_append(%struct.string_list* %12, i8* %156)
  br label %158

158:                                              ; preds = %151, %146
  br label %159

159:                                              ; preds = %158, %85
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.ref*, %struct.ref** %8, align 8
  %162 = getelementptr inbounds %struct.ref, %struct.ref* %161, i32 0, i32 4
  %163 = load %struct.ref*, %struct.ref** %162, align 8
  store %struct.ref* %163, %struct.ref** %8, align 8
  br label %61

164:                                              ; preds = %61
  %165 = load %struct.transport*, %struct.transport** %5, align 8
  %166 = call i64 @get_exporter(%struct.transport* %165, %struct.child_process* %10, %struct.string_list* %12)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %170 = call i32 @die(i32 %169)
  br label %171

171:                                              ; preds = %168, %164
  %172 = call i32 @string_list_clear(%struct.string_list* %12, i32 1)
  %173 = call i64 @finish_command(%struct.child_process* %10)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %177 = call i32 @die(i32 %176)
  br label %178

178:                                              ; preds = %175, %171
  %179 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  %180 = load %struct.ref*, %struct.ref** %6, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i64 @push_update_refs_status(%struct.helper_data* %179, %struct.ref* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  store i32 1, i32* %4, align 4
  br label %203

185:                                              ; preds = %178
  %186 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  %187 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  %192 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %193)
  %195 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  %198 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @rename(i8* %196, i8* %199)
  %201 = call i32 @strbuf_release(%struct.strbuf* %13)
  br label %202

202:                                              ; preds = %190, %185
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %202, %184
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @set_common_push_options(%struct.transport*, i32, i32) #2

declare dso_local i64 @set_helper_option(%struct.transport*, i8*, i8*) #2

declare dso_local i32 @warning(i32, i32) #2

declare dso_local %struct.child_process* @get_helper(%struct.transport*) #2

declare dso_local i32 @write_constant(i32, i8*) #2

declare dso_local i8* @apply_refspecs(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @string_list_append_nodup(%struct.string_list*, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, %struct.object_id*, i32*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @get_exporter(%struct.transport*, %struct.child_process*, %struct.string_list*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i64 @push_update_refs_status(%struct.helper_data*, %struct.ref*, i32) #2

declare dso_local i32 @rename(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
