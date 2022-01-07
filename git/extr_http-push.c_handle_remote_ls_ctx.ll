; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_handle_remote_ls_ctx.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_handle_remote_ls_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }
%struct.xml_ctx = type { i8*, i64, i64 }
%struct.remote_ls_ctx = type { i32, i32, i64, i32 (%struct.remote_ls_ctx*)*, i32, i32 }

@DAV_PROPFIND_RESP = common dso_local global i32 0, align 4
@IS_DIR = common dso_local global i32 0, align 4
@PROCESS_DIRS = common dso_local global i32 0, align 4
@RECURSIVE = common dso_local global i32 0, align 4
@PROCESS_FILES = common dso_local global i32 0, align 4
@DAV_PROPFIND_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@repo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Parsed path '%s' does not match url: '%s'\00", align 1
@DAV_PROPFIND_COLLECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xml_ctx*, i32)* @handle_remote_ls_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_remote_ls_ctx(%struct.xml_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.xml_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.remote_ls_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.xml_ctx* %0, %struct.xml_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.remote_ls_ctx*
  store %struct.remote_ls_ctx* %11, %struct.remote_ls_ctx** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %186

14:                                               ; preds = %2
  %15 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @DAV_PROPFIND_RESP, align 4
  %19 = call i64 @strcmp(i64 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %98, label %21

21:                                               ; preds = %14
  %22 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %98

26:                                               ; preds = %21
  %27 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IS_DIR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %26
  %34 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %37, i32 0, i32 2
  %39 = call i32 @str_end_url_with_slash(i64 %36, i64* %38)
  %40 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PROCESS_DIRS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %47, i32 0, i32 3
  %49 = load i32 (%struct.remote_ls_ctx*)*, i32 (%struct.remote_ls_ctx*)** %48, align 8
  %50 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %51 = call i32 %49(%struct.remote_ls_ctx* %50)
  br label %52

52:                                               ; preds = %46, %33
  %53 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @strcmp(i64 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %52
  %62 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RECURSIVE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %76 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %75, i32 0, i32 3
  %77 = load i32 (%struct.remote_ls_ctx*)*, i32 (%struct.remote_ls_ctx*)** %76, align 8
  %78 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @remote_ls(i64 %71, i32 %74, i32 (%struct.remote_ls_ctx*)* %77, i32 %80)
  br label %82

82:                                               ; preds = %68, %61, %52
  br label %97

83:                                               ; preds = %26
  %84 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PROCESS_FILES, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %91, i32 0, i32 3
  %93 = load i32 (%struct.remote_ls_ctx*)*, i32 (%struct.remote_ls_ctx*)** %92, align 8
  %94 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %95 = call i32 %93(%struct.remote_ls_ctx* %94)
  br label %96

96:                                               ; preds = %90, %83
  br label %97

97:                                               ; preds = %96, %82
  br label %185

98:                                               ; preds = %21, %14
  %99 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @DAV_PROPFIND_NAME, align 4
  %103 = call i64 @strcmp(i64 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %170, label %105

105:                                              ; preds = %98
  %106 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %170

110:                                              ; preds = %105
  %111 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %112 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %6, align 8
  %114 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %115 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 104
  br i1 %119, label %120, label %130

120:                                              ; preds = %110
  %121 = load i8*, i8** %6, align 8
  %122 = call i8* @strstr(i8* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %122, i8** %6, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = call i8* @strchr(i8* %127, i8 signext 47)
  store i8* %128, i8** %6, align 8
  br label %129

129:                                              ; preds = %125, %120
  br label %130

130:                                              ; preds = %129, %110
  %131 = load i8*, i8** %6, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %169

133:                                              ; preds = %130
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %7, align 8
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %7, align 8
  br label %145

145:                                              ; preds = %141, %133
  %146 = load i8*, i8** %6, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @strncmp(i8* %146, i8* %147, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i8*, i8** %6, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %154, i8* %155)
  br label %168

157:                                              ; preds = %145
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %6, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = call i64 @xstrdup(i8* %164)
  %166 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %167 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %157, %153
  br label %169

169:                                              ; preds = %168, %130
  br label %184

170:                                              ; preds = %105, %98
  %171 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @DAV_PROPFIND_COLLECTION, align 4
  %175 = call i64 @strcmp(i64 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* @IS_DIR, align 4
  %179 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %180 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %170
  br label %184

184:                                              ; preds = %183, %169
  br label %185

185:                                              ; preds = %184, %97
  br label %201

186:                                              ; preds = %2
  %187 = load %struct.xml_ctx*, %struct.xml_ctx** %3, align 8
  %188 = getelementptr inbounds %struct.xml_ctx, %struct.xml_ctx* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @DAV_PROPFIND_RESP, align 4
  %191 = call i64 @strcmp(i64 %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %186
  %194 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %195 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @FREE_AND_NULL(i64 %196)
  %198 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %5, align 8
  %199 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %198, i32 0, i32 0
  store i32 0, i32* %199, align 8
  br label %200

200:                                              ; preds = %193, %186
  br label %201

201:                                              ; preds = %200, %185
  ret void
}

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @str_end_url_with_slash(i64, i64*) #1

declare dso_local i32 @remote_ls(i64, i32, i32 (%struct.remote_ls_ctx*)*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i64 @xstrdup(i8*) #1

declare dso_local i32 @FREE_AND_NULL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
