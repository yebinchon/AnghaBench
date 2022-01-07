; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_is_submodule_modified.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_is_submodule_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i8*, i32, i32 }
%struct.strbuf = type { i8*, i64 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"'%s' not recognized as a git repository\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"--porcelain=2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-uno\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Could not run 'git status --porcelain=2' in submodule %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i64 0, align 8
@DIRTY_SUBMODULE_UNTRACKED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"T XY SSSS\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"invalid status --porcelain=2 line %s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"S..U\00", align 1
@DIRTY_SUBMODULE_MODIFIED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"'git status --porcelain=2' failed in submodule %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_submodule_modified(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.child_process, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast %struct.child_process* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %13 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @read_gitfile(i8* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @is_git_directory(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @is_directory(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @die(i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = call i32 @strbuf_release(%struct.strbuf* %7)
  store i32 0, i32* %3, align 4
  br label %182

38:                                               ; preds = %24
  %39 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %40 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 5
  %41 = call i32 @argv_array_pushl(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 5
  %46 = call i32 @argv_array_push(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %38
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 4
  %49 = call i32 @prepare_submodule_repo_env(i32* %48)
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  store i32 -1, i32* %52, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 3
  store i8* %53, i8** %54, align 8
  %55 = call i64 @start_command(%struct.child_process* %6)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %47
  %61 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32* @xfdopen(i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %63, i32** %8, align 8
  br label %64

64:                                               ; preds = %167, %60
  %65 = load i32*, i32** %8, align 8
  %66 = call i64 @strbuf_getwholeline(%struct.strbuf* %7, i32* %65, i8 signext 10)
  %67 = load i64, i64* @EOF, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %168

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 63
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @DIRTY_SUBMODULE_UNTRACKED, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 117
  br i1 %86, label %101, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 49
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 50
  br i1 %100, label %101, label %153

101:                                              ; preds = %94, %87, %80
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @BUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %101
  %111 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 5
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 83
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 85
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i32, i32* @DIRTY_SUBMODULE_UNTRACKED, align 4
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %124, %117, %110
  %129 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 117
  br i1 %134, label %148, label %135

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 50
  br i1 %141, label %148, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 5
  %146 = call i64 @memcmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142, %135, %128
  %149 = load i32, i32* @DIRTY_SUBMODULE_MODIFIED, align 4
  %150 = load i32, i32* %9, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %148, %142
  br label %153

153:                                              ; preds = %152, %94
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @DIRTY_SUBMODULE_MODIFIED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @DIRTY_SUBMODULE_UNTRACKED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163, %158
  store i32 1, i32* %11, align 4
  br label %168

167:                                              ; preds = %163, %153
  br label %64

168:                                              ; preds = %166, %64
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @fclose(i32* %169)
  %171 = call i64 @finish_command(%struct.child_process* %6)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i8*, i8** %4, align 8
  %178 = call i32 @die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %177)
  br label %179

179:                                              ; preds = %176, %173, %168
  %180 = call i32 @strbuf_release(%struct.strbuf* %7)
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %179, %36
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i8* @read_gitfile(i8*) #2

declare dso_local i32 @is_git_directory(i8*) #2

declare dso_local i64 @is_directory(i8*) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32* @xfdopen(i32, i8*) #2

declare dso_local i64 @strbuf_getwholeline(%struct.strbuf*, i32*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @BUG(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
