; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_set_upstream.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_set_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4
@GIT_BRANCH_REMOTE = common dso_local global i32 0, align 4
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot set upstream for branch '%s'\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"branch.%s.remote\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"branch.%s.merge\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_branch_set_upstream(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %18, i32* %7, align 4
  store i32* null, i32** %10, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @git_reference_name(i32* %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @git_reference__is_branch(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %12, align 8
  %26 = call i32 @not_a_local_branch(i8* %25)
  store i32 %26, i32* %3, align 4
  br label %153

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @git_reference_owner(i32* %28)
  %30 = call i64 @git_repository_config__weakptr(i32** %11, i32* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %153

33:                                               ; preds = %27
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32*, i32** %11, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @unset_upstream(i32* %42, i8* %43)
  store i32 %44, i32* %3, align 4
  br label %153

45:                                               ; preds = %33
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @git_reference_owner(i32* %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %51 = call i64 @git_branch_lookup(i32** %8, i32* %48, i8* %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %14, align 4
  br label %67

54:                                               ; preds = %45
  %55 = load i32*, i32** %9, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @GIT_BRANCH_REMOTE, align 4
  %58 = call i64 @git_branch_lookup(i32** %8, i32* %55, i8* %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  br label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @git_error_set(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %65, i32* %3, align 4
  br label %153

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @git_buf_puts(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %71, i32* %15, align 4
  br label %77

72:                                               ; preds = %67
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i8* @git_reference_name(i32* %74)
  %76 = call i32 @git_branch_remote_name(i32* %7, i32* %73, i8* %75)
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %72, %70
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %146

81:                                               ; preds = %77
  %82 = load i8*, i8** %13, align 8
  %83 = call i64 @git_buf_printf(i32* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %146

86:                                               ; preds = %81
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @git_buf_cstr(i32* %6)
  %89 = call i32 @git_buf_cstr(i32* %7)
  %90 = call i64 @git_config_set_string(i32* %87, i32 %88, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %146

93:                                               ; preds = %86
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = call i32 @git_buf_clear(i32* %7)
  %98 = load i32*, i32** %8, align 8
  %99 = call i8* @git_reference_name(i32* %98)
  %100 = call i32 @git_buf_puts(i32* %7, i8* %99)
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %146

103:                                              ; preds = %96
  br label %128

104:                                              ; preds = %93
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @git_buf_cstr(i32* %7)
  %107 = call i64 @git_remote_lookup(i32** %10, i32* %105, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %146

110:                                              ; preds = %104
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = call i8* @git_reference_name(i32* %112)
  %114 = call i32* @git_remote__matching_dst_refspec(i32* %111, i8* %113)
  store i32* %114, i32** %16, align 8
  %115 = call i32 @git_buf_clear(i32* %7)
  %116 = load i32*, i32** %16, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32*, i32** %16, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = call i8* @git_reference_name(i32* %120)
  %122 = call i64 @git_refspec_rtransform(i32* %7, i32* %119, i8* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118, %110
  br label %146

125:                                              ; preds = %118
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @git_remote_free(i32* %126)
  store i32* null, i32** %10, align 8
  br label %128

128:                                              ; preds = %125, %103
  %129 = call i32 @git_buf_clear(i32* %6)
  %130 = load i8*, i8** %13, align 8
  %131 = call i64 @git_buf_printf(i32* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %146

134:                                              ; preds = %128
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @git_buf_cstr(i32* %6)
  %137 = call i32 @git_buf_cstr(i32* %7)
  %138 = call i64 @git_config_set_string(i32* %135, i32 %136, i32 %137)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %146

141:                                              ; preds = %134
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @git_reference_free(i32* %142)
  %144 = call i32 @git_buf_dispose(i32* %6)
  %145 = call i32 @git_buf_dispose(i32* %7)
  store i32 0, i32* %3, align 4
  br label %153

146:                                              ; preds = %140, %133, %124, %109, %102, %92, %85, %80
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @git_reference_free(i32* %147)
  %149 = call i32 @git_buf_dispose(i32* %6)
  %150 = call i32 @git_buf_dispose(i32* %7)
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @git_remote_free(i32* %151)
  store i32 -1, i32* %3, align 4
  br label %153

153:                                              ; preds = %146, %141, %61, %41, %32, %24
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i8* @git_reference_name(i32*) #1

declare dso_local i32 @git_reference__is_branch(i8*) #1

declare dso_local i32 @not_a_local_branch(i8*) #1

declare dso_local i64 @git_repository_config__weakptr(i32**, i32*) #1

declare dso_local i32* @git_reference_owner(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @unset_upstream(i32*, i8*) #1

declare dso_local i64 @git_branch_lookup(i32**, i32*, i8*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i32 @git_branch_remote_name(i32*, i32*, i8*) #1

declare dso_local i64 @git_buf_printf(i32*, i8*, i8*) #1

declare dso_local i64 @git_config_set_string(i32*, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i64 @git_remote_lookup(i32**, i32*, i32) #1

declare dso_local i32* @git_remote__matching_dst_refspec(i32*, i8*) #1

declare dso_local i64 @git_refspec_rtransform(i32*, i32*, i8*) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
