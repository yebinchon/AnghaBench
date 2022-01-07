; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_mc_query_packet.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_mc_query_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8*, i32, i32 }
%struct.conn_target = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_24__*, i32)* }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_23__*, i32)* }
%struct.connection = type { i64, i32*, i32 }
%struct.conn_query = type { i32 }
%struct.TYPE_18__ = type { i32 (%struct.connection*)* }

@.str = private unnamed_addr constant [3 x i8] c"MC\00", align 1
@query_stats = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@php_script = common dso_local global i32 0, align 4
@MAX_TARGETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid connection_id (1)\00", align 1
@Targets = common dso_local global %struct.conn_target* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid connection_id (2)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[%s:%d]\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"Failed to establish connection [probably reconnect timeout is not expired]\00", align 1
@conn_connecting = common dso_local global i64 0, align 8
@precise_now = common dso_local global double 0.000000e+00, align 8
@PNETF_IMMEDIATE = common dso_local global i32 0, align 4
@conn_wait_net = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_worker_run_mc_query_packet(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.conn_target*, align 8
  %9 = alloca %struct.connection*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.conn_query*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @query_stats, i32 0, i32 0), align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @query_stats, i32 0, i32 2), align 4
  %15 = load i32, i32* @php_script, align 4
  %16 = call i32 @php_script_query_readed(i32 %15)
  %17 = call %struct.TYPE_24__* (...) @mc_ansgen_packet_create()
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %5, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)** %21, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %22(%struct.TYPE_24__* %23, i32 %26)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = bitcast %struct.TYPE_24__* %28 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %6, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MAX_TARGETS, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %2
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = bitcast %struct.TYPE_22__* %41 to i32*
  %43 = call i32 @net_error(%struct.TYPE_23__* %40, i32* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %163

44:                                               ; preds = %35
  %45 = load %struct.conn_target*, %struct.conn_target** @Targets, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %45, i64 %47
  store %struct.conn_target* %48, %struct.conn_target** %8, align 8
  %49 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %50 = icmp eq %struct.conn_target* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = bitcast %struct.TYPE_22__* %53 to i32*
  %55 = call i32 @net_error(%struct.TYPE_23__* %52, i32* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %163

56:                                               ; preds = %44
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %60, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %63 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %64 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @inet_ntoa(i32 %65)
  %67 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %68 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @qmem_pstr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %69)
  %71 = call i32 %61(%struct.TYPE_23__* %62, i32 %70)
  %72 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %73 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @query_stats, i32 0, i32 1), align 8
  %75 = load %struct.conn_target*, %struct.conn_target** %8, align 8
  %76 = call %struct.connection* @get_target_connection_force(%struct.conn_target* %75)
  store %struct.connection* %76, %struct.connection** %9, align 8
  %77 = load %struct.connection*, %struct.connection** %9, align 8
  %78 = icmp eq %struct.connection* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %56
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %82 = bitcast %struct.TYPE_22__* %81 to i32*
  %83 = call i32 @net_error(%struct.TYPE_23__* %80, i32* %82, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  br label %163

84:                                               ; preds = %56
  %85 = load %struct.connection*, %struct.connection** %9, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @conn_connecting, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load %struct.connection*, %struct.connection** %9, align 8
  %92 = getelementptr inbounds %struct.connection, %struct.connection* %91, i32 0, i32 2
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @write_out(i32* %92, i32 %95, i32 %98)
  %100 = load %struct.connection*, %struct.connection** %9, align 8
  %101 = call %struct.TYPE_18__* @MCC_FUNC(%struct.connection* %100)
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %102, align 8
  %104 = load %struct.connection*, %struct.connection** %9, align 8
  %105 = call i32 %103(%struct.connection* %104)
  br label %126

106:                                              ; preds = %84
  %107 = load %struct.connection*, %struct.connection** %9, align 8
  %108 = getelementptr inbounds %struct.connection, %struct.connection* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = call i32* (...) @alloc_head_buffer()
  %113 = load %struct.connection*, %struct.connection** %9, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  br label %115

115:                                              ; preds = %111, %106
  %116 = load %struct.connection*, %struct.connection** %9, align 8
  %117 = getelementptr inbounds %struct.connection, %struct.connection* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @write_out(i32* %118, i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %115, %90
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call double @fix_timeout(i32 %129)
  %131 = load double, double* @precise_now, align 8
  %132 = fadd double %130, %131
  store double %132, double* %10, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = load %struct.connection*, %struct.connection** %9, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %138 = bitcast %struct.TYPE_24__* %137 to %struct.TYPE_23__*
  %139 = load double, double* %10, align 8
  %140 = call %struct.conn_query* @create_pnet_query(%struct.TYPE_17__* %135, %struct.connection* %136, %struct.TYPE_23__* %138, double %139)
  store %struct.conn_query* %140, %struct.conn_query** %11, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @PNETF_IMMEDIATE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %126
  %148 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %149 = call i32 @pnet_query_timeout(%struct.conn_query* %148)
  br label %162

150:                                              ; preds = %126
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = icmp ne %struct.TYPE_17__* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @conn_wait_net, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %155, %150
  br label %162

162:                                              ; preds = %161, %147
  br label %163

163:                                              ; preds = %162, %79, %51, %39
  ret void
}

declare dso_local i32 @php_script_query_readed(i32) #1

declare dso_local %struct.TYPE_24__* @mc_ansgen_packet_create(...) #1

declare dso_local i32 @net_error(%struct.TYPE_23__*, i32*, i8*) #1

declare dso_local i32 @qmem_pstr(i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local %struct.connection* @get_target_connection_force(%struct.conn_target*) #1

declare dso_local i32 @write_out(i32*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @MCC_FUNC(%struct.connection*) #1

declare dso_local i32* @alloc_head_buffer(...) #1

declare dso_local double @fix_timeout(i32) #1

declare dso_local %struct.conn_query* @create_pnet_query(%struct.TYPE_17__*, %struct.connection*, %struct.TYPE_23__*, double) #1

declare dso_local i32 @pnet_query_timeout(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
