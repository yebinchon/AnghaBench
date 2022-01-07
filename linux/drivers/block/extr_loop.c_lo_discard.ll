; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_lo_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_lo_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, i32, i32, i32)* }
%struct.request = type { i32 }

@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.request*, i32)* @lo_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lo_discard(%struct.loop_device* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %11 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %10, i32 0, i32 1
  %12 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %12, %struct.file** %7, align 8
  %13 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %14 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.file*, i32, i32, i32)*, i32 (%struct.file*, i32, i32, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.file*, i32, i32, i32)* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %24 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %3
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %63

30:                                               ; preds = %22
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.file*, i32, i32, i32)*, i32 (%struct.file*, i32, i32, i32)** %34, align 8
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = call i32 @blk_rq_bytes(%struct.request* %39)
  %41 = call i32 %35(%struct.file* %36, i32 %37, i32 %38, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br label %54

54:                                               ; preds = %49, %44, %30
  %55 = phi i1 [ false, %44 ], [ false, %30 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
