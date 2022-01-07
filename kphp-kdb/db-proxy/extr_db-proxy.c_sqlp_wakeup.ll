; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlp_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlp_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i64, i32, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"connection %d wakes up, query_state=%d, queries_ok=%d\0A\00", align 1
@conn_wait_net = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"connection %d (IN: %d+%d, OUT: %d+%d, FLAGS: %d) is in state %d, conn_wait_net expected!\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"connection %d: switching query_state to query_failed\0A\00", align 1
@query_failed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"connection %d: sending Failed packet because of timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@query_none = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"connection %d awakened in impossible query_state\0A\00", align 1
@.str.6 = private unnamed_addr constant [94 x i8] c"connection %d: have ready target, switching query_state from query_wait_target to query_none\0A\00", align 1
@C_REPARSE = common dso_local global i32 0, align 4
@C_WANTWR = common dso_local global i32 0, align 4
@conn_generation = common dso_local global i64 0, align 8
@conn_error = common dso_local global i64 0, align 8
@conn_expect_query = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlp_wakeup(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load i32, i32* @verbosity, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = call %struct.TYPE_6__* @SQLS_DATA(%struct.connection* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.connection*, %struct.connection** %2, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %5, %1
  %19 = load %struct.connection*, %struct.connection** %2, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %127, label %23

23:                                               ; preds = %18
  %24 = load %struct.connection*, %struct.connection** %2, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @conn_wait_net, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load i32, i32* @stderr, align 4
  %31 = load %struct.connection*, %struct.connection** %2, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.connection*, %struct.connection** %2, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.connection*, %struct.connection** %2, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.connection*, %struct.connection** %2, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.connection*, %struct.connection** %2, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.connection*, %struct.connection** %2, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.connection*, %struct.connection** %2, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %37, i32 %41, i32 %45, i32 %49, i32 %52, i64 %55)
  br label %57

57:                                               ; preds = %29, %23
  %58 = load %struct.connection*, %struct.connection** %2, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @conn_wait_net, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.connection*, %struct.connection** %2, align 8
  %66 = call %struct.TYPE_6__* @SQLS_DATA(%struct.connection* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %105 [
    i32 128, label %69
    i32 129, label %83
  ]

69:                                               ; preds = %57
  %70 = load i32, i32* @verbosity, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @stderr, align 4
  %74 = load %struct.connection*, %struct.connection** %2, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* @query_failed, align 4
  %80 = load %struct.connection*, %struct.connection** %2, align 8
  %81 = call %struct.TYPE_6__* @SQLS_DATA(%struct.connection* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  br label %126

83:                                               ; preds = %57
  %84 = load i32, i32* @verbosity, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = load %struct.connection*, %struct.connection** %2, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %83
  %93 = load %struct.connection*, %struct.connection** %2, align 8
  %94 = load %struct.connection*, %struct.connection** %2, align 8
  %95 = call %struct.TYPE_6__* @SQLS_DATA(%struct.connection* %94)
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = call i32 @send_error_packet(%struct.connection* %93, i32 1045, i32 28000, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6, i32 %98)
  %100 = load i8*, i8** @query_none, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.connection*, %struct.connection** %2, align 8
  %103 = call %struct.TYPE_6__* @SQLS_DATA(%struct.connection* %102)
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  br label %126

105:                                              ; preds = %57
  %106 = load i32, i32* @stderr, align 4
  %107 = load %struct.connection*, %struct.connection** %2, align 8
  %108 = getelementptr inbounds %struct.connection, %struct.connection* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load %struct.connection*, %struct.connection** %2, align 8
  %112 = call %struct.TYPE_6__* @SQLS_DATA(%struct.connection* %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 128
  br i1 %115, label %122, label %116

116:                                              ; preds = %105
  %117 = load %struct.connection*, %struct.connection** %2, align 8
  %118 = call %struct.TYPE_6__* @SQLS_DATA(%struct.connection* %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 129
  br label %122

122:                                              ; preds = %116, %105
  %123 = phi i1 [ true, %105 ], [ %121, %116 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  br label %126

126:                                              ; preds = %122, %92, %78
  br label %149

127:                                              ; preds = %18
  %128 = load %struct.connection*, %struct.connection** %2, align 8
  %129 = call %struct.TYPE_6__* @SQLS_DATA(%struct.connection* %128)
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 128
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = load i32, i32* @verbosity, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* @stderr, align 4
  %138 = load %struct.connection*, %struct.connection** %2, align 8
  %139 = getelementptr inbounds %struct.connection, %struct.connection* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %136, %133
  %143 = load i8*, i8** @query_none, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.connection*, %struct.connection** %2, align 8
  %146 = call %struct.TYPE_6__* @SQLS_DATA(%struct.connection* %145)
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %142, %127
  br label %149

149:                                              ; preds = %148, %126
  %150 = load %struct.connection*, %struct.connection** %2, align 8
  %151 = getelementptr inbounds %struct.connection, %struct.connection* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sge i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.connection*, %struct.connection** %2, align 8
  %157 = getelementptr inbounds %struct.connection, %struct.connection* %156, i32 0, i32 1
  store i32 -1000, i32* %157, align 4
  %158 = load i32, i32* @C_REPARSE, align 4
  %159 = load %struct.connection*, %struct.connection** %2, align 8
  %160 = getelementptr inbounds %struct.connection, %struct.connection* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.connection*, %struct.connection** %2, align 8
  %164 = getelementptr inbounds %struct.connection, %struct.connection* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.connection*, %struct.connection** %2, align 8
  %168 = getelementptr inbounds %struct.connection, %struct.connection* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %166, %170
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %149
  %174 = load i32, i32* @C_WANTWR, align 4
  %175 = load %struct.connection*, %struct.connection** %2, align 8
  %176 = getelementptr inbounds %struct.connection, %struct.connection* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %149
  %180 = load i64, i64* @conn_generation, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* @conn_generation, align 8
  %182 = load %struct.connection*, %struct.connection** %2, align 8
  %183 = getelementptr inbounds %struct.connection, %struct.connection* %182, i32 0, i32 5
  store i64 %181, i64* %183, align 8
  %184 = load %struct.connection*, %struct.connection** %2, align 8
  %185 = getelementptr inbounds %struct.connection, %struct.connection* %184, i32 0, i32 4
  store i64 0, i64* %185, align 8
  %186 = load %struct.connection*, %struct.connection** %2, align 8
  %187 = getelementptr inbounds %struct.connection, %struct.connection* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @conn_error, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %179
  %192 = load i64, i64* @conn_expect_query, align 8
  %193 = load %struct.connection*, %struct.connection** %2, align 8
  %194 = getelementptr inbounds %struct.connection, %struct.connection* %193, i32 0, i32 2
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %191, %179
  %196 = load %struct.connection*, %struct.connection** %2, align 8
  %197 = call i32 @clear_connection_timeout(%struct.connection* %196)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_6__* @SQLS_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @send_error_packet(%struct.connection*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
