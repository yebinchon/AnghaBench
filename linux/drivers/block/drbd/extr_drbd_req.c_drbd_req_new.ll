; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_req_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_req_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__, i64, %struct.bio*, %struct.drbd_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.drbd_device = type { i32 }
%struct.bio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@drbd_request_mempool = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@RQ_WRITE = common dso_local global i32 0, align 4
@REQ_OP_WRITE_SAME = common dso_local global i64 0, align 8
@RQ_WSAME = common dso_local global i32 0, align 4
@REQ_OP_WRITE_ZEROES = common dso_local global i64 0, align 8
@RQ_ZEROES = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@RQ_UNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drbd_request* (%struct.drbd_device*, %struct.bio*)* @drbd_req_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drbd_request* @drbd_req_new(%struct.drbd_device* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.drbd_request*, align 8
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.drbd_request*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %7 = load i32, i32* @GFP_NOIO, align 4
  %8 = call %struct.drbd_request* @mempool_alloc(i32* @drbd_request_mempool, i32 %7)
  store %struct.drbd_request* %8, %struct.drbd_request** %6, align 8
  %9 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %10 = icmp ne %struct.drbd_request* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.drbd_request* null, %struct.drbd_request** %3, align 8
  br label %110

12:                                               ; preds = %2
  %13 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %14 = call i32 @memset(%struct.drbd_request* %13, i32 0, i32 72)
  %15 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = call i32 @drbd_req_make_private_bio(%struct.drbd_request* %15, %struct.bio* %16)
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = call i64 @bio_data_dir(%struct.bio* %18)
  %20 = load i64, i64* @WRITE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @RQ_WRITE, align 4
  br label %25

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = call i64 @bio_op(%struct.bio* %27)
  %29 = load i64, i64* @REQ_OP_WRITE_SAME, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @RQ_WSAME, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = or i32 %26, %35
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = call i64 @bio_op(%struct.bio* %37)
  %39 = load i64, i64* @REQ_OP_WRITE_ZEROES, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @RQ_ZEROES, align 4
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = or i32 %36, %45
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = call i64 @bio_op(%struct.bio* %47)
  %49 = load i64, i64* @REQ_OP_DISCARD, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @RQ_UNMAP, align 4
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = or i32 %46, %55
  %57 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %58 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %60 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %61 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %60, i32 0, i32 10
  store %struct.drbd_device* %59, %struct.drbd_device** %61, align 8
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %64 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %63, i32 0, i32 9
  store %struct.bio* %62, %struct.bio** %64, align 8
  %65 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %66 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  %67 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %68 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %67, i32 0, i32 7
  %69 = call i32 @drbd_clear_interval(%struct.TYPE_6__* %68)
  %70 = load %struct.bio*, %struct.bio** %5, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %75 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load %struct.bio*, %struct.bio** %5, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %82 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %85 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %88 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %91 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %90, i32 0, i32 6
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %94 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %98 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %97, i32 0, i32 4
  %99 = call i32 @INIT_LIST_HEAD(i32* %98)
  %100 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %101 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %100, i32 0, i32 3
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %104 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %103, i32 0, i32 2
  %105 = call i32 @atomic_set(i32* %104, i32 1)
  %106 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  %107 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %106, i32 0, i32 1
  %108 = call i32 @kref_init(i32* %107)
  %109 = load %struct.drbd_request*, %struct.drbd_request** %6, align 8
  store %struct.drbd_request* %109, %struct.drbd_request** %3, align 8
  br label %110

110:                                              ; preds = %54, %11
  %111 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  ret %struct.drbd_request* %111
}

declare dso_local %struct.drbd_request* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.drbd_request*, i32, i32) #1

declare dso_local i32 @drbd_req_make_private_bio(%struct.drbd_request*, %struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @drbd_clear_interval(%struct.TYPE_6__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
