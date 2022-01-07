; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_rpc_check_ready.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_rpc_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, double, double, i32, i32, i32, double, i32 }
%struct.TYPE_2__ = type { i64 }

@precise_now = common dso_local global double 0.000000e+00, align 8
@conn_connecting = common dso_local global i64 0, align 8
@conn_wait_answer = common dso_local global i64 0, align 8
@conn_reading_answer = common dso_local global i64 0, align 8
@CONNECT_TIMEOUT = common dso_local global double 0.000000e+00, align 8
@cr_failed = common dso_local global i32 0, align 4
@cr_notyet = common dso_local global i32 0, align 4
@PING_INTERVAL = common dso_local global double 0.000000e+00, align 8
@FAIL_INTERVAL = common dso_local global double 0.000000e+00, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"changing connection %d readiness from %d to %d [FAILED] fq=%.03f lq=%.03f lqt=%.03f lr=%.03f now=%.03f unr=%d\0A\00", align 1
@STOP_INTERVAL = common dso_local global double 0.000000e+00, align 8
@cr_stopped = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [112 x i8] c"changing connection %d readiness from %d to %d [STOPPED] fq=%.03f lq=%.03f lqt=%.03f lr=%.03f now=%.03f unr=%d\0A\00", align 1
@C_FAILED = common dso_local global i32 0, align 4
@cr_ok = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [107 x i8] c"changing connection %d readiness from %d to %d [OK] fq=%.03f lq=%.03f lqt=%.03f lr=%.03f now=%.03f unr=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_check_ready(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %6 = load double, double* @precise_now, align 8
  store double %6, double* %5, align 8
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @conn_connecting, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %35, label %12

12:                                               ; preds = %1
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fcmp oeq double %15, 0.000000e+00
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.connection*, %struct.connection** %3, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @conn_wait_answer, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @conn_reading_answer, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23, %12
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = call %struct.TYPE_2__* @RPCS_DATA(%struct.connection* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %29, %23, %17, %1
  %36 = load %struct.connection*, %struct.connection** %3, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 2
  %38 = load double, double* %37, align 8
  %39 = load double, double* %5, align 8
  %40 = load double, double* @CONNECT_TIMEOUT, align 8
  %41 = fsub double %39, %40
  %42 = fcmp olt double %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.connection*, %struct.connection** %3, align 8
  %45 = call i32 @fail_connection(%struct.connection* %44, i32 -6)
  %46 = load i32, i32* @cr_failed, align 4
  store i32 %46, i32* %2, align 4
  br label %236

47:                                               ; preds = %35
  %48 = load i32, i32* @cr_notyet, align 4
  store i32 %48, i32* %2, align 4
  br label %236

49:                                               ; preds = %29
  %50 = load %struct.connection*, %struct.connection** %3, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 2
  %52 = load double, double* %51, align 8
  %53 = load double, double* %5, align 8
  %54 = load double, double* @PING_INTERVAL, align 8
  %55 = fsub double %53, %54
  %56 = fcmp olt double %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.connection*, %struct.connection** %3, align 8
  %59 = call i32 (...) @lrand48()
  %60 = call i32 @net_rpc_send_ping(%struct.connection* %58, i32 %59)
  %61 = load double, double* @precise_now, align 8
  %62 = load %struct.connection*, %struct.connection** %3, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 2
  store double %61, double* %63, align 8
  br label %64

64:                                               ; preds = %57, %49
  %65 = load %struct.connection*, %struct.connection** %3, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 1
  %67 = load double, double* %66, align 8
  %68 = load double, double* %5, align 8
  %69 = load double, double* @FAIL_INTERVAL, align 8
  %70 = fsub double %68, %69
  %71 = fcmp olt double %67, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %64
  %73 = load %struct.connection*, %struct.connection** %3, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 5000
  br i1 %76, label %77, label %117

77:                                               ; preds = %72, %64
  %78 = load i32, i32* @verbosity, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %111

80:                                               ; preds = %77
  %81 = load %struct.connection*, %struct.connection** %3, align 8
  %82 = getelementptr inbounds %struct.connection, %struct.connection* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @cr_failed, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %80
  %87 = load i32, i32* @stderr, align 4
  %88 = load %struct.connection*, %struct.connection** %3, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.connection*, %struct.connection** %3, align 8
  %92 = getelementptr inbounds %struct.connection, %struct.connection* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @cr_failed, align 4
  %95 = sext i32 %94 to i64
  %96 = load double, double* %4, align 8
  %97 = load %struct.connection*, %struct.connection** %3, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 2
  %99 = load double, double* %98, align 8
  %100 = load %struct.connection*, %struct.connection** %3, align 8
  %101 = getelementptr inbounds %struct.connection, %struct.connection* %100, i32 0, i32 6
  %102 = load double, double* %101, align 8
  %103 = load %struct.connection*, %struct.connection** %3, align 8
  %104 = getelementptr inbounds %struct.connection, %struct.connection* %103, i32 0, i32 1
  %105 = load double, double* %104, align 8
  %106 = load double, double* @precise_now, align 8
  %107 = load %struct.connection*, %struct.connection** %3, align 8
  %108 = getelementptr inbounds %struct.connection, %struct.connection* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93, i64 %95, double %96, double %99, double %102, double %105, double %106, i32 %109)
  br label %111

111:                                              ; preds = %86, %80, %77
  %112 = load %struct.connection*, %struct.connection** %3, align 8
  %113 = call i32 @fail_connection(%struct.connection* %112, i32 -5)
  %114 = load i32, i32* @cr_failed, align 4
  %115 = load %struct.connection*, %struct.connection** %3, align 8
  %116 = getelementptr inbounds %struct.connection, %struct.connection* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 4
  store i32 %114, i32* %2, align 4
  br label %236

117:                                              ; preds = %72
  %118 = load %struct.connection*, %struct.connection** %3, align 8
  %119 = getelementptr inbounds %struct.connection, %struct.connection* %118, i32 0, i32 1
  %120 = load double, double* %119, align 8
  %121 = load double, double* %5, align 8
  %122 = load double, double* @STOP_INTERVAL, align 8
  %123 = fsub double %121, %122
  %124 = fcmp olt double %120, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %117
  %126 = load %struct.connection*, %struct.connection** %3, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 2000
  br i1 %129, label %130, label %169

130:                                              ; preds = %125, %117
  %131 = load i32, i32* @verbosity, align 4
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %133, label %164

133:                                              ; preds = %130
  %134 = load %struct.connection*, %struct.connection** %3, align 8
  %135 = getelementptr inbounds %struct.connection, %struct.connection* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @cr_stopped, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %133
  %141 = load i32, i32* @stderr, align 4
  %142 = load %struct.connection*, %struct.connection** %3, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.connection*, %struct.connection** %3, align 8
  %146 = getelementptr inbounds %struct.connection, %struct.connection* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* @cr_stopped, align 8
  %149 = load double, double* %4, align 8
  %150 = load %struct.connection*, %struct.connection** %3, align 8
  %151 = getelementptr inbounds %struct.connection, %struct.connection* %150, i32 0, i32 2
  %152 = load double, double* %151, align 8
  %153 = load %struct.connection*, %struct.connection** %3, align 8
  %154 = getelementptr inbounds %struct.connection, %struct.connection* %153, i32 0, i32 6
  %155 = load double, double* %154, align 8
  %156 = load %struct.connection*, %struct.connection** %3, align 8
  %157 = getelementptr inbounds %struct.connection, %struct.connection* %156, i32 0, i32 1
  %158 = load double, double* %157, align 8
  %159 = load double, double* @precise_now, align 8
  %160 = load %struct.connection*, %struct.connection** %3, align 8
  %161 = getelementptr inbounds %struct.connection, %struct.connection* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @fprintf(i32 %141, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %147, i64 %148, double %149, double %152, double %155, double %158, double %159, i32 %162)
  br label %164

164:                                              ; preds = %140, %133, %130
  %165 = load i64, i64* @cr_stopped, align 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.connection*, %struct.connection** %3, align 8
  %168 = getelementptr inbounds %struct.connection, %struct.connection* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 4
  store i32 %166, i32* %2, align 4
  br label %236

169:                                              ; preds = %125
  %170 = load %struct.connection*, %struct.connection** %3, align 8
  %171 = getelementptr inbounds %struct.connection, %struct.connection* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @C_FAILED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %232, label %176

176:                                              ; preds = %169
  %177 = load %struct.connection*, %struct.connection** %3, align 8
  %178 = getelementptr inbounds %struct.connection, %struct.connection* %177, i32 0, i32 1
  %179 = load double, double* %178, align 8
  %180 = fcmp ogt double %179, 0.000000e+00
  br i1 %180, label %181, label %232

181:                                              ; preds = %176
  %182 = load %struct.connection*, %struct.connection** %3, align 8
  %183 = getelementptr inbounds %struct.connection, %struct.connection* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @conn_wait_answer, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %181
  %188 = load %struct.connection*, %struct.connection** %3, align 8
  %189 = getelementptr inbounds %struct.connection, %struct.connection* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @conn_reading_answer, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %232

193:                                              ; preds = %187, %181
  %194 = load i32, i32* @verbosity, align 4
  %195 = icmp sgt i32 %194, 1
  br i1 %195, label %196, label %227

196:                                              ; preds = %193
  %197 = load %struct.connection*, %struct.connection** %3, align 8
  %198 = getelementptr inbounds %struct.connection, %struct.connection* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* @cr_ok, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %227

203:                                              ; preds = %196
  %204 = load i32, i32* @stderr, align 4
  %205 = load %struct.connection*, %struct.connection** %3, align 8
  %206 = getelementptr inbounds %struct.connection, %struct.connection* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.connection*, %struct.connection** %3, align 8
  %209 = getelementptr inbounds %struct.connection, %struct.connection* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load i64, i64* @cr_ok, align 8
  %212 = load double, double* %4, align 8
  %213 = load %struct.connection*, %struct.connection** %3, align 8
  %214 = getelementptr inbounds %struct.connection, %struct.connection* %213, i32 0, i32 2
  %215 = load double, double* %214, align 8
  %216 = load %struct.connection*, %struct.connection** %3, align 8
  %217 = getelementptr inbounds %struct.connection, %struct.connection* %216, i32 0, i32 6
  %218 = load double, double* %217, align 8
  %219 = load %struct.connection*, %struct.connection** %3, align 8
  %220 = getelementptr inbounds %struct.connection, %struct.connection* %219, i32 0, i32 1
  %221 = load double, double* %220, align 8
  %222 = load double, double* @precise_now, align 8
  %223 = load %struct.connection*, %struct.connection** %3, align 8
  %224 = getelementptr inbounds %struct.connection, %struct.connection* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @fprintf(i32 %204, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 %207, i32 %210, i64 %211, double %212, double %215, double %218, double %221, double %222, i32 %225)
  br label %227

227:                                              ; preds = %203, %196, %193
  %228 = load i64, i64* @cr_ok, align 8
  %229 = trunc i64 %228 to i32
  %230 = load %struct.connection*, %struct.connection** %3, align 8
  %231 = getelementptr inbounds %struct.connection, %struct.connection* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 4
  store i32 %229, i32* %2, align 4
  br label %236

232:                                              ; preds = %187, %176, %169
  %233 = load i32, i32* @cr_failed, align 4
  %234 = load %struct.connection*, %struct.connection** %3, align 8
  %235 = getelementptr inbounds %struct.connection, %struct.connection* %234, i32 0, i32 4
  store i32 %233, i32* %235, align 4
  store i32 %233, i32* %2, align 4
  br label %236

236:                                              ; preds = %232, %227, %164, %111, %47, %43
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local %struct.TYPE_2__* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @fail_connection(%struct.connection*, i32) #1

declare dso_local i32 @net_rpc_send_ping(%struct.connection*, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i64, double, double, double, double, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
