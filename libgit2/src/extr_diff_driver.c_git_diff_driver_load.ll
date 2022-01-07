; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_git_diff_driver_load.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_git_diff_driver_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@DIFF_DRIVER_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"diff.%s.binary\00", align 1
@global_drivers = common dso_local global %struct.TYPE_23__* null, align 8
@DIFF_DRIVER_BINARY = common dso_local global i64 0, align 8
@GIT_DIFF_FORCE_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"diff..\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"xfuncname\00", align 1
@diff_driver_xfuncname = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"funcname\00", align 1
@diff_driver_funcname = common dso_local global i32 0, align 4
@DIFF_DRIVER_PATTERNLIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"wordregex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__**, i32*, i8*)* @git_diff_driver_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_diff_driver_load(%struct.TYPE_23__** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_25__, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_23__** %0, %struct.TYPE_23__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %12, align 8
  %17 = bitcast %struct.TYPE_25__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_25__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_22__* @git_repository_driver_registry(i32* %18)
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %9, align 8
  %20 = icmp eq %struct.TYPE_22__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %207

22:                                               ; preds = %3
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.TYPE_23__* @git_strmap_get(i32 %25, i8* %26)
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %10, align 8
  %28 = icmp ne %struct.TYPE_23__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %31 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %31, align 8
  store i32 0, i32* %4, align 4
  br label %207

32:                                               ; preds = %22
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @diff_driver_alloc(%struct.TYPE_23__** %10, i64* %11, i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %175

37:                                               ; preds = %32
  %38 = load i32, i32* @DIFF_DRIVER_AUTO, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @git_repository_config_snapshot(i32** %12, i32* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @git_error_clear()
  br label %175

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @git_buf_printf(%struct.TYPE_25__* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %175

51:                                               ; preds = %46
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @git_config__get_bool_force(i32* %52, i32 %54, i32 -1)
  switch i32 %55, label %65 [
    i32 1, label %56
    i32 0, label %61
  ]

56:                                               ; preds = %51
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** @global_drivers, align 8
  %58 = load i64, i64* @DIFF_DRIVER_BINARY, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i64 %58
  %60 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  store %struct.TYPE_23__* %59, %struct.TYPE_23__** %60, align 8
  br label %175

61:                                               ; preds = %51
  %62 = load i32, i32* @GIT_DIFF_FORCE_TEXT, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  store i32 1, i32* %15, align 4
  br label %66

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %69 = add i64 %67, %68
  %70 = call i32 @git_buf_truncate(%struct.TYPE_25__* %13, i64 %69)
  %71 = call i32 @git_buf_PUTS(%struct.TYPE_25__* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %71, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %175

74:                                               ; preds = %66
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @diff_driver_xfuncname, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %80 = call i32 @git_config_get_multivar_foreach(i32* %75, i32 %77, i32* null, i32 %78, %struct.TYPE_23__* %79)
  store i32 %80, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @GIT_ENOTFOUND, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %175

87:                                               ; preds = %82
  %88 = call i32 (...) @git_error_clear()
  br label %89

89:                                               ; preds = %87, %74
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %92 = add i64 %90, %91
  %93 = call i32 @git_buf_truncate(%struct.TYPE_25__* %13, i64 %92)
  %94 = call i32 @git_buf_PUTS(%struct.TYPE_25__* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %94, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %175

97:                                               ; preds = %89
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @diff_driver_funcname, align 4
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %103 = call i32 @git_config_get_multivar_foreach(i32* %98, i32 %100, i32* null, i32 %101, %struct.TYPE_23__* %102)
  store i32 %103, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @GIT_ENOTFOUND, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %175

110:                                              ; preds = %105
  %111 = call i32 (...) @git_error_clear()
  br label %112

112:                                              ; preds = %110, %97
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @git_array_size(i32 %115)
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* @DIFF_DRIVER_PATTERNLIST, align 4
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  store i32 1, i32* %15, align 4
  br label %122

122:                                              ; preds = %118, %112
  %123 = load i64, i64* %11, align 8
  %124 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %125 = add i64 %123, %124
  %126 = call i32 @git_buf_truncate(%struct.TYPE_25__* %13, i64 %125)
  %127 = call i32 @git_buf_PUTS(%struct.TYPE_25__* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %127, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %175

130:                                              ; preds = %122
  %131 = load i32*, i32** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @git_config__lookup_entry(%struct.TYPE_24__** %14, i32* %131, i32 %133, i32 0)
  store i32 %134, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %175

137:                                              ; preds = %130
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %139 = icmp ne %struct.TYPE_24__* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %140, %137
  br label %157

146:                                              ; preds = %140
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @git_regexp_compile(i32* %148, i32 %151, i32 0)
  store i32 %152, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %146
  store i32 1, i32* %15, align 4
  br label %156

155:                                              ; preds = %146
  br label %175

156:                                              ; preds = %154
  br label %157

157:                                              ; preds = %156, %145
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %175

161:                                              ; preds = %157
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %169 = call i32 @git_strmap_set(i32 %164, i32 %167, %struct.TYPE_23__* %168)
  store i32 %169, i32* %8, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %175

172:                                              ; preds = %161
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %174 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  store %struct.TYPE_23__* %173, %struct.TYPE_23__** %174, align 8
  br label %175

175:                                              ; preds = %172, %171, %160, %155, %136, %129, %109, %96, %86, %73, %56, %50, %44, %36
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %177 = call i32 @git_config_entry_free(%struct.TYPE_24__* %176)
  %178 = call i32 @git_buf_dispose(%struct.TYPE_25__* %13)
  %179 = load i32*, i32** %12, align 8
  %180 = call i32 @git_config_free(i32* %179)
  %181 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = icmp ne %struct.TYPE_23__* %182, null
  br i1 %183, label %194, label %184

184:                                              ; preds = %175
  %185 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @git_diff_driver_builtin(%struct.TYPE_23__** %185, %struct.TYPE_22__* %186, i8* %187)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %184
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %191, %184
  br label %194

194:                                              ; preds = %193, %175
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %196 = icmp ne %struct.TYPE_23__* %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %199 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %5, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %199, align 8
  %201 = icmp ne %struct.TYPE_23__* %198, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %204 = call i32 @git_diff_driver_free(%struct.TYPE_23__* %203)
  br label %205

205:                                              ; preds = %202, %197, %194
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %205, %29, %21
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_22__* @git_repository_driver_registry(i32*) #2

declare dso_local %struct.TYPE_23__* @git_strmap_get(i32, i8*) #2

declare dso_local i32 @diff_driver_alloc(%struct.TYPE_23__**, i64*, i8*) #2

declare dso_local i64 @git_repository_config_snapshot(i32**, i32*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_25__*, i8*, i8*) #2

declare dso_local i32 @git_config__get_bool_force(i32*, i32, i32) #2

declare dso_local i32 @git_buf_truncate(%struct.TYPE_25__*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @git_buf_PUTS(%struct.TYPE_25__*, i8*) #2

declare dso_local i32 @git_config_get_multivar_foreach(i32*, i32, i32*, i32, %struct.TYPE_23__*) #2

declare dso_local i64 @git_array_size(i32) #2

declare dso_local i32 @git_config__lookup_entry(%struct.TYPE_24__**, i32*, i32, i32) #2

declare dso_local i32 @git_regexp_compile(i32*, i32, i32) #2

declare dso_local i32 @git_strmap_set(i32, i32, %struct.TYPE_23__*) #2

declare dso_local i32 @git_config_entry_free(%struct.TYPE_24__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_25__*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_diff_driver_builtin(%struct.TYPE_23__**, %struct.TYPE_22__*, i8*) #2

declare dso_local i32 @git_diff_driver_free(%struct.TYPE_23__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
