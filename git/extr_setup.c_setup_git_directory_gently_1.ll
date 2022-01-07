; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_setup_git_directory_gently_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_setup_git_directory_gently_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.strbuf = type { i32, i32* }

@CEILING_DIRECTORIES_ENVIRONMENT = common dso_local global i32 0, align 4
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@GIT_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@GIT_DIR_EXPLICIT = common dso_local global i32 0, align 4
@PATH_SEP = common dso_local global i32 0, align 4
@canonicalize_ceiling_entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GIT_DISCOVERY_ACROSS_FILESYSTEM\00", align 1
@DEFAULT_GIT_DIR_ENVIRONMENT = common dso_local global i8* null, align 8
@READ_GITFILE_ERR_NOT_A_FILE = common dso_local global i32 0, align 4
@READ_GITFILE_ERR_STAT_FAILED = common dso_local global i32 0, align 4
@GIT_DIR_INVALID_GITFILE = common dso_local global i32 0, align 4
@GIT_DIR_DISCOVERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@GIT_DIR_BARE = common dso_local global i32 0, align 4
@GIT_DIR_HIT_CEILING = common dso_local global i32 0, align 4
@GIT_DIR_HIT_MOUNT_POINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.strbuf*, i32)* @setup_git_directory_gently_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_git_directory_gently_1(%struct.strbuf* %0, %struct.strbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.string_list, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @CEILING_DIRECTORIES_ENVIRONMENT, align 4
  %19 = call i8* @getenv(i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = bitcast %struct.string_list* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  store i32 -1, i32* %11, align 4
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @offset_1st_component(i32* %23)
  store i32 %24, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i32 1, i32* %14, align 4
  %25 = load i32, i32* @GIT_DIR_ENVIRONMENT, align 4
  %26 = call i8* @getenv(i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strbuf_addstr(%struct.strbuf* %30, i8* %31)
  %33 = load i32, i32* @GIT_DIR_EXPLICIT, align 4
  store i32 %33, i32* %4, align 4
  br label %220

34:                                               ; preds = %3
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  store i32 0, i32* %15, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @PATH_SEP, align 4
  %40 = call i32 @string_list_split(%struct.string_list* %9, i8* %38, i32 %39, i32 -1)
  %41 = load i32, i32* @canonicalize_ceiling_entry, align 4
  %42 = call i32 @filter_string_list(%struct.string_list* %9, i32 0, i32 %41, i32* %15)
  %43 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @longest_ancestor_length(i32* %45, %struct.string_list* %9)
  store i32 %46, i32* %11, align 4
  %47 = call i32 @string_list_clear(%struct.string_list* %9, i32 0)
  br label %48

48:                                               ; preds = %37, %34
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %52, 2
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @is_dir_sep(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %63
  %75 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %76 = call i32 @strbuf_addch(%struct.strbuf* %75, i8 signext 47)
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %74, %63, %57, %54
  %80 = call i32 @git_env_bool(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 0)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @get_device_or_die(i32* %89, i32* null, i32 0)
  store i64 %90, i64* %13, align 8
  br label %91

91:                                               ; preds = %86, %79
  br label %92

92:                                               ; preds = %219, %91
  %93 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %101 = call i32 @strbuf_addch(%struct.strbuf* %100, i8 signext 47)
  br label %102

102:                                              ; preds = %99, %92
  %103 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %104 = load i8*, i8** @DEFAULT_GIT_DIR_ENVIRONMENT, align 8
  %105 = call i32 @strbuf_addstr(%struct.strbuf* %103, i8* %104)
  %106 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %113

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %111
  %114 = phi i32* [ null, %111 ], [ %17, %112 ]
  %115 = call i8* @read_gitfile_gently(i32* %108, i32* %114)
  store i8* %115, i8** %10, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %142, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* @READ_GITFILE_ERR_NOT_A_FILE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %121, %118
  %126 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %127 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i64 @is_git_directory(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i8*, i8** @DEFAULT_GIT_DIR_ENVIRONMENT, align 8
  store i8* %132, i8** %10, align 8
  br label %133

133:                                              ; preds = %131, %125
  br label %141

134:                                              ; preds = %121
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @READ_GITFILE_ERR_STAT_FAILED, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @GIT_DIR_INVALID_GITFILE, align 4
  store i32 %139, i32* %4, align 4
  br label %220

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %133
  br label %142

142:                                              ; preds = %141, %113
  %143 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @strbuf_setlen(%struct.strbuf* %143, i32 %144)
  %146 = load i8*, i8** %10, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @strbuf_addstr(%struct.strbuf* %149, i8* %150)
  %152 = load i32, i32* @GIT_DIR_DISCOVERED, align 4
  store i32 %152, i32* %4, align 4
  br label %220

153:                                              ; preds = %142
  %154 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %155 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = call i64 @is_git_directory(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %161 = call i32 @strbuf_addstr(%struct.strbuf* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %162 = load i32, i32* @GIT_DIR_BARE, align 4
  store i32 %162, i32* %4, align 4
  br label %220

163:                                              ; preds = %153
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @GIT_DIR_HIT_CEILING, align 4
  store i32 %168, i32* %4, align 4
  br label %220

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %188, %169
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %177 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @is_dir_sep(i32 %182)
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  br label %186

186:                                              ; preds = %175, %170
  %187 = phi i1 [ false, %170 ], [ %185, %175 ]
  br i1 %187, label %188, label %189

188:                                              ; preds = %186
  br label %170

189:                                              ; preds = %186
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %11, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i32, i32* @GIT_DIR_HIT_CEILING, align 4
  store i32 %194, i32* %4, align 4
  br label %220

195:                                              ; preds = %189
  %196 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* %16, align 4
  br label %204

202:                                              ; preds = %195
  %203 = load i32, i32* %12, align 4
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %201, %200 ], [ %203, %202 ]
  %206 = call i32 @strbuf_setlen(%struct.strbuf* %196, i32 %205)
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %204
  %210 = load i64, i64* %13, align 8
  %211 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %212 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %16, align 4
  %215 = call i64 @get_device_or_die(i32* %213, i32* null, i32 %214)
  %216 = icmp ne i64 %210, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = load i32, i32* @GIT_DIR_HIT_MOUNT_POINT, align 4
  store i32 %218, i32* %4, align 4
  br label %220

219:                                              ; preds = %209, %204
  br label %92

220:                                              ; preds = %217, %193, %167, %159, %148, %138, %29
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i8* @getenv(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @offset_1st_component(i32*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @string_list_split(%struct.string_list*, i8*, i32, i32) #1

declare dso_local i32 @filter_string_list(%struct.string_list*, i32, i32, i32*) #1

declare dso_local i32 @longest_ancestor_length(i32*, %struct.string_list*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @is_dir_sep(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @git_env_bool(i8*, i32) #1

declare dso_local i64 @get_device_or_die(i32*, i32*, i32) #1

declare dso_local i8* @read_gitfile_gently(i32*, i32*) #1

declare dso_local i64 @is_git_directory(i32*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
