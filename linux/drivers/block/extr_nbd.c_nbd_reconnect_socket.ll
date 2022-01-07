; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_reconnect_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_reconnect_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, i32, %struct.TYPE_3__, %struct.nbd_config* }
%struct.TYPE_3__ = type { i64 }
%struct.nbd_config = type { i32, i32, i32, i32, i32, %struct.nbd_sock** }
%struct.nbd_sock = type { i32, i32, i32, i32, %struct.socket* }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.recv_thread_args = type { i32, i32, %struct.nbd_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@recv_work = common dso_local global i32 0, align 4
@NBD_RT_DISCONNECTED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*, i64)* @nbd_reconnect_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_reconnect_socket(%struct.nbd_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbd_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nbd_config*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.recv_thread_args*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nbd_sock*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %14 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %13, i32 0, i32 3
  %15 = load %struct.nbd_config*, %struct.nbd_config** %14, align 8
  store %struct.nbd_config* %15, %struct.nbd_config** %6, align 8
  %16 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.socket* @nbd_get_socket(%struct.nbd_device* %16, i64 %17, i32* %11)
  store %struct.socket* %18, %struct.socket** %7, align 8
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = icmp ne %struct.socket* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %3, align 4
  br label %146

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.recv_thread_args* @kzalloc(i32 16, i32 %24)
  store %struct.recv_thread_args* %25, %struct.recv_thread_args** %9, align 8
  %26 = load %struct.recv_thread_args*, %struct.recv_thread_args** %9, align 8
  %27 = icmp ne %struct.recv_thread_args* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = call i32 @sockfd_put(%struct.socket* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %146

33:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %136, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %37 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %139

40:                                               ; preds = %34
  %41 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %42 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %41, i32 0, i32 5
  %43 = load %struct.nbd_sock**, %struct.nbd_sock*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %43, i64 %45
  %47 = load %struct.nbd_sock*, %struct.nbd_sock** %46, align 8
  store %struct.nbd_sock* %47, %struct.nbd_sock** %12, align 8
  %48 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %49 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  br label %136

53:                                               ; preds = %40
  %54 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %55 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %54, i32 0, i32 2
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %58 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %53
  %62 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %63 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %62, i32 0, i32 2
  %64 = call i32 @mutex_unlock(i32* %63)
  br label %136

65:                                               ; preds = %53
  %66 = load %struct.socket*, %struct.socket** %7, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @sk_set_memalloc(%struct.TYPE_4__* %68)
  %70 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %71 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %65
  %76 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %77 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.socket*, %struct.socket** %7, align 8
  %81 = getelementptr inbounds %struct.socket, %struct.socket* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %79, i64* %83, align 8
  br label %84

84:                                               ; preds = %75, %65
  %85 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %86 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %85, i32 0, i32 4
  %87 = call i32 @atomic_inc(i32* %86)
  %88 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %89 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %88, i32 0, i32 1
  %90 = call i32 @refcount_inc(i32* %89)
  %91 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %92 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %91, i32 0, i32 4
  %93 = load %struct.socket*, %struct.socket** %92, align 8
  store %struct.socket* %93, %struct.socket** %8, align 8
  %94 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %95 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %94, i32 0, i32 1
  store i32 -1, i32* %95, align 4
  %96 = load %struct.socket*, %struct.socket** %7, align 8
  %97 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %98 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %97, i32 0, i32 4
  store %struct.socket* %96, %struct.socket** %98, align 8
  %99 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %100 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.recv_thread_args*, %struct.recv_thread_args** %9, align 8
  %102 = getelementptr inbounds %struct.recv_thread_args, %struct.recv_thread_args* %101, i32 0, i32 1
  %103 = load i32, i32* @recv_work, align 4
  %104 = call i32 @INIT_WORK(i32* %102, i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.recv_thread_args*, %struct.recv_thread_args** %9, align 8
  %107 = getelementptr inbounds %struct.recv_thread_args, %struct.recv_thread_args* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %109 = load %struct.recv_thread_args*, %struct.recv_thread_args** %9, align 8
  %110 = getelementptr inbounds %struct.recv_thread_args, %struct.recv_thread_args* %109, i32 0, i32 2
  store %struct.nbd_device* %108, %struct.nbd_device** %110, align 8
  %111 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %112 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.nbd_sock*, %struct.nbd_sock** %12, align 8
  %116 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load %struct.socket*, %struct.socket** %8, align 8
  %119 = call i32 @sockfd_put(%struct.socket* %118)
  %120 = load i32, i32* @NBD_RT_DISCONNECTED, align 4
  %121 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %122 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %121, i32 0, i32 3
  %123 = call i32 @clear_bit(i32 %120, i32* %122)
  %124 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %125 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.recv_thread_args*, %struct.recv_thread_args** %9, align 8
  %128 = getelementptr inbounds %struct.recv_thread_args, %struct.recv_thread_args* %127, i32 0, i32 1
  %129 = call i32 @queue_work(i32 %126, i32* %128)
  %130 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %131 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %130, i32 0, i32 2
  %132 = call i32 @atomic_inc(i32* %131)
  %133 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %134 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %133, i32 0, i32 1
  %135 = call i32 @wake_up(i32* %134)
  store i32 0, i32* %3, align 4
  br label %146

136:                                              ; preds = %61, %52
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %34

139:                                              ; preds = %34
  %140 = load %struct.socket*, %struct.socket** %7, align 8
  %141 = call i32 @sockfd_put(%struct.socket* %140)
  %142 = load %struct.recv_thread_args*, %struct.recv_thread_args** %9, align 8
  %143 = call i32 @kfree(%struct.recv_thread_args* %142)
  %144 = load i32, i32* @ENOSPC, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %139, %84, %28, %21
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.socket* @nbd_get_socket(%struct.nbd_device*, i64, i32*) #1

declare dso_local %struct.recv_thread_args* @kzalloc(i32, i32) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sk_set_memalloc(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kfree(%struct.recv_thread_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
