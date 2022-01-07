; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_read_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i8* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"fetchRecurseSubmodules\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@GIT_SUBMODULE_STATUS_IN_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @submodule_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodule_read_config(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @get_value(i8** %6, i32* %10, i32* %5, i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @looks_like_command_line_option(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 10
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 10
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @git__free(i8* %38)
  br label %40

40:                                               ; preds = %35, %27
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @git__strdup(i8* %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 10
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 10
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %47)
  br label %49

49:                                               ; preds = %40, %20
  br label %50

50:                                               ; preds = %49, %16
  br label %57

51:                                               ; preds = %2
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @GIT_ENOTFOUND, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %194

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @get_value(i8** %6, i32* %58, i32* %5, i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %62, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @looks_like_command_line_option(i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i8* @git__strdup(i8* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 9
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 9
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %75)
  br label %77

77:                                               ; preds = %68, %64
  br label %84

78:                                               ; preds = %57
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @GIT_ENOTFOUND, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %194

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %77
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @get_value(i8** %6, i32* %85, i32* %5, i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %89, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = call i8* @git__strdup(i8* %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 8
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %98)
  br label %106

100:                                              ; preds = %84
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @GIT_ENOTFOUND, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %194

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %91
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @get_value(i8** %6, i32* %107, i32* %5, i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %111, i32* %7, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %106
  store i32 1, i32* %8, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 6
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @git_submodule_parse_update(i32* %115, i8* %116)
  store i32 %117, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %194

120:                                              ; preds = %113
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 4
  br label %132

126:                                              ; preds = %106
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @GIT_ENOTFOUND, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %194

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %120
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @get_value(i8** %6, i32* %133, i32* %5, i8* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 %137, i32* %7, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %132
  store i32 1, i32* %8, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @git_submodule_parse_recurse(i32* %141, i8* %142)
  store i32 %143, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %194

146:                                              ; preds = %139
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  br label %158

152:                                              ; preds = %132
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @GIT_ENOTFOUND, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %194

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %146
  %159 = load i32*, i32** %4, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @get_value(i8** %6, i32* %159, i32* %5, i8* %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %163, i32* %7, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %158
  store i32 1, i32* %8, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 @git_submodule_parse_ignore(i32* %167, i8* %168)
  store i32 %169, i32* %7, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %194

172:                                              ; preds = %165
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  br label %184

178:                                              ; preds = %158
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @GIT_ENOTFOUND, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %194

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %172
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %187, %184
  store i32 0, i32* %7, align 4
  br label %194

194:                                              ; preds = %193, %182, %171, %156, %145, %130, %119, %104, %82, %55
  %195 = call i32 @git_buf_dispose(i32* %5)
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i32 @get_value(i8**, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @looks_like_command_line_option(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i8* @git__strdup(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @git_submodule_parse_update(i32*, i8*) #1

declare dso_local i32 @git_submodule_parse_recurse(i32*, i8*) #1

declare dso_local i32 @git_submodule_parse_ignore(i32*, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
