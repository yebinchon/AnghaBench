; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_sock_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_sock_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, %struct.nbd_config* }
%struct.nbd_config = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.msghdr = type { i32, i64, i32*, i64, i32*, %struct.iov_iter }

@.str = private unnamed_addr constant [44 x i8] c"Attempted %s on closed socket in sock_xmit\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_MEMALLOC = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*, i32, i32, %struct.iov_iter*, i32, i32*)* @sock_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_xmit(%struct.nbd_device* %0, i32 %1, i32 %2, %struct.iov_iter* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nbd_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iov_iter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nbd_config*, align 8
  %15 = alloca %struct.socket*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.msghdr, align 8
  %18 = alloca i32, align 4
  store %struct.nbd_device* %0, %struct.nbd_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.iov_iter* %3, %struct.iov_iter** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load %struct.nbd_device*, %struct.nbd_device** %8, align 8
  %20 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %19, i32 0, i32 1
  %21 = load %struct.nbd_config*, %struct.nbd_config** %20, align 8
  store %struct.nbd_config* %21, %struct.nbd_config** %14, align 8
  %22 = load %struct.nbd_config*, %struct.nbd_config** %14, align 8
  %23 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.socket*, %struct.socket** %29, align 8
  store %struct.socket* %30, %struct.socket** %15, align 8
  %31 = load %struct.socket*, %struct.socket** %15, align 8
  %32 = icmp ne %struct.socket* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %6
  %38 = load %struct.nbd_device*, %struct.nbd_device** %8, align 8
  %39 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @disk_to_dev(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 @dev_err_ratelimited(i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %107

49:                                               ; preds = %6
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 5
  %51 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %52 = bitcast %struct.iov_iter* %50 to i8*
  %53 = bitcast %struct.iov_iter* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = call i32 (...) @memalloc_noreclaim_save()
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %100, %49
  %56 = load i32, i32* @GFP_NOIO, align 4
  %57 = load i32, i32* @__GFP_MEMALLOC, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.socket*, %struct.socket** %15, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 4
  store i32* null, i32** %63, align 8
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @MSG_NOSIGNAL, align 4
  %69 = or i32 %67, %68
  %70 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = load %struct.socket*, %struct.socket** %15, align 8
  %75 = call i32 @sock_sendmsg(%struct.socket* %74, %struct.msghdr* %17)
  store i32 %75, i32* %16, align 4
  br label %81

76:                                               ; preds = %55
  %77 = load %struct.socket*, %struct.socket** %15, align 8
  %78 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sock_recvmsg(%struct.socket* %77, %struct.msghdr* %17, i32 %79)
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %16, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %16, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @EPIPE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %103

91:                                               ; preds = %81
  %92 = load i32*, i32** %13, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %16, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %91
  br label %100

100:                                              ; preds = %99
  %101 = call i64 @msg_data_left(%struct.msghdr* %17)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %55, label %103

103:                                              ; preds = %100, %90
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @memalloc_noreclaim_restore(i32 %104)
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %103, %37
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i8*) #1

declare dso_local i32 @disk_to_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memalloc_noreclaim_save(...) #1

declare dso_local i32 @sock_sendmsg(%struct.socket*, %struct.msghdr*) #1

declare dso_local i32 @sock_recvmsg(%struct.socket*, %struct.msghdr*, i32) #1

declare dso_local i64 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @memalloc_noreclaim_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
