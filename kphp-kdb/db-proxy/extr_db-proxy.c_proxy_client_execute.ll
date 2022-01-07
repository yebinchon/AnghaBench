; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_proxy_client_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_proxy_client_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i8*, %struct.conn_query*, i32, i32 }
%struct.conn_query = type { i64, %struct.connection* }
%struct.sqlc_data = type { i32, i32, i32 }

@proxy_client_execute.buffer = internal global [8 x i8] zeroinitializer, align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"proxy_db_client: op=%d, packet_len=%d, response_state=%d, field_num=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"response received for empty query list? op=%d\0A\00", align 1
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"outbound connection %d: nowhere to forward replication stream, closing\0A\00", align 1
@conn_error = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"unexpected packet from server!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proxy_client_execute(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sqlc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.connection*, %struct.connection** %4, align 8
  %11 = call %struct.sqlc_data* @SQLC_DATA(%struct.connection* %10)
  store %struct.sqlc_data* %11, %struct.sqlc_data** %6, align 8
  store i32 -1, i32* %8, align 4
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 5
  %14 = call i32 @nbit_set(i32* %9, i32* %13)
  %15 = call i32 @nbit_read_in(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @proxy_client_execute.buffer, i64 0, i64 0), i32 8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 5
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @proxy_client_execute.buffer, i64 0, i64 4), align 1
  %20 = sext i8 %19 to i32
  %21 = and i32 %20, 255
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @verbosity, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %29 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %32 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %25, %22
  %37 = load %struct.connection*, %struct.connection** %4, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 3
  %39 = load %struct.conn_query*, %struct.conn_query** %38, align 8
  %40 = load %struct.connection*, %struct.connection** %4, align 8
  %41 = bitcast %struct.connection* %40 to %struct.conn_query*
  %42 = icmp eq %struct.conn_query* %39, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %36
  %44 = load i32, i32* @verbosity, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %43
  %47 = load i32, i32* @stderr, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @verbosity, align 4
  %51 = icmp sgt i32 %50, -2
  br i1 %51, label %52, label %83

52:                                               ; preds = %46
  %53 = load %struct.connection*, %struct.connection** %4, align 8
  %54 = call i32 @dump_connection_buffers(%struct.connection* %53)
  %55 = load %struct.connection*, %struct.connection** %4, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 3
  %57 = load %struct.conn_query*, %struct.conn_query** %56, align 8
  %58 = load %struct.connection*, %struct.connection** %4, align 8
  %59 = bitcast %struct.connection* %58 to %struct.conn_query*
  %60 = icmp ne %struct.conn_query* %57, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %52
  %62 = load %struct.connection*, %struct.connection** %4, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 3
  %64 = load %struct.conn_query*, %struct.conn_query** %63, align 8
  %65 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.connection*, %struct.connection** %4, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 3
  %69 = load %struct.conn_query*, %struct.conn_query** %68, align 8
  %70 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %69, i32 0, i32 1
  %71 = load %struct.connection*, %struct.connection** %70, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %66, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %61
  %76 = load %struct.connection*, %struct.connection** %4, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 3
  %78 = load %struct.conn_query*, %struct.conn_query** %77, align 8
  %79 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %78, i32 0, i32 1
  %80 = load %struct.connection*, %struct.connection** %79, align 8
  %81 = call i32 @dump_connection_buffers(%struct.connection* %80)
  br label %82

82:                                               ; preds = %75, %61, %52
  br label %83

83:                                               ; preds = %82, %46
  br label %84

84:                                               ; preds = %83, %43
  %85 = load i32, i32* @SKIP_ALL_BYTES, align 4
  store i32 %85, i32* %3, align 4
  br label %213

86:                                               ; preds = %36
  %87 = load i32, i32* @precise_now, align 4
  %88 = load %struct.connection*, %struct.connection** %4, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.connection*, %struct.connection** %4, align 8
  %91 = call i64 @stop_forwarding_response(%struct.connection* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %213

94:                                               ; preds = %86
  %95 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %96 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %204 [
    i32 130, label %98
    i32 129, label %176
    i32 128, label %188
    i32 131, label %200
  ]

98:                                               ; preds = %94
  %99 = load %struct.connection*, %struct.connection** %4, align 8
  %100 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %101 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.connection*, %struct.connection** %4, align 8
  %104 = call %struct.sqlc_data* @SQLC_DATA(%struct.connection* %103)
  %105 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 1
  %108 = call i32 @forward_response(%struct.connection* %99, i32 %102, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %98
  %112 = load %struct.connection*, %struct.connection** %4, align 8
  %113 = call %struct.sqlc_data* @SQLC_DATA(%struct.connection* %112)
  %114 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %111
  %119 = load %struct.connection*, %struct.connection** %4, align 8
  %120 = call %struct.sqlc_data* @SQLC_DATA(%struct.connection* %119)
  %121 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, 2
  store i32 %123, i32* %121, align 4
  %124 = load %struct.connection*, %struct.connection** %4, align 8
  %125 = getelementptr inbounds %struct.connection, %struct.connection* %124, i32 0, i32 3
  %126 = load %struct.conn_query*, %struct.conn_query** %125, align 8
  %127 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %126, i32 0, i32 1
  %128 = load %struct.connection*, %struct.connection** %127, align 8
  %129 = getelementptr inbounds %struct.connection, %struct.connection* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.connection*, %struct.connection** %4, align 8
  %132 = getelementptr inbounds %struct.connection, %struct.connection* %131, i32 0, i32 3
  %133 = load %struct.conn_query*, %struct.conn_query** %132, align 8
  %134 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %130, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %118
  %138 = load i32, i32* @verbosity, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i32, i32* @stderr, align 4
  %142 = load %struct.connection*, %struct.connection** %4, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %140, %137
  %147 = load i8*, i8** @conn_error, align 8
  %148 = load %struct.connection*, %struct.connection** %4, align 8
  %149 = getelementptr inbounds %struct.connection, %struct.connection* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %146, %118
  br label %175

151:                                              ; preds = %111, %98
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 255
  br i1 %156, label %157, label %160

157:                                              ; preds = %154, %151
  %158 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %159 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %158, i32 0, i32 1
  store i32 131, i32* %159, align 4
  br label %174

160:                                              ; preds = %154
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = icmp sge i32 %164, 254
  br i1 %165, label %166, label %170

166:                                              ; preds = %163, %160
  %167 = load i8*, i8** @conn_error, align 8
  %168 = load %struct.connection*, %struct.connection** %4, align 8
  %169 = getelementptr inbounds %struct.connection, %struct.connection* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  br label %173

170:                                              ; preds = %163
  %171 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %172 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %171, i32 0, i32 1
  store i32 129, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %166
  br label %174

174:                                              ; preds = %173, %157
  br label %175

175:                                              ; preds = %174, %150
  br label %204

176:                                              ; preds = %94
  %177 = load %struct.connection*, %struct.connection** %4, align 8
  %178 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %179 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @forward_response(%struct.connection* %177, i32 %180, i32 0)
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %182, 254
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %186 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %185, i32 0, i32 1
  store i32 128, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %176
  br label %204

188:                                              ; preds = %94
  %189 = load %struct.connection*, %struct.connection** %4, align 8
  %190 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %191 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @forward_response(%struct.connection* %189, i32 %192, i32 0)
  %194 = load i32, i32* %8, align 4
  %195 = icmp eq i32 %194, 254
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %198 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %197, i32 0, i32 1
  store i32 131, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %188
  br label %204

200:                                              ; preds = %94
  %201 = load i32, i32* @stderr, align 4
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %203 = call i32 @assert(i32 0)
  br label %204

204:                                              ; preds = %200, %94, %199, %187, %175
  %205 = load %struct.sqlc_data*, %struct.sqlc_data** %6, align 8
  %206 = getelementptr inbounds %struct.sqlc_data, %struct.sqlc_data* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 131
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.connection*, %struct.connection** %4, align 8
  %211 = call i32 @query_complete(%struct.connection* %210, i32 1)
  br label %212

212:                                              ; preds = %209, %204
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %212, %93, %84
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.sqlc_data* @SQLC_DATA(%struct.connection*) #1

declare dso_local i32 @nbit_set(i32*, i32*) #1

declare dso_local i32 @nbit_read_in(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dump_connection_buffers(%struct.connection*) #1

declare dso_local i64 @stop_forwarding_response(%struct.connection*) #1

declare dso_local i32 @forward_response(%struct.connection*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @query_complete(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
