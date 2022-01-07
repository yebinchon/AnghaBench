; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_do_fetch_pack_v2.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_do_fetch_pack_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.oidset = type { i32 }
%struct.fetch_pack_args = type { i32, i32, i32, i32, i32, i32 }
%struct.ref = type { i32 }
%struct.oid_array = type { i32 }
%struct.shallow_info = type { i32 }
%struct.packet_reader = type { i32, i8* }
%struct.fetch_negotiator = type { i32 (%struct.fetch_negotiator*)* }

@the_repository = common dso_local global %struct.repository* null, align 8
@OIDSET_INIT = common dso_local global %struct.oidset zeroinitializer, align 4
@INITIAL_FLUSH = common dso_local global i32 0, align 4
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_DIE_ON_ERR_PACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"GIT_TEST_SIDEBAND_ALL\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sideband-all\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fetch-pack\00", align 1
@ref_compare_name = common dso_local global i32 0, align 4
@cmp_ref_by_name = common dso_local global i32 0, align 4
@ALLOW_REACHABLE_SHA1 = common dso_local global i32 0, align 4
@allow_unadvertised_object_request = common dso_local global i32 0, align 4
@use_sideband = common dso_local global i32 0, align 4
@insert_one_alternate_object = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"negotiation_v2\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"shallow-info\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"wanted-refs\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"packfile\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"git fetch-pack: fetch failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.fetch_pack_args*, i32*, %struct.ref*, %struct.ref**, i32, %struct.oid_array*, %struct.shallow_info*, i8**)* @do_fetch_pack_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @do_fetch_pack_v2(%struct.fetch_pack_args* %0, i32* %1, %struct.ref* %2, %struct.ref** %3, i32 %4, %struct.oid_array* %5, %struct.shallow_info* %6, i8** %7) #0 {
  %9 = alloca %struct.fetch_pack_args*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ref*, align 8
  %12 = alloca %struct.ref**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.oid_array*, align 8
  %15 = alloca %struct.shallow_info*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca %struct.repository*, align 8
  %18 = alloca %struct.ref*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.oidset, align 4
  %21 = alloca %struct.packet_reader, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.fetch_negotiator, align 8
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.ref* %2, %struct.ref** %11, align 8
  store %struct.ref** %3, %struct.ref*** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.oid_array* %5, %struct.oid_array** %14, align 8
  store %struct.shallow_info* %6, %struct.shallow_info** %15, align 8
  store i8** %7, i8*** %16, align 8
  %26 = load %struct.repository*, %struct.repository** @the_repository, align 8
  store %struct.repository* %26, %struct.repository** %17, align 8
  %27 = load %struct.ref*, %struct.ref** %11, align 8
  %28 = call %struct.ref* @copy_ref_list(%struct.ref* %27)
  store %struct.ref* %28, %struct.ref** %18, align 8
  store i32 132, i32* %19, align 4
  %29 = bitcast %struct.oidset* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast (%struct.oidset* @OIDSET_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %30 = load i32, i32* @INITIAL_FLUSH, align 4
  store i32 %30, i32* %24, align 4
  %31 = load %struct.repository*, %struct.repository** %17, align 8
  %32 = call i32 @fetch_negotiator_init(%struct.repository* %31, %struct.fetch_negotiator* %25)
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %37 = load i32, i32* @PACKET_READ_DIE_ON_ERR_PACKET, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @packet_reader_init(%struct.packet_reader* %21, i32 %35, i32* null, i32 0, i32 %38)
  %40 = call i64 @git_env_bool(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %8
  %43 = call i64 @server_supports_feature(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %21, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %47, align 8
  br label %48

48:                                               ; preds = %45, %42, %8
  br label %49

49:                                               ; preds = %167, %166, %48
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 131
  br i1 %51, label %52, label %168

52:                                               ; preds = %49
  %53 = load i32, i32* %19, align 4
  switch i32 %53, label %167 [
    i32 132, label %54
    i32 128, label %111
    i32 129, label %130
    i32 130, label %136
    i32 131, label %166
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* @ref_compare_name, align 4
  %56 = call i32 @sort_ref_list(%struct.ref** %18, i32 %55)
  %57 = load %struct.ref**, %struct.ref*** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @cmp_ref_by_name, align 4
  %60 = call i32 @QSORT(%struct.ref** %57, i32 %58, i32 %59)
  %61 = load i32, i32* @ALLOW_REACHABLE_SHA1, align 4
  %62 = load i32, i32* @allow_unadvertised_object_request, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @allow_unadvertised_object_request, align 4
  store i32 2, i32* @use_sideband, align 4
  %64 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %65 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %54
  %69 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %70 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %75 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %68, %54
  %79 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %80 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %83 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %81
  %87 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %88 = call i32 @mark_complete_and_common_ref(%struct.fetch_negotiator* %25, %struct.fetch_pack_args* %87, %struct.ref** %18)
  %89 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %90 = load %struct.ref**, %struct.ref*** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @filter_refs(%struct.fetch_pack_args* %89, %struct.ref** %18, %struct.ref** %90, i32 %91)
  %93 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %94 = call i32 @everything_local(%struct.fetch_pack_args* %93, %struct.ref** %18)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 131, i32* %19, align 4
  br label %98

97:                                               ; preds = %86
  store i32 128, i32* %19, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %100 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mark_tips(%struct.fetch_negotiator* %25, i32 %101)
  %103 = load i32, i32* @insert_one_alternate_object, align 4
  %104 = call i32 @for_each_cached_alternate(%struct.fetch_negotiator* %25, i32 %103)
  br label %110

105:                                              ; preds = %81
  %106 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %107 = load %struct.ref**, %struct.ref*** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @filter_refs(%struct.fetch_pack_args* %106, %struct.ref** %18, %struct.ref** %107, i32 %108)
  store i32 128, i32* %19, align 4
  br label %110

110:                                              ; preds = %105, %98
  br label %167

111:                                              ; preds = %52
  %112 = load i32, i32* %23, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  store i32 1, i32* %23, align 4
  %115 = load %struct.repository*, %struct.repository** @the_repository, align 8
  %116 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.repository* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %122 = load %struct.ref*, %struct.ref** %18, align 8
  %123 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %21, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @send_fetch_request(%struct.fetch_negotiator* %25, i32 %120, %struct.fetch_pack_args* %121, %struct.ref* %122, %struct.oidset* %20, i32* %24, i32* %22, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  store i32 130, i32* %19, align 4
  br label %129

128:                                              ; preds = %117
  store i32 129, i32* %19, align 4
  br label %129

129:                                              ; preds = %128, %127
  br label %167

130:                                              ; preds = %52
  %131 = call i32 @process_acks(%struct.fetch_negotiator* %25, %struct.packet_reader* %21, %struct.oidset* %20)
  switch i32 %131, label %134 [
    i32 2, label %132
    i32 1, label %133
  ]

132:                                              ; preds = %130
  store i32 130, i32* %19, align 4
  br label %135

133:                                              ; preds = %130
  store i32 0, i32* %22, align 4
  br label %134

134:                                              ; preds = %130, %133
  store i32 128, i32* %19, align 4
  br label %135

135:                                              ; preds = %134, %132
  br label %167

136:                                              ; preds = %52
  %137 = load %struct.repository*, %struct.repository** @the_repository, align 8
  %138 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.repository* %137)
  %139 = call i32 @process_section_header(%struct.packet_reader* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %143 = load %struct.oid_array*, %struct.oid_array** %14, align 8
  %144 = load %struct.shallow_info*, %struct.shallow_info** %15, align 8
  %145 = call i32 @receive_shallow_info(%struct.fetch_pack_args* %142, %struct.packet_reader* %21, %struct.oid_array* %143, %struct.shallow_info* %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = call i32 @process_section_header(%struct.packet_reader* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load %struct.ref**, %struct.ref*** %12, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @receive_wanted_refs(%struct.packet_reader* %21, %struct.ref** %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = call i32 @process_section_header(%struct.packet_reader* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %155 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %9, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = load i8**, i8*** %16, align 8
  %158 = load %struct.ref**, %struct.ref*** %12, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @get_pack(%struct.fetch_pack_args* %155, i32* %156, i8** %157, %struct.ref** %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %164 = call i32 @die(i32 %163)
  br label %165

165:                                              ; preds = %162, %153
  store i32 131, i32* %19, align 4
  br label %167

166:                                              ; preds = %52
  br label %49

167:                                              ; preds = %52, %165, %135, %129, %110
  br label %49

168:                                              ; preds = %49
  %169 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %25, i32 0, i32 0
  %170 = load i32 (%struct.fetch_negotiator*)*, i32 (%struct.fetch_negotiator*)** %169, align 8
  %171 = call i32 %170(%struct.fetch_negotiator* %25)
  %172 = call i32 @oidset_clear(%struct.oidset* %20)
  %173 = load %struct.ref*, %struct.ref** %18, align 8
  ret %struct.ref* %173
}

declare dso_local %struct.ref* @copy_ref_list(%struct.ref*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fetch_negotiator_init(%struct.repository*, %struct.fetch_negotiator*) #1

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32*, i32, i32) #1

declare dso_local i64 @git_env_bool(i8*, i32) #1

declare dso_local i64 @server_supports_feature(i8*, i8*, i32) #1

declare dso_local i32 @sort_ref_list(%struct.ref**, i32) #1

declare dso_local i32 @QSORT(%struct.ref**, i32, i32) #1

declare dso_local i32 @mark_complete_and_common_ref(%struct.fetch_negotiator*, %struct.fetch_pack_args*, %struct.ref**) #1

declare dso_local i32 @filter_refs(%struct.fetch_pack_args*, %struct.ref**, %struct.ref**, i32) #1

declare dso_local i32 @everything_local(%struct.fetch_pack_args*, %struct.ref**) #1

declare dso_local i32 @mark_tips(%struct.fetch_negotiator*, i32) #1

declare dso_local i32 @for_each_cached_alternate(%struct.fetch_negotiator*, i32) #1

declare dso_local i32 @trace2_region_enter(i8*, i8*, %struct.repository*) #1

declare dso_local i32 @send_fetch_request(%struct.fetch_negotiator*, i32, %struct.fetch_pack_args*, %struct.ref*, %struct.oidset*, i32*, i32*, i32) #1

declare dso_local i32 @process_acks(%struct.fetch_negotiator*, %struct.packet_reader*, %struct.oidset*) #1

declare dso_local i32 @trace2_region_leave(i8*, i8*, %struct.repository*) #1

declare dso_local i32 @process_section_header(%struct.packet_reader*, i8*, i32) #1

declare dso_local i32 @receive_shallow_info(%struct.fetch_pack_args*, %struct.packet_reader*, %struct.oid_array*, %struct.shallow_info*) #1

declare dso_local i32 @receive_wanted_refs(%struct.packet_reader*, %struct.ref**, i32) #1

declare dso_local i32 @get_pack(%struct.fetch_pack_args*, i32*, i8**, %struct.ref**, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oidset_clear(%struct.oidset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
