; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_mark_nsock_dead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_mark_nsock_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nbd_sock = type { i32, i64, i32*, i32 }
%struct.link_dead_args = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@nbd_dead_link_work = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@NBD_RT_DISCONNECT_REQUESTED = common dso_local global i32 0, align 4
@NBD_RT_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Disconnected due to user request.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbd_device*, %struct.nbd_sock*, i32)* @nbd_mark_nsock_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_mark_nsock_dead(%struct.nbd_device* %0, %struct.nbd_sock* %1, i32 %2) #0 {
  %4 = alloca %struct.nbd_device*, align 8
  %5 = alloca %struct.nbd_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.link_dead_args*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %4, align 8
  store %struct.nbd_sock* %1, %struct.nbd_sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nbd_sock*, %struct.nbd_sock** %5, align 8
  %9 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %17 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @nbd_disconnected(%struct.TYPE_2__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call %struct.link_dead_args* @kmalloc(i32 8, i32 %22)
  store %struct.link_dead_args* %23, %struct.link_dead_args** %7, align 8
  %24 = load %struct.link_dead_args*, %struct.link_dead_args** %7, align 8
  %25 = icmp ne %struct.link_dead_args* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.link_dead_args*, %struct.link_dead_args** %7, align 8
  %28 = getelementptr inbounds %struct.link_dead_args, %struct.link_dead_args* %27, i32 0, i32 0
  %29 = load i32, i32* @nbd_dead_link_work, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %32 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.link_dead_args*, %struct.link_dead_args** %7, align 8
  %35 = getelementptr inbounds %struct.link_dead_args, %struct.link_dead_args* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @system_wq, align 4
  %37 = load %struct.link_dead_args*, %struct.link_dead_args** %7, align 8
  %38 = getelementptr inbounds %struct.link_dead_args, %struct.link_dead_args* %37, i32 0, i32 0
  %39 = call i32 @queue_work(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %26, %21
  br label %41

41:                                               ; preds = %40, %15, %12, %3
  %42 = load %struct.nbd_sock*, %struct.nbd_sock** %5, align 8
  %43 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %78, label %46

46:                                               ; preds = %41
  %47 = load %struct.nbd_sock*, %struct.nbd_sock** %5, align 8
  %48 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SHUT_RDWR, align 4
  %51 = call i32 @kernel_sock_shutdown(i32 %49, i32 %50)
  %52 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %53 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i64 @atomic_dec_return(i32* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %46
  %59 = load i32, i32* @NBD_RT_DISCONNECT_REQUESTED, align 4
  %60 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %61 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i64 @test_and_clear_bit(i32 %59, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load i32, i32* @NBD_RT_DISCONNECTED, align 4
  %68 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %69 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @set_bit(i32 %67, i32* %71)
  %73 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %74 = call i32 @nbd_to_dev(%struct.nbd_device* %73)
  %75 = call i32 @dev_info(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %66, %58
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77, %41
  %79 = load %struct.nbd_sock*, %struct.nbd_sock** %5, align 8
  %80 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.nbd_sock*, %struct.nbd_sock** %5, align 8
  %82 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load %struct.nbd_sock*, %struct.nbd_sock** %5, align 8
  %84 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  ret void
}

declare dso_local i32 @nbd_disconnected(%struct.TYPE_2__*) #1

declare dso_local %struct.link_dead_args* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kernel_sock_shutdown(i32, i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @nbd_to_dev(%struct.nbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
