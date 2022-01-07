; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_get_handshake.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_get_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i64 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32 (i32, %struct.TYPE_18__*)* }

@BUFSIZ = common dso_local global i64 0, align 8
@WS_CLOSE = common dso_local global i32 0, align 4
@WS_BAD_REQUEST_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@WS_READING = common dso_local global i32 0, align 4
@wsconfig = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Active: %d\0A\00", align 1
@WS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @ws_get_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_get_handshake(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %12 = icmp eq %struct.TYPE_20__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call %struct.TYPE_20__* (...) @new_wsheader()
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %16, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i64, i64* @BUFSIZ, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  %37 = call i32 @read_socket(%struct.TYPE_18__* %28, i8* %32, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %52

39:                                               ; preds = %17
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WS_CLOSE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = load i32, i32* @WS_BAD_REQUEST_STR, align 4
  %49 = call i32 @http_error(%struct.TYPE_18__* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %171

52:                                               ; preds = %17
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, %53
  store i32 %59, i32* %57, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %60, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = call i32* @strstr(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %52
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = load i64, i64* @BUFSIZ, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = load i32, i32* @WS_READING, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @ws_set_status(%struct.TYPE_18__* %77, i32 %78, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %171

81:                                               ; preds = %71
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = load i32, i32* @WS_BAD_REQUEST_STR, align 4
  %84 = call i32 @http_error(%struct.TYPE_18__* %82, i32 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = load i32, i32* @WS_CLOSE, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @ws_set_status(%struct.TYPE_18__* %85, i32 %86, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %171

89:                                               ; preds = %52
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = call i64 @parse_headers(%struct.TYPE_20__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = load i32, i32* @WS_BAD_REQUEST_STR, align 4
  %98 = call i32 @http_error(%struct.TYPE_18__* %96, i32 %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = load i32, i32* @WS_CLOSE, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @ws_set_status(%struct.TYPE_18__* %99, i32 %100, i32 %101)
  store i32 %102, i32* %3, align 4
  br label %171

103:                                              ; preds = %89
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = call i64 @ws_verify_req_headers(%struct.TYPE_20__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = load i32, i32* @WS_BAD_REQUEST_STR, align 4
  %112 = call i32 @http_error(%struct.TYPE_18__* %110, i32 %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = load i32, i32* @WS_CLOSE, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @ws_set_status(%struct.TYPE_18__* %113, i32 %114, i32 %115)
  store i32 %116, i32* %3, align 4
  br label %171

117:                                              ; preds = %103
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = call i32 @ws_set_handshake_headers(%struct.TYPE_20__* %120)
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = call i32 @ws_send_handshake_headers(%struct.TYPE_18__* %122, %struct.TYPE_20__* %125)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load i32 (i32, %struct.TYPE_18__*)*, i32 (i32, %struct.TYPE_18__*)** %128, align 8
  %130 = icmp ne i32 (i32, %struct.TYPE_18__*)* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %117
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @wsconfig, i32 0, i32 2), align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @wsconfig, i32 0, i32 1), align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = load i32 (i32, %struct.TYPE_18__*)*, i32 (i32, %struct.TYPE_18__*)** %139, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = call i32 %140(i32 %143, %struct.TYPE_18__* %144)
  br label %146

146:                                              ; preds = %137, %134, %131, %117
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = call i32 @gettimeofday(i32* %152, i32* null)
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @wsconfig, i32 0, i32 0), align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = call i32 @access_log(%struct.TYPE_18__* %157, i32 101)
  br label %159

159:                                              ; preds = %156, %146
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @list_count(i32 %162)
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = call i32 @LOG(i8* %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %168 = load i32, i32* @WS_OK, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @ws_set_status(%struct.TYPE_18__* %167, i32 %168, i32 %169)
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %159, %109, %95, %81, %76, %50
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.TYPE_20__* @new_wsheader(...) #1

declare dso_local i32 @read_socket(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local i32 @http_error(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ws_set_status(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @parse_headers(%struct.TYPE_20__*) #1

declare dso_local i64 @ws_verify_req_headers(%struct.TYPE_20__*) #1

declare dso_local i32 @ws_set_handshake_headers(%struct.TYPE_20__*) #1

declare dso_local i32 @ws_send_handshake_headers(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @access_log(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @list_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
