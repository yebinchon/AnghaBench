; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlp_check_ready.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_sqlp_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@conn_ready = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"have %d bytes in outbound sql connection %d in state ready, closing connection\0A\00", align 1
@conn_error = common dso_local global i64 0, align 8
@cr_failed = common dso_local global i32 0, align 4
@conn_wait_answer = common dso_local global i64 0, align 8
@conn_reading_answer = common dso_local global i64 0, align 8
@C_FAILED = common dso_local global i32 0, align 4
@precise_now = common dso_local global i64 0, align 8
@RESPONSE_FAIL_TIMEOUT = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [110 x i8] c"failing outbound connection %d, status=%d, response_status=%d, last_response=%.6f, last_query=%.6f, now=%.6f\0A\00", align 1
@cr_ok = common dso_local global i32 0, align 4
@sql_auth_ok = common dso_local global i64 0, align 8
@cr_stopped = common dso_local global i32 0, align 4
@cr_busy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlp_check_ready(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %4 = load %struct.connection*, %struct.connection** %3, align 8
  %5 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @conn_ready, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.connection*, %struct.connection** %3, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = call i32 (i32, i8*, i32, i64, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %25)
  %27 = load i64, i64* @conn_error, align 8
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 2
  store i32 -3, i32* %31, align 4
  %32 = load %struct.connection*, %struct.connection** %3, align 8
  %33 = call i32 @fail_connection(%struct.connection* %32, i32 -3)
  %34 = load i32, i32* @cr_failed, align 4
  %35 = load %struct.connection*, %struct.connection** %3, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  store i32 %34, i32* %2, align 4
  br label %158

37:                                               ; preds = %9, %1
  %38 = load %struct.connection*, %struct.connection** %3, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @conn_error, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.connection*, %struct.connection** %3, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 2
  store i32 -4, i32* %45, align 4
  %46 = load %struct.connection*, %struct.connection** %3, align 8
  %47 = call i32 @fail_connection(%struct.connection* %46, i32 -4)
  %48 = load i32, i32* @cr_failed, align 4
  %49 = load %struct.connection*, %struct.connection** %3, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  store i32 %48, i32* %2, align 4
  br label %158

51:                                               ; preds = %37
  %52 = load %struct.connection*, %struct.connection** %3, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @conn_wait_answer, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.connection*, %struct.connection** %3, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @conn_reading_answer, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %133

63:                                               ; preds = %57, %51
  %64 = load %struct.connection*, %struct.connection** %3, align 8
  %65 = getelementptr inbounds %struct.connection, %struct.connection* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @C_FAILED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %132, label %70

70:                                               ; preds = %63
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @precise_now, align 8
  %75 = load i64, i64* @RESPONSE_FAIL_TIMEOUT, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = icmp slt i64 %73, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %70
  %83 = load %struct.connection*, %struct.connection** %3, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @precise_now, align 8
  %87 = load i64, i64* @RESPONSE_FAIL_TIMEOUT, align 8
  %88 = sub nsw i64 %86, %87
  %89 = load %struct.connection*, %struct.connection** %3, align 8
  %90 = getelementptr inbounds %struct.connection, %struct.connection* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = icmp slt i64 %85, %92
  br i1 %93, label %94, label %132

94:                                               ; preds = %82
  %95 = load %struct.connection*, %struct.connection** %3, align 8
  %96 = call %struct.TYPE_4__* @SQLC_DATA(%struct.connection* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %132, label %101

101:                                              ; preds = %94
  %102 = load i64, i64* @verbosity, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  %105 = load i32, i32* @stderr, align 4
  %106 = load %struct.connection*, %struct.connection** %3, align 8
  %107 = getelementptr inbounds %struct.connection, %struct.connection* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.connection*, %struct.connection** %3, align 8
  %110 = getelementptr inbounds %struct.connection, %struct.connection* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.connection*, %struct.connection** %3, align 8
  %113 = call %struct.TYPE_4__* @SQLC_DATA(%struct.connection* %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.connection*, %struct.connection** %3, align 8
  %117 = getelementptr inbounds %struct.connection, %struct.connection* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.connection*, %struct.connection** %3, align 8
  %120 = getelementptr inbounds %struct.connection, %struct.connection* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @precise_now, align 8
  %123 = call i32 (i32, i8*, i32, i64, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i32 %108, i64 %111, i32 %115, i64 %118, i64 %121, i64 %122)
  br label %124

124:                                              ; preds = %104, %101
  %125 = load %struct.connection*, %struct.connection** %3, align 8
  %126 = getelementptr inbounds %struct.connection, %struct.connection* %125, i32 0, i32 2
  store i32 -5, i32* %126, align 4
  %127 = load %struct.connection*, %struct.connection** %3, align 8
  %128 = call i32 @fail_connection(%struct.connection* %127, i32 -5)
  %129 = load i32, i32* @cr_failed, align 4
  %130 = load %struct.connection*, %struct.connection** %3, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  store i32 %129, i32* %2, align 4
  br label %158

132:                                              ; preds = %94, %82, %70, %63
  br label %133

133:                                              ; preds = %132, %57
  %134 = load %struct.connection*, %struct.connection** %3, align 8
  %135 = getelementptr inbounds %struct.connection, %struct.connection* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @conn_ready, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @cr_ok, align 4
  br label %154

141:                                              ; preds = %133
  %142 = load %struct.connection*, %struct.connection** %3, align 8
  %143 = call %struct.TYPE_4__* @SQLC_DATA(%struct.connection* %142)
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @sql_auth_ok, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @cr_stopped, align 4
  br label %152

150:                                              ; preds = %141
  %151 = load i32, i32* @cr_busy, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  br label %154

154:                                              ; preds = %152, %139
  %155 = phi i32 [ %140, %139 ], [ %153, %152 ]
  %156 = load %struct.connection*, %struct.connection** %3, align 8
  %157 = getelementptr inbounds %struct.connection, %struct.connection* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  store i32 %155, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %124, %43, %15
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @fprintf(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @fail_connection(%struct.connection*, i32) #1

declare dso_local %struct.TYPE_4__* @SQLC_DATA(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
