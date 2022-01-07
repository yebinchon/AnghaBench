; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_perf_fmt_prepare.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_perf_fmt_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32* }
%struct.tr2tls_thread_ctx = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.repository = type { i32 }
%struct.tr2_tbuf = type { i8* }

@tr2env_perf_be_brief = common dso_local global i32 0, align 4
@TR2FMT_PERF_FL_WIDTH = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"d%d | \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%-*s | %-*s | \00", align 1
@TR2_MAX_THREAD_NAME = common dso_local global i32 0, align 4
@TR2FMT_PERF_MAX_EVENT_NAME = common dso_local global i32 0, align 4
@TR2FMT_PERF_REPO_WIDTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"r%d \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%9.6f | \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%9s | \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%-*.*s | \00", align 1
@TR2FMT_PERF_CATEGORY_WIDTH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dots = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.tr2tls_thread_ctx*, i8*, i32, %struct.repository*, i64*, i64*, i8*, %struct.strbuf*)* @perf_fmt_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_fmt_prepare(i8* %0, %struct.tr2tls_thread_ctx* %1, i8* %2, i32 %3, %struct.repository* %4, i64* %5, i64* %6, i8* %7, %struct.strbuf* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tr2tls_thread_ctx*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.repository*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.strbuf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.tr2_tbuf, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.strbuf, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store %struct.tr2tls_thread_ctx* %1, %struct.tr2tls_thread_ctx** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.repository* %4, %struct.repository** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i8* %7, i8** %17, align 8
  store %struct.strbuf* %8, %struct.strbuf** %18, align 8
  %25 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %26 = call i32 @strbuf_setlen(%struct.strbuf* %25, i32 0)
  %27 = load i32, i32* @tr2env_perf_be_brief, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %95, label %29

29:                                               ; preds = %9
  %30 = call i32 @tr2_tbuf_local_time(%struct.tr2_tbuf* %20)
  %31 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %32 = getelementptr inbounds %struct.tr2_tbuf, %struct.tr2_tbuf* %20, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strbuf_addstr(%struct.strbuf* %31, i8* %33)
  %35 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %36 = call i32 @strbuf_addch(%struct.strbuf* %35, i8 signext 32)
  %37 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TR2FMT_PERF_FL_WIDTH, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %21, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %81

45:                                               ; preds = %29
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %45
  %51 = bitcast %struct.strbuf* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TR2FMT_PERF_FL_WIDTH, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %61 = call i32 @strbuf_addbuf(%struct.strbuf* %60, %struct.strbuf* %22)
  br label %79

62:                                               ; preds = %50
  %63 = load i32, i32* @TR2FMT_PERF_FL_WIDTH, align 4
  %64 = sub nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %23, align 8
  %66 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %67 = call i32 @strbuf_addstr(%struct.strbuf* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %23, align 8
  %75 = sub i64 %73, %74
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load i64, i64* %23, align 8
  %78 = call i32 @strbuf_add(%struct.strbuf* %68, i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %62, %59
  %80 = call i32 @strbuf_release(%struct.strbuf* %22)
  br label %81

81:                                               ; preds = %79, %45, %29
  br label %82

82:                                               ; preds = %89, %81
  %83 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %21, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %91 = call i32 @strbuf_addch(%struct.strbuf* %90, i8 signext 32)
  br label %82

92:                                               ; preds = %82
  %93 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %94 = call i32 @strbuf_addstr(%struct.strbuf* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %9
  %96 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %97 = call i32 (...) @tr2_sid_depth()
  %98 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %100 = load i32, i32* @TR2_MAX_THREAD_NAME, align 4
  %101 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %11, align 8
  %102 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @TR2FMT_PERF_MAX_EVENT_NAME, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %104, i32 %105, i8* %106)
  %108 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @TR2FMT_PERF_REPO_WIDTH, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %19, align 4
  %113 = load %struct.repository*, %struct.repository** %14, align 8
  %114 = icmp ne %struct.repository* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %95
  %116 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %117 = load %struct.repository*, %struct.repository** %14, align 8
  %118 = getelementptr inbounds %struct.repository, %struct.repository* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %115, %95
  br label %122

122:                                              ; preds = %128, %121
  %123 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %124 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %130 = call i32 @strbuf_addch(%struct.strbuf* %129, i8 signext 32)
  br label %122

131:                                              ; preds = %122
  %132 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %133 = call i32 @strbuf_addstr(%struct.strbuf* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i64*, i64** %15, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %138 = load i64*, i64** %15, align 8
  %139 = load i64, i64* %138, align 8
  %140 = sitofp i64 %139 to double
  %141 = fdiv double %140, 1.000000e+06
  %142 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), double %141)
  br label %146

143:                                              ; preds = %131
  %144 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %145 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %136
  %147 = load i64*, i64** %16, align 8
  %148 = icmp ne i64* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %151 = load i64*, i64** %16, align 8
  %152 = load i64, i64* %151, align 8
  %153 = sitofp i64 %152 to double
  %154 = fdiv double %153, 1.000000e+06
  %155 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), double %154)
  br label %159

156:                                              ; preds = %146
  %157 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %158 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %149
  %160 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %161 = load i32, i32* @TR2FMT_PERF_CATEGORY_WIDTH, align 4
  %162 = load i32, i32* @TR2FMT_PERF_CATEGORY_WIDTH, align 4
  %163 = load i8*, i8** %17, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i8*, i8** %17, align 8
  br label %168

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i8* [ %166, %165 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %167 ]
  %170 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %161, i32 %162, i8* %169)
  %171 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %11, align 8
  %172 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %168
  %176 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %11, align 8
  %177 = call i32 @TR2_INDENT_LENGTH(%struct.tr2tls_thread_ctx* %176)
  store i32 %177, i32* %24, align 4
  br label %178

178:                                              ; preds = %182, %175
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.strbuf, %struct.strbuf* @dots, i32 0, i32 0), align 8
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %184 = call i32 @strbuf_addbuf(%struct.strbuf* %183, %struct.strbuf* @dots)
  %185 = load i32, i32* getelementptr inbounds (%struct.strbuf, %struct.strbuf* @dots, i32 0, i32 0), align 8
  %186 = load i32, i32* %24, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %24, align 4
  br label %178

188:                                              ; preds = %178
  %189 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %190 = load i32, i32* %24, align 4
  %191 = load i32*, i32** getelementptr inbounds (%struct.strbuf, %struct.strbuf* @dots, i32 0, i32 1), align 8
  %192 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %190, i32* %191)
  br label %193

193:                                              ; preds = %188, %168
  ret void
}

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @tr2_tbuf_local_time(%struct.tr2_tbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32*, i64) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @tr2_sid_depth(...) #1

declare dso_local i32 @TR2_INDENT_LENGTH(%struct.tr2tls_thread_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
