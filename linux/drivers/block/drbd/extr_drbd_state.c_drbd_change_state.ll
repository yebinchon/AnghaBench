; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_drbd_change_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_drbd_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.drbd_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_change_state(%struct.drbd_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.drbd_state, align 4
  %6 = alloca %union.drbd_state, align 4
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %union.drbd_state, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.drbd_state, align 4
  %13 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %7, align 8
  store i32 %1, i32* %8, align 4
  %15 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %16 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %22 = call i32 @drbd_read_state(%struct.drbd_device* %21)
  %23 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @apply_mask_val(i32 %22, i32 %24, i32 %26)
  %28 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %12, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %union.drbd_state* %10 to i8*
  %30 = bitcast %union.drbd_state* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_drbd_set_state(%struct.drbd_device* %31, i32 %34, i32 %32, i32* null)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %37 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %11, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @apply_mask_val(i32, i32, i32) #1

declare dso_local i32 @drbd_read_state(%struct.drbd_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_drbd_set_state(%struct.drbd_device*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
