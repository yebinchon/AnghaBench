; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_workdir_iterator_test.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_workdir_iterator_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, i32, i8**, i8*)* @workdir_iterator_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workdir_iterator_test(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8** %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i8* %6, i8** %14, align 8
  %23 = bitcast %struct.TYPE_8__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @cl_git_sandbox_init(i8* %24)
  store i32 %25, i32* @g_repo, align 4
  %26 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @g_repo, align 4
  %33 = call i32 @git_iterator_for_workdir(i32** %15, i32 %32, i32* null, i32* null, %struct.TYPE_8__* %16)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %15, align 8
  %36 = call i32 @git_iterator_current(%struct.TYPE_9__** %17, i32* %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %7
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %39, %7
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @GIT_ITEROVER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %48 = icmp eq %struct.TYPE_9__* %47, null
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i1 [ false, %42 ], [ %48, %46 ]
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi i1 [ true, %39 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @cl_assert(i32 %53)
  br label %55

55:                                               ; preds = %121, %66, %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %125

58:                                               ; preds = %55
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @git_iterator_current_is_ignored(i32* %59)
  store i32 %60, i32* %22, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @S_ISDIR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @git_iterator_advance_into(%struct.TYPE_9__** %17, i32* %67)
  %69 = call i32 @cl_git_pass(i32 %68)
  br label %55

70:                                               ; preds = %58
  %71 = load i8**, i8*** %13, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i8**, i8*** %13, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cl_assert_equal_s(i8* %78, i32 %81)
  br label %83

83:                                               ; preds = %73, %70
  %84 = load i8*, i8** %14, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i8*, i8** %14, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @strcmp(i8* %87, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %22, align 4
  %95 = call i32 @cl_assert(i32 %94)
  br label %96

96:                                               ; preds = %93, %86, %83
  %97 = load i32, i32* %22, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %20, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @git_iterator_advance(%struct.TYPE_9__** %17, i32* %105)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %111 = icmp ne %struct.TYPE_9__* %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %109, %102
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* @GIT_ITEROVER, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %118 = icmp eq %struct.TYPE_9__* %117, null
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi i1 [ false, %112 ], [ %118, %116 ]
  br label %121

121:                                              ; preds = %119, %109
  %122 = phi i1 [ true, %109 ], [ %120, %119 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @cl_assert(i32 %123)
  br label %55

125:                                              ; preds = %55
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %19, align 4
  %128 = call i32 @cl_assert_equal_i(i32 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @cl_assert_equal_i(i32 %131, i32 %132)
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 @git_iterator_reset(i32* %134)
  %136 = call i32 @cl_git_pass(i32 %135)
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @git_iterator_current(%struct.TYPE_9__** %17, i32* %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %125
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %143 = icmp ne %struct.TYPE_9__* %142, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %141, %125
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* @GIT_ITEROVER, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %150 = icmp eq %struct.TYPE_9__* %149, null
  br label %151

151:                                              ; preds = %148, %144
  %152 = phi i1 [ false, %144 ], [ %150, %148 ]
  br label %153

153:                                              ; preds = %151, %141
  %154 = phi i1 [ true, %141 ], [ %152, %151 ]
  %155 = zext i1 %154 to i32
  %156 = call i32 @cl_assert(i32 %155)
  br label %157

157:                                              ; preds = %194, %166, %153
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %159 = icmp ne %struct.TYPE_9__* %158, null
  br i1 %159, label %160, label %198

160:                                              ; preds = %157
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @S_ISDIR(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load i32*, i32** %15, align 8
  %168 = call i32 @git_iterator_advance_into(%struct.TYPE_9__** %17, i32* %167)
  %169 = call i32 @cl_git_pass(i32 %168)
  br label %157

170:                                              ; preds = %160
  %171 = load i8**, i8*** %13, align 8
  %172 = icmp ne i8** %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load i8**, i8*** %13, align 8
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @cl_assert_equal_s(i8* %178, i32 %181)
  br label %183

183:                                              ; preds = %173, %170
  %184 = load i32, i32* %21, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %21, align 4
  %186 = load i32*, i32** %15, align 8
  %187 = call i32 @git_iterator_advance(%struct.TYPE_9__** %17, i32* %186)
  store i32 %187, i32* %18, align 4
  %188 = load i32, i32* %18, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %183
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* @GIT_ITEROVER, align 4
  %193 = icmp eq i32 %191, %192
  br label %194

194:                                              ; preds = %190, %183
  %195 = phi i1 [ true, %183 ], [ %193, %190 ]
  %196 = zext i1 %195 to i32
  %197 = call i32 @cl_assert(i32 %196)
  br label %157

198:                                              ; preds = %157
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* %21, align 4
  %201 = call i32 @cl_assert_equal_i(i32 %199, i32 %200)
  %202 = load i32*, i32** %15, align 8
  %203 = call i32 @git_iterator_free(i32* %202)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @git_iterator_current(%struct.TYPE_9__**, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_iterator_current_is_ignored(i32*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @git_iterator_advance_into(%struct.TYPE_9__**, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @git_iterator_advance(%struct.TYPE_9__**, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_iterator_reset(i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
