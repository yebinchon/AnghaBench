; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_crlf.c_convert_attrs.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_crlf.c_convert_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crlf_attrs = type { i64, i64, i64, i64, i64 }

@GIT_CONFIGMAP_AUTO_CRLF = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_SAFE_CRLF = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_EOL = common dso_local global i32 0, align 4
@GIT_FILTER_ALLOW_UNSAFE = common dso_local global i32 0, align 4
@GIT_SAFE_CRLF_FAIL = common dso_local global i64 0, align 8
@GIT_SAFE_CRLF_WARN = common dso_local global i64 0, align 8
@GIT_CRLF_UNDEFINED = common dso_local global i64 0, align 8
@GIT_CRLF_BINARY = common dso_local global i64 0, align 8
@GIT_CRLF_AUTO = common dso_local global i64 0, align 8
@GIT_EOL_LF = common dso_local global i32 0, align 4
@GIT_CRLF_AUTO_INPUT = common dso_local global i8* null, align 8
@GIT_EOL_CRLF = common dso_local global i32 0, align 4
@GIT_CRLF_AUTO_CRLF = common dso_local global i8* null, align 8
@GIT_CRLF_TEXT_INPUT = common dso_local global i8* null, align 8
@GIT_CRLF_TEXT_CRLF = common dso_local global i8* null, align 8
@GIT_CRLF_TEXT = common dso_local global i64 0, align 8
@GIT_AUTO_CRLF_FALSE = common dso_local global i64 0, align 8
@GIT_AUTO_CRLF_TRUE = common dso_local global i64 0, align 8
@GIT_AUTO_CRLF_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crlf_attrs*, i8**, i32*)* @convert_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_attrs(%struct.crlf_attrs* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crlf_attrs*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crlf_attrs* %0, %struct.crlf_attrs** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %11 = call i32 @memset(%struct.crlf_attrs* %10, i32 0, i32 40)
  %12 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %13 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %12, i32 0, i32 0
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @git_filter_source_repo(i32* %14)
  %16 = load i32, i32* @GIT_CONFIGMAP_AUTO_CRLF, align 4
  %17 = call i32 @git_repository__configmap_lookup(i64* %13, i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %3
  %20 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %21 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %20, i32 0, i32 1
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @git_filter_source_repo(i32* %22)
  %24 = load i32, i32* @GIT_CONFIGMAP_SAFE_CRLF, align 4
  %25 = call i32 @git_repository__configmap_lookup(i64* %21, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %29 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %28, i32 0, i32 2
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @git_filter_source_repo(i32* %30)
  %32 = load i32, i32* @GIT_CONFIGMAP_EOL, align 4
  %33 = call i32 @git_repository__configmap_lookup(i64* %29, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27, %19, %3
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %219

37:                                               ; preds = %27
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @git_filter_source_flags(i32* %38)
  %40 = load i32, i32* @GIT_FILTER_ALLOW_UNSAFE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %45 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @GIT_SAFE_CRLF_FAIL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i64, i64* @GIT_SAFE_CRLF_WARN, align 8
  %51 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %52 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %43, %37
  %54 = load i8**, i8*** %6, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %145

56:                                               ; preds = %53
  %57 = load i8**, i8*** %6, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @check_crlf(i8* %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %63 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %65 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @GIT_CRLF_UNDEFINED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %56
  %70 = load i8**, i8*** %6, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @check_crlf(i8* %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %76 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %69, %56
  %78 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %79 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @GIT_CRLF_BINARY, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %139

83:                                               ; preds = %77
  %84 = load i8**, i8*** %6, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @check_eol(i8* %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %89 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GIT_CRLF_AUTO, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %83
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @GIT_EOL_LF, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i8*, i8** @GIT_CRLF_AUTO_INPUT, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %101 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  br label %138

102:                                              ; preds = %93, %83
  %103 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %104 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GIT_CRLF_AUTO, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @GIT_EOL_CRLF, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i8*, i8** @GIT_CRLF_AUTO_CRLF, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %116 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  br label %137

117:                                              ; preds = %108, %102
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @GIT_EOL_LF, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i8*, i8** @GIT_CRLF_TEXT_INPUT, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %125 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  br label %136

126:                                              ; preds = %117
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @GIT_EOL_CRLF, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i8*, i8** @GIT_CRLF_TEXT_CRLF, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %134 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %130, %126
  br label %136

136:                                              ; preds = %135, %121
  br label %137

137:                                              ; preds = %136, %112
  br label %138

138:                                              ; preds = %137, %97
  br label %139

139:                                              ; preds = %138, %77
  %140 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %141 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %144 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  br label %149

145:                                              ; preds = %53
  %146 = load i64, i64* @GIT_CRLF_UNDEFINED, align 8
  %147 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %148 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %147, i32 0, i32 3
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %139
  %150 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %151 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @GIT_CRLF_TEXT, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %149
  %156 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %157 = call i64 @text_eol_is_crlf(%struct.crlf_attrs* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i8*, i8** @GIT_CRLF_TEXT_CRLF, align 8
  br label %163

161:                                              ; preds = %155
  %162 = load i8*, i8** @GIT_CRLF_TEXT_INPUT, align 8
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i8* [ %160, %159 ], [ %162, %161 ]
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %167 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %163, %149
  %169 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %170 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @GIT_CRLF_UNDEFINED, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %168
  %175 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %176 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @GIT_AUTO_CRLF_FALSE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i64, i64* @GIT_CRLF_BINARY, align 8
  %182 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %183 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %182, i32 0, i32 3
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %180, %174, %168
  %185 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %186 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @GIT_CRLF_UNDEFINED, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %192 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @GIT_AUTO_CRLF_TRUE, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load i8*, i8** @GIT_CRLF_AUTO_CRLF, align 8
  %198 = ptrtoint i8* %197 to i64
  %199 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %200 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %199, i32 0, i32 3
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %196, %190, %184
  %202 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %203 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @GIT_CRLF_UNDEFINED, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %201
  %208 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %209 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @GIT_AUTO_CRLF_INPUT, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i8*, i8** @GIT_CRLF_AUTO_INPUT, align 8
  %215 = ptrtoint i8* %214 to i64
  %216 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %217 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %216, i32 0, i32 3
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %213, %207, %201
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %218, %35
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @memset(%struct.crlf_attrs*, i32, i32) #1

declare dso_local i32 @git_repository__configmap_lookup(i64*, i32, i32) #1

declare dso_local i32 @git_filter_source_repo(i32*) #1

declare dso_local i32 @git_filter_source_flags(i32*) #1

declare dso_local i8* @check_crlf(i8*) #1

declare dso_local i32 @check_eol(i8*) #1

declare dso_local i64 @text_eol_is_crlf(%struct.crlf_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
