; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_commit__create.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_rebase_commit__create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 (i32*, i32*, i8*, i32)* }
%struct.TYPE_7__ = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_REBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"conflicts have not been resolved\00", align 1
@GIT_EUNMERGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"this patch has already been applied\00", align 1
@GIT_EAPPLIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"commit signing_cb failed\00", align 1
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@GIT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_8__*, i32*, i32*, i32*, i32*, i8*, i8*)* @rebase_commit__create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_commit__create(i32** %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, i32* %4, i32* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %30 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %30, i32* %24, align 4
  %31 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %31, i32* %25, align 4
  %32 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %32, i32* %26, align 4
  store i8* null, i8** %27, align 8
  store i8* null, i8** %28, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_7__* @git_array_get(i32 %35, i32 %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %17, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @git_index_has_conflicts(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %8
  %44 = load i32, i32* @GIT_ERROR_REBASE, align 4
  %45 = call i32 @git_error_set(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @GIT_EUNMERGED, align 4
  store i32 %46, i32* %29, align 4
  br label %175

47:                                               ; preds = %8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call i32 @git_commit_lookup(i32** %18, i32 %50, i32* %52)
  store i32 %53, i32* %29, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %47
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @git_commit_tree(i32** %20, i32* %56)
  store i32 %57, i32* %29, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** %11, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @git_index_write_tree_to(i32* %22, i32* %60, i32 %63)
  store i32 %64, i32* %29, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @git_tree_lookup(i32** %21, i32 %69, i32* %22)
  store i32 %70, i32* %29, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %59, %55, %47
  br label %175

73:                                               ; preds = %66
  %74 = load i32*, i32** %20, align 8
  %75 = call i32 @git_tree_id(i32* %74)
  %76 = call i64 @git_oid_equal(i32* %22, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @GIT_ERROR_REBASE, align 4
  %80 = call i32 @git_error_set(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @GIT_EAPPLIED, align 4
  store i32 %81, i32* %29, align 4
  br label %175

82:                                               ; preds = %73
  %83 = load i32*, i32** %13, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %18, align 8
  %87 = call i32* @git_commit_author(i32* %86)
  store i32* %87, i32** %13, align 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i8*, i8** %16, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** %18, align 8
  %93 = call i8* @git_commit_message_encoding(i32* %92)
  store i8* %93, i8** %15, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = call i8* @git_commit_message(i32* %94)
  store i8* %95, i8** %16, align 8
  br label %96

96:                                               ; preds = %91, %88
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i32*, i32** %21, align 8
  %105 = call i32 @git_commit_create_buffer(i32* %24, i32 %99, i32* %100, i32* %101, i8* %102, i8* %103, i32* %104, i32 1, i32** %12)
  store i32 %105, i32* %29, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %175

108:                                              ; preds = %96
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32 (i32*, i32*, i8*, i32)*, i32 (i32*, i32*, i8*, i32)** %111, align 8
  %113 = icmp ne i32 (i32*, i32*, i8*, i32)* %112, null
  br i1 %113, label %114, label %141

114:                                              ; preds = %108
  %115 = call i32 (...) @git_error_clear()
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32 (i32*, i32*, i8*, i32)*, i32 (i32*, i32*, i8*, i32)** %118, align 8
  %120 = call i8* @git_buf_cstr(i32* %24)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 %119(i32* %25, i32* %26, i8* %120, i32 %124)
  %126 = call i32 @git_error_set_after_callback_function(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 %126, i32* %29, align 4
  %127 = load i32, i32* %29, align 4
  %128 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %114
  %131 = call i32 @git_buf_dispose(i32* %25)
  %132 = call i32 @git_buf_dispose(i32* %26)
  %133 = call i32 (...) @git_error_clear()
  %134 = load i32, i32* @GIT_OK, align 4
  store i32 %134, i32* %29, align 4
  br label %140

135:                                              ; preds = %114
  %136 = load i32, i32* %29, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %175

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139, %130
  br label %141

141:                                              ; preds = %140, %108
  %142 = call i64 @git_buf_is_allocated(i32* %25)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = call i32 @git_buf_contains_nul(i32* %25)
  %146 = call i32 @assert(i32 %145)
  %147 = call i8* @git_buf_cstr(i32* %25)
  store i8* %147, i8** %28, align 8
  br label %148

148:                                              ; preds = %144, %141
  %149 = call i64 @git_buf_is_allocated(i32* %26)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = call i32 @git_buf_contains_nul(i32* %26)
  %153 = call i32 @assert(i32 %152)
  %154 = call i8* @git_buf_cstr(i32* %26)
  store i8* %154, i8** %27, align 8
  br label %155

155:                                              ; preds = %151, %148
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @git_buf_cstr(i32* %24)
  %160 = load i8*, i8** %28, align 8
  %161 = load i8*, i8** %27, align 8
  %162 = call i32 @git_commit_create_with_signature(i32* %23, i32 %158, i8* %159, i8* %160, i8* %161)
  store i32 %162, i32* %29, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %175

165:                                              ; preds = %155
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @git_commit_lookup(i32** %19, i32 %168, i32* %23)
  store i32 %169, i32* %29, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %175

172:                                              ; preds = %165
  %173 = load i32*, i32** %19, align 8
  %174 = load i32**, i32*** %9, align 8
  store i32* %173, i32** %174, align 8
  br label %175

175:                                              ; preds = %172, %171, %164, %138, %107, %78, %72, %43
  %176 = load i32, i32* %29, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32*, i32** %19, align 8
  %180 = call i32 @git_commit_free(i32* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = call i32 @git_buf_dispose(i32* %25)
  %183 = call i32 @git_buf_dispose(i32* %26)
  %184 = call i32 @git_buf_dispose(i32* %24)
  %185 = load i32*, i32** %18, align 8
  %186 = call i32 @git_commit_free(i32* %185)
  %187 = load i32*, i32** %20, align 8
  %188 = call i32 @git_tree_free(i32* %187)
  %189 = load i32*, i32** %21, align 8
  %190 = call i32 @git_tree_free(i32* %189)
  %191 = load i32, i32* %29, align 4
  ret i32 %191
}

declare dso_local %struct.TYPE_7__* @git_array_get(i32, i32) #1

declare dso_local i64 @git_index_has_conflicts(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_index_write_tree_to(i32*, i32*, i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i64 @git_oid_equal(i32*, i32) #1

declare dso_local i32 @git_tree_id(i32*) #1

declare dso_local i32* @git_commit_author(i32*) #1

declare dso_local i8* @git_commit_message_encoding(i32*) #1

declare dso_local i8* @git_commit_message(i32*) #1

declare dso_local i32 @git_commit_create_buffer(i32*, i32, i32*, i32*, i8*, i8*, i32*, i32, i32**) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_error_set_after_callback_function(i32, i8*) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i64 @git_buf_is_allocated(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_buf_contains_nul(i32*) #1

declare dso_local i32 @git_commit_create_with_signature(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
