; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_choose_writable_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_choose_writable_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.rpc_server = type { i64, i32 }
%struct.rpc_server_collection = type { i32, %struct.rpc_server** }

@rpc_status_connected = common dso_local global i64 0, align 8
@server_fds = common dso_local global %struct.TYPE_6__* null, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@POLLRDHUP = common dso_local global i32 0, align 4
@server_fds_tmp = common dso_local global i64* null, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_server* (%struct.rpc_server_collection*, double)* @choose_writable_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_server* @choose_writable_server(%struct.rpc_server_collection* %0, double %1) #0 {
  %3 = alloca %struct.rpc_server*, align 8
  %4 = alloca %struct.rpc_server_collection*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpc_server*, align 8
  store %struct.rpc_server_collection* %0, %struct.rpc_server_collection** %4, align 8
  store double %1, double* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %13

13:                                               ; preds = %214, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ true, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %215

21:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %87, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %22
  %29 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %4, align 8
  %30 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %29, i32 0, i32 1
  %31 = load %struct.rpc_server**, %struct.rpc_server*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rpc_server*, %struct.rpc_server** %31, i64 %33
  %35 = load %struct.rpc_server*, %struct.rpc_server** %34, align 8
  %36 = icmp ne %struct.rpc_server* %35, null
  br i1 %36, label %37, label %86

37:                                               ; preds = %28
  %38 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %4, align 8
  %39 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %38, i32 0, i32 1
  %40 = load %struct.rpc_server**, %struct.rpc_server*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rpc_server*, %struct.rpc_server** %40, i64 %42
  %44 = load %struct.rpc_server*, %struct.rpc_server** %43, align 8
  %45 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @rpc_status_connected, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %37
  %50 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %4, align 8
  %51 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %50, i32 0, i32 1
  %52 = load %struct.rpc_server**, %struct.rpc_server*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.rpc_server*, %struct.rpc_server** %52, i64 %54
  %56 = load %struct.rpc_server*, %struct.rpc_server** %55, align 8
  %57 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @server_fds, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* @POLLOUT, align 4
  %65 = load i32, i32* @POLLERR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @POLLHUP, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @POLLNVAL, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @POLLRDHUP, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @server_fds, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** @server_fds_tmp, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 %79, i64* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %49, %37, %28
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %22

90:                                               ; preds = %22
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store %struct.rpc_server* null, %struct.rpc_server** %3, align 8
  br label %216

94:                                               ; preds = %90
  %95 = load double, double* %5, align 8
  %96 = call i32 @get_ms_timeout(double %95)
  store i32 %96, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %97 = call i32 @ADD_CNT(i32 (%struct.TYPE_6__*, i32, i32)* @poll)
  %98 = call i32 @START_TIMER(i32 (%struct.TYPE_6__*, i32, i32)* @poll)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @server_fds, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @poll(%struct.TYPE_6__* %99, i32 %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = call i32 @END_TIMER(i32 (%struct.TYPE_6__*, i32, i32)* @poll)
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = load i32, i32* @errno, align 4
  %108 = call i32 @strerror(i32 %107)
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 @rpc_global_seterror(i32 %108, i32 %109)
  store %struct.rpc_server* null, %struct.rpc_server** %3, align 8
  br label %216

111:                                              ; preds = %94
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store %struct.rpc_server* null, %struct.rpc_server** %3, align 8
  br label %216

115:                                              ; preds = %111
  store i32 0, i32* %11, align 4
  store %struct.rpc_server* null, %struct.rpc_server** %12, align 8
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %206, %115
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %209

120:                                              ; preds = %116
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @server_fds, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @POLLERR, align 4
  %128 = load i32, i32* @POLLHUP, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @POLLNVAL, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @POLLRDHUP, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %126, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %174

136:                                              ; preds = %120
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @server_fds, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @POLLRDHUP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %160, %146
  %148 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %4, align 8
  %149 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %148, i32 0, i32 1
  %150 = load %struct.rpc_server**, %struct.rpc_server*** %149, align 8
  %151 = load i64*, i64** @server_fds_tmp, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.rpc_server*, %struct.rpc_server** %150, i64 %155
  %157 = load %struct.rpc_server*, %struct.rpc_server** %156, align 8
  %158 = call i64 @rpc_work(%struct.rpc_server* %157, i32 0, i32 0)
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %147
  br label %147

161:                                              ; preds = %147
  br label %162

162:                                              ; preds = %161, %136
  %163 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %4, align 8
  %164 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %163, i32 0, i32 1
  %165 = load %struct.rpc_server**, %struct.rpc_server*** %164, align 8
  %166 = load i64*, i64** @server_fds_tmp, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.rpc_server*, %struct.rpc_server** %165, i64 %170
  %172 = load %struct.rpc_server*, %struct.rpc_server** %171, align 8
  %173 = call i32 @rpc_server_failure(%struct.rpc_server* %172)
  br label %205

174:                                              ; preds = %120
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @server_fds, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @POLLOUT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %174
  %185 = call i32 (...) @lrand48()
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  %188 = srem i32 %185, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %184
  %191 = load %struct.rpc_server_collection*, %struct.rpc_server_collection** %4, align 8
  %192 = getelementptr inbounds %struct.rpc_server_collection, %struct.rpc_server_collection* %191, i32 0, i32 1
  %193 = load %struct.rpc_server**, %struct.rpc_server*** %192, align 8
  %194 = load i64*, i64** @server_fds_tmp, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.rpc_server*, %struct.rpc_server** %193, i64 %198
  %200 = load %struct.rpc_server*, %struct.rpc_server** %199, align 8
  store %struct.rpc_server* %200, %struct.rpc_server** %12, align 8
  br label %201

201:                                              ; preds = %190, %184
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %204

204:                                              ; preds = %201, %174
  br label %205

205:                                              ; preds = %204, %162
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %116

209:                                              ; preds = %116
  %210 = load %struct.rpc_server*, %struct.rpc_server** %12, align 8
  %211 = icmp ne %struct.rpc_server* %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load %struct.rpc_server*, %struct.rpc_server** %12, align 8
  store %struct.rpc_server* %213, %struct.rpc_server** %3, align 8
  br label %216

214:                                              ; preds = %209
  br label %13

215:                                              ; preds = %19
  store %struct.rpc_server* null, %struct.rpc_server** %3, align 8
  br label %216

216:                                              ; preds = %215, %212, %114, %106, %93
  %217 = load %struct.rpc_server*, %struct.rpc_server** %3, align 8
  ret %struct.rpc_server* %217
}

declare dso_local i32 @get_ms_timeout(double) #1

declare dso_local i32 @ADD_CNT(i32 (%struct.TYPE_6__*, i32, i32)*) #1

declare dso_local i32 @poll(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @START_TIMER(i32 (%struct.TYPE_6__*, i32, i32)*) #1

declare dso_local i32 @END_TIMER(i32 (%struct.TYPE_6__*, i32, i32)*) #1

declare dso_local i32 @rpc_global_seterror(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @rpc_work(%struct.rpc_server*, i32, i32) #1

declare dso_local i32 @rpc_server_failure(%struct.rpc_server*) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
