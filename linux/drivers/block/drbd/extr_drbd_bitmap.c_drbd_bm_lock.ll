; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.drbd_device = type { %struct.drbd_bitmap* }
%struct.drbd_bitmap = type { i8*, i32, %struct.TYPE_3__*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"FIXME no bitmap in drbd_bm_lock!?\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"%s[%d] going to '%s' but bitmap already locked for '%s' by %s[%d]\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@BM_LOCKED_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"FIXME bitmap already locked in bm_lock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_bm_lock(%struct.drbd_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_bitmap*, align 8
  %8 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %10 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %9, i32 0, i32 0
  %11 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %10, align 8
  store %struct.drbd_bitmap* %11, %struct.drbd_bitmap** %7, align 8
  %12 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %13 = icmp ne %struct.drbd_bitmap* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %16 = call i32 @drbd_err(%struct.drbd_device* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %79

17:                                               ; preds = %3
  %18 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %19 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %18, i32 0, i32 3
  %20 = call i32 @mutex_trylock(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %17
  %27 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %32 = call i32 @task_pid_nr(%struct.TYPE_3__* %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %35 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %40

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi i8* [ %36, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %39 ]
  %42 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %43 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %48 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @task_pid_nr(%struct.TYPE_3__* %49)
  %51 = call i32 @drbd_warn(%struct.drbd_device* %27, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32, i8* %33, i8* %41, i32 %46, i32 %50)
  %52 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %53 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %52, i32 0, i32 3
  %54 = call i32 @mutex_lock(i32* %53)
  br label %55

55:                                               ; preds = %40, %17
  %56 = load i32, i32* @BM_LOCKED_MASK, align 4
  %57 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %58 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %64 = call i32 @drbd_err(%struct.drbd_device* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @BM_LOCKED_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %70 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %75 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %77 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  %78 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %77, i32 0, i32 2
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** %78, align 8
  br label %79

79:                                               ; preds = %65, %14
  ret void
}

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @drbd_warn(%struct.drbd_device*, i8*, i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
