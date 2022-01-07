; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_GetCvars.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_GetCvars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"net_enabled\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@net_enabled = common dso_local global %struct.TYPE_15__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"net_ip\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@net_ip = common dso_local global %struct.TYPE_14__* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"net_ip6\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@net_ip6 = common dso_local global %struct.TYPE_13__* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"net_port\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@PORT_SERVER = common dso_local global i32 0, align 4
@net_port = common dso_local global %struct.TYPE_22__* null, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"net_port6\00", align 1
@net_port6 = common dso_local global %struct.TYPE_21__* null, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"net_mcast6addr\00", align 1
@NET_MULTICAST_IP6 = common dso_local global i8* null, align 8
@net_mcast6addr = common dso_local global %struct.TYPE_24__* null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"net_mcast6iface\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@net_mcast6iface = common dso_local global %struct.TYPE_23__* null, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"net_socksEnabled\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@net_socksEnabled = common dso_local global %struct.TYPE_20__* null, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"net_socksServer\00", align 1
@net_socksServer = common dso_local global %struct.TYPE_17__* null, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"net_socksPort\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"1080\00", align 1
@net_socksPort = common dso_local global %struct.TYPE_18__* null, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"net_socksUsername\00", align 1
@net_socksUsername = common dso_local global %struct.TYPE_16__* null, align 8
@.str.18 = private unnamed_addr constant [18 x i8] c"net_socksPassword\00", align 1
@net_socksPassword = common dso_local global %struct.TYPE_19__* null, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"net_dropsim\00", align 1
@CVAR_TEMP = common dso_local global i32 0, align 4
@net_dropsim = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @NET_GetCvars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @NET_GetCvars() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CVAR_LATCH, align 4
  %3 = load i32, i32* @CVAR_ARCHIVE, align 4
  %4 = or i32 %2, %3
  %5 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = bitcast i8* %5 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** @net_enabled, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** @net_enabled, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %1, align 4
  %10 = load i8*, i8** @qfalse, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** @net_enabled, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @CVAR_LATCH, align 4
  %15 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** @net_ip, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @net_ip, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %1, align 4
  %22 = load i8*, i8** @qfalse, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** @net_ip, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @CVAR_LATCH, align 4
  %27 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** @net_ip6, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @net_ip6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %1, align 4
  %34 = load i8*, i8** @qfalse, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** @net_ip6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @PORT_SERVER, align 4
  %39 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @CVAR_LATCH, align 4
  %41 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %39, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** @net_port, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** @net_port, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %1, align 4
  %48 = load i8*, i8** @qfalse, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** @net_port, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @PORT_SERVER, align 4
  %53 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @CVAR_LATCH, align 4
  %55 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %53, i32 %54)
  %56 = bitcast i8* %55 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** @net_port6, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** @net_port6, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %1, align 4
  %62 = load i8*, i8** @qfalse, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** @net_port6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** @NET_MULTICAST_IP6, align 8
  %67 = load i32, i32* @CVAR_LATCH, align 4
  %68 = load i32, i32* @CVAR_ARCHIVE, align 4
  %69 = or i32 %67, %68
  %70 = call i8* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %66, i32 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** @net_mcast6addr, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** @net_mcast6addr, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %1, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %1, align 4
  %77 = load i8*, i8** @qfalse, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** @net_mcast6addr, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @CVAR_LATCH, align 4
  %82 = load i32, i32* @CVAR_ARCHIVE, align 4
  %83 = or i32 %81, %82
  %84 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %83)
  %85 = bitcast i8* %84 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %85, %struct.TYPE_23__** @net_mcast6iface, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** @net_mcast6iface, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %1, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %1, align 4
  %91 = load i8*, i8** @qfalse, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** @net_mcast6iface, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @CVAR_LATCH, align 4
  %96 = load i32, i32* @CVAR_ARCHIVE, align 4
  %97 = or i32 %95, %96
  %98 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** @net_socksEnabled, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** @net_socksEnabled, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %1, align 4
  %105 = load i8*, i8** @qfalse, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** @net_socksEnabled, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @CVAR_LATCH, align 4
  %110 = load i32, i32* @CVAR_ARCHIVE, align 4
  %111 = or i32 %109, %110
  %112 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %113, %struct.TYPE_17__** @net_socksServer, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** @net_socksServer, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %1, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %1, align 4
  %119 = load i8*, i8** @qfalse, align 8
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** @net_socksServer, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @CVAR_LATCH, align 4
  %124 = load i32, i32* @CVAR_ARCHIVE, align 4
  %125 = or i32 %123, %124
  %126 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %125)
  %127 = bitcast i8* %126 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** @net_socksPort, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** @net_socksPort, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %1, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %1, align 4
  %133 = load i8*, i8** @qfalse, align 8
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** @net_socksPort, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @CVAR_LATCH, align 4
  %138 = load i32, i32* @CVAR_ARCHIVE, align 4
  %139 = or i32 %137, %138
  %140 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  %141 = bitcast i8* %140 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %141, %struct.TYPE_16__** @net_socksUsername, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** @net_socksUsername, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %1, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %1, align 4
  %147 = load i8*, i8** @qfalse, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** @net_socksUsername, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @CVAR_LATCH, align 4
  %152 = load i32, i32* @CVAR_ARCHIVE, align 4
  %153 = or i32 %151, %152
  %154 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %153)
  %155 = bitcast i8* %154 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %155, %struct.TYPE_19__** @net_socksPassword, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** @net_socksPassword, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %1, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %1, align 4
  %161 = load i8*, i8** @qfalse, align 8
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** @net_socksPassword, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @CVAR_TEMP, align 4
  %166 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %165)
  store i8* %166, i8** @net_dropsim, align 8
  %167 = load i32, i32* %1, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %0
  %170 = load i8*, i8** @qtrue, align 8
  br label %173

171:                                              ; preds = %0
  %172 = load i8*, i8** @qfalse, align 8
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i8* [ %170, %169 ], [ %172, %171 ]
  ret i8* %174
}

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i8* @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
