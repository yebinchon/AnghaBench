; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_on_read.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_on_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.st_fcgi_generator_t* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.st_fcgi_generator_t = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.st_fcgi_record_header_t = type { i64, i64, i32 }

@MODULE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"fastcgi connection closed unexpectedly\00", align 1
@FCGI_RECORD_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"received FCGI_END_REQUEST before end of the headers\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"received unexpected record, type: %u\00", align 1
@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4
@on_rw_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*)* @on_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_read(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_fcgi_generator_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_fcgi_record_header_t, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %11, align 8
  store %struct.st_fcgi_generator_t* %12, %struct.st_fcgi_generator_t** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %14 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %20 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %25 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MODULE_NAME, align 4
  %28 = call i32 (i32, i32, i8*, ...) @h2o_req_log_error(i32 %26, i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %31 = call i32 @errorclose(%struct.st_fcgi_generator_t* %30)
  br label %193

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %137
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FCGI_RECORD_HEADER_SIZE, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %138

42:                                               ; preds = %33
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @decode_header(%struct.st_fcgi_record_header_t* %8, i32 %47)
  %49 = load i64, i64* @FCGI_RECORD_HEADER_SIZE, align 8
  %50 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %49, %51
  %53 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %8, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %52, %54
  store i64 %55, i64* %9, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  br label %138

64:                                               ; preds = %42
  %65 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %8, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %119 [
    i32 128, label %67
    i32 129, label %77
    i32 130, label %103
  ]

67:                                               ; preds = %64
  %68 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %69 = call i32 @handle_stdin_record(%struct.st_fcgi_generator_t* %68, %struct.st_fcgi_record_header_t* %8)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %190

72:                                               ; preds = %67
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @h2o_buffer_consume(%struct.TYPE_15__** %74, i64 %75)
  br label %137

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %83 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MODULE_NAME, align 4
  %86 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %8, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @FCGI_RECORD_HEADER_SIZE, align 8
  %96 = add i64 %94, %95
  %97 = call i32 (i32, i32, i8*, ...) @h2o_req_log_error(i32 %84, i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %88, i64 %96)
  br label %98

98:                                               ; preds = %81, %77
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @h2o_buffer_consume(%struct.TYPE_15__** %100, i64 %101)
  br label %137

103:                                              ; preds = %64
  %104 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %105 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %110 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MODULE_NAME, align 4
  %113 = call i32 (i32, i32, i8*, ...) @h2o_req_log_error(i32 %111, i32 %112, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %190

114:                                              ; preds = %103
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @h2o_buffer_consume(%struct.TYPE_15__** %116, i64 %117)
  store i32 1, i32* %6, align 4
  br label %186

119:                                              ; preds = %64
  %120 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %121 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @MODULE_NAME, align 4
  %124 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %8, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i32, i8*, ...) @h2o_req_log_error(i32 %122, i32 %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @h2o_buffer_consume(%struct.TYPE_15__** %128, i64 %129)
  %131 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %132 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %119
  br label %190

136:                                              ; preds = %119
  br label %186

137:                                              ; preds = %98, %72
  br label %33

138:                                              ; preds = %63, %41
  %139 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %140 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %138
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %143
  %147 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %148 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %146
  %155 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %156 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = call i32 @h2o_doublebuffer_prepare_empty(%struct.TYPE_14__* %157)
  %159 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %160 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  %163 = call i32 @h2o_send(i32 %161, i32* null, i32 0, i32 %162)
  br label %175

164:                                              ; preds = %146, %143
  %165 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %166 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  %172 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %173 = call i32 @do_send(%struct.st_fcgi_generator_t* %172)
  br label %174

174:                                              ; preds = %171, %164
  br label %175

175:                                              ; preds = %174, %154
  br label %176

176:                                              ; preds = %175, %138
  %177 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %178 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %179 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %178, i32 0, i32 1
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @on_rw_timeout, align 4
  %185 = call i32 @set_timeout(%struct.st_fcgi_generator_t* %177, i32 %183, i32 %184)
  br label %193

186:                                              ; preds = %136, %114
  %187 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @send_eos_and_close(%struct.st_fcgi_generator_t* %187, i32 %188)
  br label %193

190:                                              ; preds = %135, %108, %71
  %191 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %5, align 8
  %192 = call i32 @errorclose(%struct.st_fcgi_generator_t* %191)
  br label %193

193:                                              ; preds = %190, %186, %176, %29
  ret void
}

declare dso_local i32 @h2o_req_log_error(i32, i32, i8*, ...) #1

declare dso_local i32 @errorclose(%struct.st_fcgi_generator_t*) #1

declare dso_local i32 @decode_header(%struct.st_fcgi_record_header_t*, i32) #1

declare dso_local i32 @handle_stdin_record(%struct.st_fcgi_generator_t*, %struct.st_fcgi_record_header_t*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_15__**, i64) #1

declare dso_local i32 @h2o_doublebuffer_prepare_empty(%struct.TYPE_14__*) #1

declare dso_local i32 @h2o_send(i32, i32*, i32, i32) #1

declare dso_local i32 @do_send(%struct.st_fcgi_generator_t*) #1

declare dso_local i32 @set_timeout(%struct.st_fcgi_generator_t*, i32, i32) #1

declare dso_local i32 @send_eos_and_close(%struct.st_fcgi_generator_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
