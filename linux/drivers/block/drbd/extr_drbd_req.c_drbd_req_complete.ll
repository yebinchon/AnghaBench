; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_req_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_req_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { i32, i64, i32, %struct.TYPE_5__, %struct.TYPE_8__*, i32, i32, %struct.drbd_device* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.drbd_device = type { i32 }
%struct.bio_and_error = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@RQ_LOCAL_PENDING = common dso_local global i32 0, align 4
@RQ_LOCAL_ABORTED = common dso_local global i32 0, align 4
@RQ_NET_QUEUED = common dso_local global i32 0, align 4
@RQ_NET_PENDING = common dso_local global i32 0, align 4
@RQ_COMPLETION_SUSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"drbd_req_complete: Logic BUG rq_state = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"drbd_req_complete: Logic BUG, master_bio == NULL!\0A\00", align 1
@RQ_LOCAL_OK = common dso_local global i32 0, align 4
@RQ_NET_OK = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i64 0, align 8
@REQ_RAHEAD = common dso_local global i32 0, align 4
@RQ_POSTPONED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_request*, %struct.bio_and_error*)* @drbd_req_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_req_complete(%struct.drbd_request* %0, %struct.bio_and_error* %1) #0 {
  %3 = alloca %struct.drbd_request*, align 8
  %4 = alloca %struct.bio_and_error*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drbd_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drbd_request* %0, %struct.drbd_request** %3, align 8
  store %struct.bio_and_error* %1, %struct.bio_and_error** %4, align 8
  %9 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %10 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %13 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %12, i32 0, i32 7
  %14 = load %struct.drbd_device*, %struct.drbd_device** %13, align 8
  store %struct.drbd_device* %14, %struct.drbd_device** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RQ_LOCAL_PENDING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RQ_LOCAL_ABORTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RQ_NET_QUEUED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @RQ_NET_PENDING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @RQ_COMPLETION_SUSP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %29, %24, %19
  %40 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (%struct.drbd_device*, i8*, ...) @drbd_err(%struct.drbd_device* %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %172

43:                                               ; preds = %34
  %44 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %45 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %44, i32 0, i32 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %50 = call i32 (%struct.drbd_device*, i8*, ...) @drbd_err(%struct.drbd_device* %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %172

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @RQ_LOCAL_OK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @RQ_NET_OK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ true, %51 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %65 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %69 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %68, i32 0, i32 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i64 @bio_op(%struct.TYPE_8__* %70)
  %72 = call i64 @op_is_write(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %61
  %75 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %76 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %79 = call %struct.TYPE_7__* @first_peer_device(%struct.drbd_device* %78)
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i64 @atomic_read(i32* %82)
  %84 = icmp eq i64 %77, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %87 = call %struct.TYPE_7__* @first_peer_device(%struct.drbd_device* %86)
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = call i32 @start_new_tl_epoch(%struct.TYPE_6__* %89)
  br label %91

91:                                               ; preds = %85, %74, %61
  %92 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %93 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %94 = call i32 @_drbd_end_io_acct(%struct.drbd_device* %92, %struct.drbd_request* %93)
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %124, label %97

97:                                               ; preds = %91
  %98 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %99 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %98, i32 0, i32 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = call i64 @bio_op(%struct.TYPE_8__* %100)
  %102 = load i64, i64* @REQ_OP_READ, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %97
  %105 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %106 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %105, i32 0, i32 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @REQ_RAHEAD, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %104
  %114 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %115 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %114, i32 0, i32 5
  %116 = call i32 @list_empty(i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @RQ_POSTPONED, align 4
  %120 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %121 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %113, %104, %97, %91
  %125 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %126 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @RQ_POSTPONED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %158, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %144

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %142

139:                                              ; preds = %135
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  br label %142

142:                                              ; preds = %139, %138
  %143 = phi i32 [ %136, %138 ], [ %141, %139 ]
  br label %144

144:                                              ; preds = %142, %134
  %145 = phi i32 [ 0, %134 ], [ %143, %142 ]
  %146 = load %struct.bio_and_error*, %struct.bio_and_error** %4, align 8
  %147 = getelementptr inbounds %struct.bio_and_error, %struct.bio_and_error* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %149 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %148, i32 0, i32 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = load %struct.bio_and_error*, %struct.bio_and_error** %4, align 8
  %152 = getelementptr inbounds %struct.bio_and_error, %struct.bio_and_error* %151, i32 0, i32 0
  store %struct.TYPE_8__* %150, %struct.TYPE_8__** %152, align 8
  %153 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %154 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %153, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %154, align 8
  %155 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %156 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  br label %158

158:                                              ; preds = %144, %124
  %159 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %160 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %166 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %165, i32 0, i32 0
  %167 = call i32 @wake_up(i32* %166)
  br label %168

168:                                              ; preds = %164, %158
  %169 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %170 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %169, i32 0, i32 2
  %171 = call i32 @list_del_init(i32* %170)
  br label %172

172:                                              ; preds = %168, %48, %39
  ret void
}

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @op_is_write(i64) #1

declare dso_local i64 @bio_op(%struct.TYPE_8__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_7__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @start_new_tl_epoch(%struct.TYPE_6__*) #1

declare dso_local i32 @_drbd_end_io_acct(%struct.drbd_device*, %struct.drbd_request*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
