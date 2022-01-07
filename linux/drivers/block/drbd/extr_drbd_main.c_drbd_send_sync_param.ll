; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_sync_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_sync_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_rs_param_95 = type { i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.net_conf = type { i32, i32 }
%struct.disk_conf = type { i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@P_SYNC_PARAM89 = common dso_local global i32 0, align 4
@P_SYNC_PARAM = common dso_local global i32 0, align 4
@SHARED_SECRET_MAX = common dso_local global i32 0, align 4
@DRBD_RESYNC_RATE_DEF = common dso_local global i32 0, align 4
@DRBD_C_PLAN_AHEAD_DEF = common dso_local global i32 0, align 4
@DRBD_C_DELAY_TARGET_DEF = common dso_local global i32 0, align 4
@DRBD_C_FILL_TARGET_DEF = common dso_local global i32 0, align 4
@DRBD_C_MAX_RATE_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_sync_param(%struct.drbd_peer_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_peer_device*, align 8
  %4 = alloca %struct.drbd_socket*, align 8
  %5 = alloca %struct.p_rs_param_95*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_conf*, align 8
  %10 = alloca %struct.disk_conf*, align 8
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %3, align 8
  %11 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %12 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %17 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store %struct.drbd_socket* %19, %struct.drbd_socket** %4, align 8
  %20 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %21 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %22 = call %struct.p_rs_param_95* @drbd_prepare_command(%struct.drbd_peer_device* %20, %struct.drbd_socket* %21)
  store %struct.p_rs_param_95* %22, %struct.p_rs_param_95** %5, align 8
  %23 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %24 = icmp ne %struct.p_rs_param_95* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %174

28:                                               ; preds = %1
  %29 = call i32 (...) @rcu_read_lock()
  %30 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %31 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @rcu_dereference(i32 %34)
  %36 = bitcast i8* %35 to %struct.net_conf*
  store %struct.net_conf* %36, %struct.net_conf** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %37, 87
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %58

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 88
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.net_conf*, %struct.net_conf** %9, align 8
  %45 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlen(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = add i64 4, %48
  %50 = add i64 %49, 1
  br label %56

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 94
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i64 4, i64 48
  br label %56

56:                                               ; preds = %51, %43
  %57 = phi i64 [ %50, %43 ], [ %55, %51 ]
  br label %58

58:                                               ; preds = %56, %39
  %59 = phi i64 [ 4, %39 ], [ %57, %56 ]
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %61, 89
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @P_SYNC_PARAM89, align 4
  br label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @P_SYNC_PARAM, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %8, align 4
  %69 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %70 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SHARED_SECRET_MAX, align 4
  %73 = mul nsw i32 2, %72
  %74 = call i32 @memset(i32 %71, i32 0, i32 %73)
  %75 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %76 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = call i64 @get_ldev(%struct.TYPE_7__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %124

80:                                               ; preds = %67
  %81 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %82 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @rcu_dereference(i32 %87)
  %89 = bitcast i8* %88 to %struct.disk_conf*
  store %struct.disk_conf* %89, %struct.disk_conf** %10, align 8
  %90 = load %struct.disk_conf*, %struct.disk_conf** %10, align 8
  %91 = getelementptr inbounds %struct.disk_conf, %struct.disk_conf* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @cpu_to_be32(i32 %92)
  %94 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %95 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  %96 = load %struct.disk_conf*, %struct.disk_conf** %10, align 8
  %97 = getelementptr inbounds %struct.disk_conf, %struct.disk_conf* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %101 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.disk_conf*, %struct.disk_conf** %10, align 8
  %103 = getelementptr inbounds %struct.disk_conf, %struct.disk_conf* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @cpu_to_be32(i32 %104)
  %106 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %107 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.disk_conf*, %struct.disk_conf** %10, align 8
  %109 = getelementptr inbounds %struct.disk_conf, %struct.disk_conf* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @cpu_to_be32(i32 %110)
  %112 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %113 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.disk_conf*, %struct.disk_conf** %10, align 8
  %115 = getelementptr inbounds %struct.disk_conf, %struct.disk_conf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @cpu_to_be32(i32 %116)
  %118 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %119 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %121 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = call i32 @put_ldev(%struct.TYPE_7__* %122)
  br label %145

124:                                              ; preds = %67
  %125 = load i32, i32* @DRBD_RESYNC_RATE_DEF, align 4
  %126 = call i8* @cpu_to_be32(i32 %125)
  %127 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %128 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %127, i32 0, i32 6
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* @DRBD_C_PLAN_AHEAD_DEF, align 4
  %130 = call i8* @cpu_to_be32(i32 %129)
  %131 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %132 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %131, i32 0, i32 5
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* @DRBD_C_DELAY_TARGET_DEF, align 4
  %134 = call i8* @cpu_to_be32(i32 %133)
  %135 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %136 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @DRBD_C_FILL_TARGET_DEF, align 4
  %138 = call i8* @cpu_to_be32(i32 %137)
  %139 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %140 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* @DRBD_C_MAX_RATE_DEF, align 4
  %142 = call i8* @cpu_to_be32(i32 %141)
  %143 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %144 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %124, %80
  %146 = load i32, i32* %7, align 4
  %147 = icmp sge i32 %146, 88
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %150 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.net_conf*, %struct.net_conf** %9, align 8
  %153 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @strcpy(i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %148, %145
  %157 = load i32, i32* %7, align 4
  %158 = icmp sge i32 %157, 89
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load %struct.p_rs_param_95*, %struct.p_rs_param_95** %5, align 8
  %161 = getelementptr inbounds %struct.p_rs_param_95, %struct.p_rs_param_95* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.net_conf*, %struct.net_conf** %9, align 8
  %164 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @strcpy(i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %159, %156
  %168 = call i32 (...) @rcu_read_unlock()
  %169 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %170 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @drbd_send_command(%struct.drbd_peer_device* %169, %struct.drbd_socket* %170, i32 %171, i32 %172, i32* null, i32 0)
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %167, %25
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.p_rs_param_95* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @get_ldev(%struct.TYPE_7__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @put_ldev(%struct.TYPE_7__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @drbd_send_command(%struct.drbd_peer_device*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
