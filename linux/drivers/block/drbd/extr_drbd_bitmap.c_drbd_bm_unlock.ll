; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.drbd_bitmap* }
%struct.drbd_bitmap = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [37 x i8] c"FIXME no bitmap in drbd_bm_unlock!?\0A\00", align 1
@BM_LOCKED_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"FIXME bitmap not locked in bm_unlock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_bm_unlock(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca %struct.drbd_bitmap*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %4 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %5 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %4, i32 0, i32 0
  %6 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %5, align 8
  store %struct.drbd_bitmap* %6, %struct.drbd_bitmap** %3, align 8
  %7 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %8 = icmp ne %struct.drbd_bitmap* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %11 = call i32 @drbd_err(%struct.drbd_device* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %38

12:                                               ; preds = %1
  %13 = load i32, i32* @BM_LOCKED_MASK, align 4
  %14 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %15 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %14, i32 0, i32 0
  %16 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %15, align 8
  %17 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %23 = call i32 @drbd_err(%struct.drbd_device* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %12
  %25 = load i32, i32* @BM_LOCKED_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %28 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %32 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %34 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %36 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  br label %38

38:                                               ; preds = %24, %9
  ret void
}

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
