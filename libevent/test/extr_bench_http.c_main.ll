; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_bench_http.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_bench_http.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_config = type { i32 }
%struct.event_base = type { i32 }
%struct.evhttp = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"-%c requires argument.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Missing port\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Bad port\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Missing content length\0A\00", align 1
@content_len = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Bad content length\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Illegal argument \22%c\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"creating event_base failed. Exiting.\0A\00", align 1
@content = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"Cannot allocate content\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"/ind\00", align 1
@http_basic_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"/ind - basic content (memory copy)\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"/ref\00", align 1
@http_ref_cb = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"/ref - basic content (reference)\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Serving %d bytes on port %d using %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"IOCP\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@EVENT_BASE_FLAG_STARTUP_IOCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event_config*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca %struct.evhttp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call %struct.event_config* (...) @event_config_new()
  store %struct.event_config* %15, %struct.event_config** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 8080, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %16 = load i32, i32* @SIGPIPE, align 4
  %17 = load i32, i32* @SIG_IGN, align 4
  %18 = call i64 @signal(i32 %16, i32 %17)
  %19 = load i64, i64* @SIG_ERR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %213

22:                                               ; preds = %2
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @setbuf(i32 %23, i32* null)
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @setbuf(i32 %25, i32* null)
  store i32 1, i32* %9, align 4
  br label %27

27:                                               ; preds = %145, %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %148

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 45
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %145

41:                                               ; preds = %31
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 112
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 108
  br i1 %54, label %55, label %65

55:                                               ; preds = %52, %41
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %55, %52
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %139 [
    i32 112, label %67
    i32 108, label %102
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %4, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %73, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %72, %67
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i32 @exit(i32 1) #3
  unreachable

84:                                               ; preds = %72
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strtol(i8* %90, i8** %13, i32 10)
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %100 = call i32 @exit(i32 1) #3
  unreachable

101:                                              ; preds = %84
  br label %144

102:                                              ; preds = %65
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %4, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %102
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %108, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %107, %102
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %118 = call i32 @exit(i32 1) #3
  unreachable

119:                                              ; preds = %107
  %120 = load i8**, i8*** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %120, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @strtol(i8* %125, i8** %13, i32 10)
  store i64 %126, i64* @content_len, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %119
  %132 = load i64, i64* @content_len, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131, %119
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %131
  br label %144

139:                                              ; preds = %65
  %140 = load i32, i32* @stderr, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = call i32 @exit(i32 1) #3
  unreachable

144:                                              ; preds = %138, %101
  br label %145

145:                                              ; preds = %144, %40
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %27

148:                                              ; preds = %27
  %149 = load %struct.event_config*, %struct.event_config** %6, align 8
  %150 = call %struct.event_base* @event_base_new_with_config(%struct.event_config* %149)
  store %struct.event_base* %150, %struct.event_base** %7, align 8
  %151 = load %struct.event_base*, %struct.event_base** %7, align 8
  %152 = icmp ne %struct.event_base* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @stderr, align 4
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %213

156:                                              ; preds = %148
  %157 = load %struct.event_base*, %struct.event_base** %7, align 8
  %158 = call %struct.evhttp* @evhttp_new(%struct.event_base* %157)
  store %struct.evhttp* %158, %struct.evhttp** %8, align 8
  %159 = load i64, i64* @content_len, align 8
  %160 = call i32* @malloc(i64 %159)
  store i32* %160, i32** @content, align 8
  %161 = load i32*, i32** @content, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* @stderr, align 4
  %165 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %166 = call i32 @exit(i32 1) #3
  unreachable

167:                                              ; preds = %156
  store i32 0, i32* %14, align 4
  store i32 0, i32* %14, align 4
  br label %168

168:                                              ; preds = %180, %167
  %169 = load i32, i32* %14, align 4
  %170 = load i64, i64* @content_len, align 8
  %171 = trunc i64 %170 to i32
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load i32, i32* %14, align 4
  %175 = and i32 %174, 255
  %176 = load i32*, i32** @content, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  br label %180

180:                                              ; preds = %173
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %168

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %186 = load i32, i32* @http_basic_cb, align 4
  %187 = call i32 @evhttp_set_cb(%struct.evhttp* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %186, i32* null)
  %188 = load i32, i32* @stderr, align 4
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %188, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %190 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %191 = load i32, i32* @http_ref_cb, align 4
  %192 = call i32 @evhttp_set_cb(%struct.evhttp* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %191, i32* null)
  %193 = load i32, i32* @stderr, align 4
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %195 = load i32, i32* @stderr, align 4
  %196 = load i64, i64* @content_len, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %184
  br label %205

202:                                              ; preds = %184
  %203 = load %struct.event_base*, %struct.event_base** %7, align 8
  %204 = call i8* @event_base_get_method(%struct.event_base* %203)
  br label %205

205:                                              ; preds = %202, %201
  %206 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %201 ], [ %204, %202 ]
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %197, i32 %198, i8* %206)
  %208 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @evhttp_bind_socket(%struct.evhttp* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %209)
  %211 = load %struct.event_base*, %struct.event_base** %7, align 8
  %212 = call i32 @event_base_dispatch(%struct.event_base* %211)
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %205, %153, %21
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.event_config* @event_config_new(...) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.event_base* @event_base_new_with_config(%struct.event_config*) #1

declare dso_local %struct.evhttp* @evhttp_new(%struct.event_base*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @evhttp_set_cb(%struct.evhttp*, i8*, i32, i32*) #1

declare dso_local i8* @event_base_get_method(%struct.event_base*) #1

declare dso_local i32 @evhttp_bind_socket(%struct.evhttp*, i8*, i32) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
