; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_validate_untracked_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_validate_untracked_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.untracked_cache_dir = type { i32 }
%struct.dir_struct = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.untracked_cache_dir* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.pathspec = type { i64 }

@validate_untracked_cache.untracked_cache_disabled = internal global i32 -1, align 4
@.str = private unnamed_addr constant [28 x i8] c"GIT_DISABLE_UNTRACKED_CACHE\00", align 1
@DIR_SHOW_OTHER_DIRECTORIES = common dso_local global i32 0, align 4
@DIR_SHOW_IGNORED = common dso_local global i32 0, align 4
@DIR_SHOW_IGNORED_TOO = common dso_local global i32 0, align 4
@DIR_COLLECT_IGNORED = common dso_local global i32 0, align 4
@EXC_CMDL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"untracked cache is disabled on this system or location\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.untracked_cache_dir* (%struct.dir_struct*, i32, %struct.pathspec*)* @validate_untracked_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.untracked_cache_dir* @validate_untracked_cache(%struct.dir_struct* %0, i32 %1, %struct.pathspec* %2) #0 {
  %4 = alloca %struct.untracked_cache_dir*, align 8
  %5 = alloca %struct.dir_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pathspec*, align 8
  %8 = alloca %struct.untracked_cache_dir*, align 8
  %9 = alloca i32, align 4
  store %struct.dir_struct* %0, %struct.dir_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pathspec* %2, %struct.pathspec** %7, align 8
  %10 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %11 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %10, i32 0, i32 3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %4, align 8
  br label %190

15:                                               ; preds = %3
  %16 = load i32, i32* @validate_untracked_cache.untracked_cache_disabled, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @git_env_bool(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %19, i32* @validate_untracked_cache.untracked_cache_disabled, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @validate_untracked_cache.untracked_cache_disabled, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %4, align 8
  br label %190

24:                                               ; preds = %20
  %25 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %26 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %4, align 8
  br label %190

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %35 = icmp ne %struct.pathspec* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %38 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %30
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %4, align 8
  br label %190

42:                                               ; preds = %36, %33
  %43 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %44 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %47 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %45, %50
  br i1 %51, label %70, label %52

52:                                               ; preds = %42
  %53 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %54 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DIR_SHOW_OTHER_DIRECTORIES, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %61 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DIR_SHOW_IGNORED, align 4
  %64 = load i32, i32* @DIR_SHOW_IGNORED_TOO, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @DIR_COLLECT_IGNORED, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %62, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59, %52, %42
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %4, align 8
  br label %190

71:                                               ; preds = %59
  %72 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %73 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %76 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %75, i32 0, i32 3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %74, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %71
  %82 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %83 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %86 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @strcmp(i64 %84, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %4, align 8
  br label %190

93:                                               ; preds = %81, %71
  %94 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %95 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %94, i32 0, i32 5
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i64, i64* @EXC_CMDL, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %4, align 8
  br label %190

103:                                              ; preds = %93
  %104 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %105 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %104, i32 0, i32 3
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = call i32 @ident_in_untracked(%struct.TYPE_9__* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %111 = call i32 @warning(i32 %110)
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %4, align 8
  br label %190

112:                                              ; preds = %103
  %113 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %114 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %113, i32 0, i32 3
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 4
  %117 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %116, align 8
  %118 = icmp ne %struct.untracked_cache_dir* %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %112
  store i32 4, i32* %9, align 4
  %120 = call %struct.untracked_cache_dir* @xmalloc(i32 4)
  %121 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %122 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %121, i32 0, i32 3
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  store %struct.untracked_cache_dir* %120, %struct.untracked_cache_dir** %124, align 8
  %125 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %126 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %125, i32 0, i32 3
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 4
  %129 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %128, align 8
  %130 = call i32 @memset(%struct.untracked_cache_dir* %129, i32 0, i32 4)
  br label %131

131:                                              ; preds = %119, %112
  %132 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %133 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %132, i32 0, i32 3
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  %136 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %135, align 8
  store %struct.untracked_cache_dir* %136, %struct.untracked_cache_dir** %8, align 8
  %137 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %138 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %141 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %140, i32 0, i32 3
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = call i32 @oideq(i32* %139, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %161, label %147

147:                                              ; preds = %131
  %148 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %149 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %148, i32 0, i32 3
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %152 = call i32 @invalidate_gitignore(%struct.TYPE_9__* %150, %struct.untracked_cache_dir* %151)
  %153 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %154 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %153, i32 0, i32 3
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %158 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %157, i32 0, i32 4
  %159 = bitcast %struct.TYPE_7__* %156 to i8*
  %160 = bitcast %struct.TYPE_7__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 8 %160, i64 4, i1 false)
  br label %161

161:                                              ; preds = %147, %131
  %162 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %163 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %166 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %165, i32 0, i32 3
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = call i32 @oideq(i32* %164, i32* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %161
  %173 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %174 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %173, i32 0, i32 3
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %177 = call i32 @invalidate_gitignore(%struct.TYPE_9__* %175, %struct.untracked_cache_dir* %176)
  %178 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %179 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %178, i32 0, i32 3
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %183 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %182, i32 0, i32 2
  %184 = bitcast %struct.TYPE_8__* %181 to i8*
  %185 = bitcast %struct.TYPE_8__* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 4, i1 false)
  br label %186

186:                                              ; preds = %172, %161
  %187 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %188 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %187, i32 0, i32 0
  store i32 1, i32* %188, align 4
  %189 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  store %struct.untracked_cache_dir* %189, %struct.untracked_cache_dir** %4, align 8
  br label %190

190:                                              ; preds = %186, %109, %102, %92, %70, %41, %29, %23, %14
  %191 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %4, align 8
  ret %struct.untracked_cache_dir* %191
}

declare dso_local i32 @git_env_bool(i8*, i32) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i32 @ident_in_untracked(%struct.TYPE_9__*) #1

declare dso_local i32 @warning(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.untracked_cache_dir* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.untracked_cache_dir*, i32, i32) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local i32 @invalidate_gitignore(%struct.TYPE_9__*, %struct.untracked_cache_dir*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
