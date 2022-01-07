; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_4__*, %struct.drbd_device* }
%struct.TYPE_4__ = type { i64, %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.drbd_device = type { i32 }
%struct.drbd_peer_request = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.p_data = type { i64, i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_block(%struct.drbd_peer_device* %0, i32 %1, %struct.drbd_peer_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_peer_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_peer_request*, align 8
  %8 = alloca %struct.drbd_device*, align 8
  %9 = alloca %struct.drbd_socket*, align 8
  %10 = alloca %struct.p_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drbd_peer_request* %2, %struct.drbd_peer_request** %7, align 8
  %13 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %14 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %13, i32 0, i32 1
  %15 = load %struct.drbd_device*, %struct.drbd_device** %14, align 8
  store %struct.drbd_device* %15, %struct.drbd_device** %8, align 8
  %16 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %17 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.drbd_socket* %19, %struct.drbd_socket** %9, align 8
  %20 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %21 = load %struct.drbd_socket*, %struct.drbd_socket** %9, align 8
  %22 = call %struct.p_data* @drbd_prepare_command(%struct.drbd_peer_device* %20, %struct.drbd_socket* %21)
  store %struct.p_data* %22, %struct.p_data** %10, align 8
  %23 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %24 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %31 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @crypto_shash_digestsize(i64 %34)
  br label %37

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32 [ %35, %29 ], [ 0, %36 ]
  store i32 %38, i32* %12, align 4
  %39 = load %struct.p_data*, %struct.p_data** %10, align 8
  %40 = icmp ne %struct.p_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %102

44:                                               ; preds = %37
  %45 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %7, align 8
  %46 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_be64(i32 %48)
  %50 = load %struct.p_data*, %struct.p_data** %10, align 8
  %51 = getelementptr inbounds %struct.p_data, %struct.p_data* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %7, align 8
  %53 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.p_data*, %struct.p_data** %10, align 8
  %56 = getelementptr inbounds %struct.p_data, %struct.p_data* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.p_data*, %struct.p_data** %10, align 8
  %58 = getelementptr inbounds %struct.p_data, %struct.p_data* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.p_data*, %struct.p_data** %10, align 8
  %60 = getelementptr inbounds %struct.p_data, %struct.p_data* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %44
  %64 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %65 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %7, align 8
  %70 = load %struct.p_data*, %struct.p_data** %10, align 8
  %71 = getelementptr inbounds %struct.p_data, %struct.p_data* %70, i64 1
  %72 = call i32 @drbd_csum_ee(i64 %68, %struct.drbd_peer_request* %69, %struct.p_data* %71)
  br label %73

73:                                               ; preds = %63, %44
  %74 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %75 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  %78 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.drbd_socket*, %struct.drbd_socket** %9, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 24, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %7, align 8
  %87 = getelementptr inbounds %struct.drbd_peer_request, %struct.drbd_peer_request* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @__send_command(%struct.TYPE_4__* %76, i32 %79, %struct.drbd_socket* %80, i32 %81, i32 %85, i32* null, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %73
  %94 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %95 = load %struct.drbd_peer_request*, %struct.drbd_peer_request** %7, align 8
  %96 = call i32 @_drbd_send_zc_ee(%struct.drbd_peer_device* %94, %struct.drbd_peer_request* %95)
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %73
  %98 = load %struct.drbd_socket*, %struct.drbd_socket** %9, align 8
  %99 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %97, %41
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.p_data* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @crypto_shash_digestsize(i64) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @drbd_csum_ee(i64, %struct.drbd_peer_request*, %struct.p_data*) #1

declare dso_local i32 @__send_command(%struct.TYPE_4__*, i32, %struct.drbd_socket*, i32, i32, i32*, i32) #1

declare dso_local i32 @_drbd_send_zc_ee(%struct.drbd_peer_device*, %struct.drbd_peer_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
