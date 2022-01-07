; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_renew.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.process_id = type { i32 }
%struct.raw_message = type { i32 }
%struct.tmp_msg = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.raw_message }
%struct.TYPE_7__ = type { %struct.raw_message }
%struct.TYPE_6__ = type { %struct.tmp_msg }

@__clear_udp_msg_constructor = common dso_local global i32 0, align 4
@udp_msg_free = common dso_local global i32 0, align 4
@UDP_ALLOW_UNENC = common dso_local global i32 0, align 4
@UDP_ALLOW_ENC = common dso_local global i32 0, align 4
@RX_TIMEOUT = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_target_renew(%struct.udp_target* %0, %struct.process_id* %1, i32 %2) #0 {
  %4 = alloca %struct.udp_target*, align 8
  %5 = alloca %struct.process_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.raw_message, align 4
  %8 = alloca %struct.tmp_msg, align 8
  store %struct.udp_target* %0, %struct.udp_target** %4, align 8
  store %struct.process_id* %1, %struct.process_id** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %10 = load %struct.process_id*, %struct.process_id** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @udp_target_update_pid(%struct.udp_target* %9, %struct.process_id* %10, i32 %11)
  %13 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %14 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %16 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %15, i32 0, i32 19
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @tree_clear_int(i8* %17)
  %19 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %20 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %19, i32 0, i32 19
  store i8* %18, i8** %20, align 8
  %21 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %22 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %21, i32 0, i32 18
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @tree_clear_int(i8* %23)
  %25 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %26 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %25, i32 0, i32 18
  store i8* %24, i8** %26, align 8
  %27 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %28 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %27, i32 0, i32 17
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @__clear_udp_msg_constructor, align 4
  %31 = call i32 @tree_act_udp_msg_constructor(i32 %29, i32 %30)
  %32 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %33 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %32, i32 0, i32 17
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tree_clear_udp_msg_constructor(i32 %34)
  %36 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %37 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %36, i32 0, i32 17
  store i32 %35, i32* %37, align 4
  %38 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %39 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %38, i32 0, i32 16
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @udp_msg_free, align 4
  %42 = call i32 @tree_act_udp_msg(i32 %40, i32 %41)
  %43 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %44 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %43, i32 0, i32 16
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @tree_clear_udp_msg(i32 %45)
  %47 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %48 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %47, i32 0, i32 16
  store i32 %46, i32* %48, align 8
  %49 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %50 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %49, i32 0, i32 15
  store i64 0, i64* %50, align 8
  %51 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %52 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %51, i32 0, i32 14
  store i64 0, i64* %52, align 8
  %53 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %54 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %53, i32 0, i32 13
  store i64 0, i64* %54, align 8
  %55 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %56 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %55, i32 0, i32 1
  store i32 -1, i32* %56, align 4
  %57 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %58 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %57, i32 0, i32 12
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @UDP_ALLOW_UNENC, align 4
  %60 = load i32, i32* @UDP_ALLOW_ENC, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %63 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %65 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %64, i32 0, i32 11
  store i64 0, i64* %65, align 8
  %66 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %67 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %66, i32 0, i32 10
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @RX_TIMEOUT, align 4
  %69 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %70 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @TX_TIMEOUT, align 4
  %72 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %73 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %79, %3
  %75 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %76 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %81 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.TYPE_7__* @queue_get_first_raw_message(i64 %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = bitcast %struct.raw_message* %7 to i8*
  %86 = bitcast %struct.raw_message* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 4, i1 false)
  %87 = call i32 @rwm_free(%struct.raw_message* %7)
  %88 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %89 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @queue_del_first_raw_message(i64 %90)
  %92 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %93 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %92, i32 0, i32 7
  store i64 %91, i64* %93, align 8
  br label %74

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %100, %94
  %96 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %97 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %95
  %101 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %102 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.TYPE_6__* @queue_get_first_tmp_msg(i64 %103)
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = bitcast %struct.tmp_msg* %8 to i8*
  %107 = bitcast %struct.tmp_msg* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 8, i1 false)
  %108 = getelementptr inbounds %struct.tmp_msg, %struct.tmp_msg* %8, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = call i32 @rwm_free(%struct.raw_message* %110)
  %112 = getelementptr inbounds %struct.tmp_msg, %struct.tmp_msg* %8, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = call i32 @free(%struct.TYPE_8__* %113)
  %115 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %116 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @queue_del_first_tmp_msg(i64 %117)
  %119 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %120 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %119, i32 0, i32 6
  store i64 %118, i64* %120, align 8
  br label %95

121:                                              ; preds = %95
  %122 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %123 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %129 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %128, i32 0, i32 5
  %130 = call i32 @remove_event_timer(%struct.TYPE_5__* %129)
  br label %131

131:                                              ; preds = %127, %121
  %132 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %133 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %139 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %138, i32 0, i32 4
  %140 = call i32 @remove_event_timer(%struct.TYPE_5__* %139)
  br label %141

141:                                              ; preds = %137, %131
  %142 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %143 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %149 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %148, i32 0, i32 3
  %150 = call i32 @remove_event_timer(%struct.TYPE_5__* %149)
  br label %151

151:                                              ; preds = %147, %141
  ret void
}

declare dso_local i32 @udp_target_update_pid(%struct.udp_target*, %struct.process_id*, i32) #1

declare dso_local i8* @tree_clear_int(i8*) #1

declare dso_local i32 @tree_act_udp_msg_constructor(i32, i32) #1

declare dso_local i32 @tree_clear_udp_msg_constructor(i32) #1

declare dso_local i32 @tree_act_udp_msg(i32, i32) #1

declare dso_local i32 @tree_clear_udp_msg(i32) #1

declare dso_local %struct.TYPE_7__* @queue_get_first_raw_message(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rwm_free(%struct.raw_message*) #1

declare dso_local i64 @queue_del_first_raw_message(i64) #1

declare dso_local %struct.TYPE_6__* @queue_get_first_tmp_msg(i64) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @queue_del_first_tmp_msg(i64) #1

declare dso_local i32 @remove_event_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
