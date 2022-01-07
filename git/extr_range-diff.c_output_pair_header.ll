; ModuleID = '/home/carl/AnghaBench/git/extr_range-diff.c_output_pair_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_range-diff.c_output_pair_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.patch_util = type { %struct.object_id, i32, i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@DIFF_RESET = common dso_local global i32 0, align 4
@DIFF_FILE_OLD = common dso_local global i32 0, align 4
@DIFF_FILE_NEW = common dso_local global i32 0, align 4
@DIFF_COMMIT = common dso_local global i32 0, align 4
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%*s:  %s \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%*d:  %s \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" %*s:  %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" %*d:  %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@CMIT_FMT_ONELINE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, i32, %struct.strbuf*, %struct.strbuf*, %struct.patch_util*, %struct.patch_util*)* @output_pair_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_pair_header(%struct.diff_options* %0, i32 %1, %struct.strbuf* %2, %struct.strbuf* %3, %struct.patch_util* %4, %struct.patch_util* %5) #0 {
  %7 = alloca %struct.diff_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca %struct.patch_util*, align 8
  %12 = alloca %struct.patch_util*, align 8
  %13 = alloca %struct.object_id*, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.strbuf* %2, %struct.strbuf** %9, align 8
  store %struct.strbuf* %3, %struct.strbuf** %10, align 8
  store %struct.patch_util* %4, %struct.patch_util** %11, align 8
  store %struct.patch_util* %5, %struct.patch_util** %12, align 8
  %21 = load %struct.patch_util*, %struct.patch_util** %11, align 8
  %22 = icmp ne %struct.patch_util* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load %struct.patch_util*, %struct.patch_util** %11, align 8
  %25 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %24, i32 0, i32 0
  br label %29

26:                                               ; preds = %6
  %27 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %28 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %27, i32 0, i32 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi %struct.object_id* [ %25, %23 ], [ %28, %26 ]
  store %struct.object_id* %30, %struct.object_id** %13, align 8
  %31 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %32 = load i32, i32* @DIFF_RESET, align 4
  %33 = call i8* @diff_get_color_opt(%struct.diff_options* %31, i32 %32)
  store i8* %33, i8** %16, align 8
  %34 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %35 = load i32, i32* @DIFF_FILE_OLD, align 4
  %36 = call i8* @diff_get_color_opt(%struct.diff_options* %34, i32 %35)
  store i8* %36, i8** %17, align 8
  %37 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %38 = load i32, i32* @DIFF_FILE_NEW, align 4
  %39 = call i8* @diff_get_color_opt(%struct.diff_options* %37, i32 %38)
  store i8* %39, i8** %18, align 8
  %40 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %41 = load i32, i32* @DIFF_COMMIT, align 4
  %42 = call i8* @diff_get_color_opt(%struct.diff_options* %40, i32 %41)
  store i8* %42, i8** %19, align 8
  %43 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %29
  %48 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %49 = load %struct.object_id*, %struct.object_id** %13, align 8
  %50 = load i32, i32* @DEFAULT_ABBREV, align 4
  %51 = call i32 @find_unique_abbrev(%struct.object_id* %49, i32 %50)
  %52 = call i32 @strlen(i32 %51)
  %53 = call i32 @strbuf_addchars(%struct.strbuf* %48, i8 signext 45, i32 %52)
  br label %54

54:                                               ; preds = %47, %29
  %55 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %56 = icmp ne %struct.patch_util* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %17, align 8
  store i8* %58, i8** %20, align 8
  store i8 60, i8* %15, align 1
  br label %79

59:                                               ; preds = %54
  %60 = load %struct.patch_util*, %struct.patch_util** %11, align 8
  %61 = icmp ne %struct.patch_util* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %18, align 8
  store i8* %63, i8** %20, align 8
  store i8 62, i8* %15, align 1
  br label %78

64:                                               ; preds = %59
  %65 = load %struct.patch_util*, %struct.patch_util** %11, align 8
  %66 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %69 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @strcmp(i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i8*, i8** %19, align 8
  store i8* %74, i8** %20, align 8
  store i8 33, i8* %15, align 1
  br label %77

75:                                               ; preds = %64
  %76 = load i8*, i8** %19, align 8
  store i8* %76, i8** %20, align 8
  store i8 61, i8* %15, align 1
  br label %77

77:                                               ; preds = %75, %73
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %57
  %80 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %81 = call i32 @strbuf_reset(%struct.strbuf* %80)
  %82 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %83 = load i8, i8* %15, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 33
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i8*, i8** %17, align 8
  br label %90

88:                                               ; preds = %79
  %89 = load i8*, i8** %20, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i8* [ %87, %86 ], [ %89, %88 ]
  %92 = call i32 @strbuf_addstr(%struct.strbuf* %82, i8* %91)
  %93 = load %struct.patch_util*, %struct.patch_util** %11, align 8
  %94 = icmp ne %struct.patch_util* %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %114

102:                                              ; preds = %90
  %103 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.patch_util*, %struct.patch_util** %11, align 8
  %106 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  %109 = load %struct.patch_util*, %struct.patch_util** %11, align 8
  %110 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %109, i32 0, i32 0
  %111 = load i32, i32* @DEFAULT_ABBREV, align 4
  %112 = call i32 @find_unique_abbrev(%struct.object_id* %110, i32 %111)
  %113 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %102, %95
  %115 = load i8, i8* %15, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 33
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = load i8*, i8** %20, align 8
  %122 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %118, %114
  %124 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %125 = load i8, i8* %15, align 1
  %126 = call i32 @strbuf_addch(%struct.strbuf* %124, i8 signext %125)
  %127 = load i8, i8* %15, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 33
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %132, i8* %133)
  br label %135

135:                                              ; preds = %130, %123
  %136 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %137 = icmp ne %struct.patch_util* %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %135
  %139 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %142 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %157

145:                                              ; preds = %135
  %146 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %149 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  %152 = load %struct.patch_util*, %struct.patch_util** %12, align 8
  %153 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %152, i32 0, i32 0
  %154 = load i32, i32* @DEFAULT_ABBREV, align 4
  %155 = call i32 @find_unique_abbrev(%struct.object_id* %153, i32 %154)
  %156 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %147, i32 %151, i32 %155)
  br label %157

157:                                              ; preds = %145, %138
  %158 = load i32, i32* @the_repository, align 4
  %159 = load %struct.object_id*, %struct.object_id** %13, align 8
  %160 = call %struct.commit* @lookup_commit_reference(i32 %158, %struct.object_id* %159)
  store %struct.commit* %160, %struct.commit** %14, align 8
  %161 = load %struct.commit*, %struct.commit** %14, align 8
  %162 = icmp ne %struct.commit* %161, null
  br i1 %162, label %163, label %179

163:                                              ; preds = %157
  %164 = load i8, i8* %15, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 33
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %169 = load i8*, i8** %16, align 8
  %170 = load i8*, i8** %20, align 8
  %171 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %169, i8* %170)
  br label %172

172:                                              ; preds = %167, %163
  %173 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %174 = call i32 @strbuf_addch(%struct.strbuf* %173, i8 signext 32)
  %175 = load i32, i32* @CMIT_FMT_ONELINE, align 4
  %176 = load %struct.commit*, %struct.commit** %14, align 8
  %177 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %178 = call i32 @pp_commit_easy(i32 %175, %struct.commit* %176, %struct.strbuf* %177)
  br label %179

179:                                              ; preds = %172, %157
  %180 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %181 = load i8*, i8** %16, align 8
  %182 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %181)
  %183 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %184 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %187 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %190 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @fwrite(i32 %185, i32 %188, i32 1, i32 %191)
  ret void
}

declare dso_local i8* @diff_get_color_opt(%struct.diff_options*, i32) #1

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @find_unique_abbrev(%struct.object_id*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i32 @pp_commit_easy(i32, %struct.commit*, %struct.strbuf*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
