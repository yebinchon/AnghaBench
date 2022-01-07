; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h___drbd_chk_io_error_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h___drbd_chk_io_error_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DRBD_READ_ERROR = common dso_local global i32 0, align 4
@DRBD_WRITE_ERROR = common dso_local global i32 0, align 4
@drbd_ratelimit_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Local IO failed in %s.\0A\00", align 1
@D_INCONSISTENT = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4
@CS_HARD = common dso_local global i32 0, align 4
@WAS_IO_ERROR = common dso_local global i32 0, align 4
@WAS_READ_ERROR = common dso_local global i32 0, align 4
@DRBD_FORCE_DETACH = common dso_local global i32 0, align 4
@FORCE_DETACH = common dso_local global i32 0, align 4
@D_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Local IO failed in %s. Detaching...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, i32, i8*)* @__drbd_chk_io_error_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__drbd_chk_io_error_(%struct.drbd_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %10 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_6__* @rcu_dereference(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = call i32 (...) @rcu_read_unlock()
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %90 [
    i32 128, label %19
    i32 129, label %50
    i32 130, label %50
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DRBD_READ_ERROR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DRBD_WRITE_ERROR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23, %19
  %28 = call i32 @__ratelimit(i32* @drbd_ratelimit_state)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @drbd_err(%struct.drbd_device* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %36 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @D_INCONSISTENT, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %43 = load i32, i32* @disk, align 4
  %44 = load i32, i32* @D_INCONSISTENT, align 4
  %45 = call i32 @_NS(%struct.drbd_device* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @CS_HARD, align 4
  %47 = call i32 @_drbd_set_state(i32 %45, i32 %46, i32* null)
  br label %48

48:                                               ; preds = %41, %34
  br label %90

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %3, %3, %49
  %51 = load i32, i32* @WAS_IO_ERROR, align 4
  %52 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %53 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %52, i32 0, i32 1
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @DRBD_READ_ERROR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i32, i32* @WAS_READ_ERROR, align 4
  %60 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %61 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %60, i32 0, i32 1
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %58, %50
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @DRBD_FORCE_DETACH, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @FORCE_DETACH, align 4
  %69 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %70 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %69, i32 0, i32 1
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %63
  %73 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %74 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @D_FAILED, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %81 = load i32, i32* @disk, align 4
  %82 = load i32, i32* @D_FAILED, align 4
  %83 = call i32 @_NS(%struct.drbd_device* %80, i32 %81, i32 %82)
  %84 = load i32, i32* @CS_HARD, align 4
  %85 = call i32 @_drbd_set_state(i32 %83, i32 %84, i32* null)
  %86 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @drbd_err(%struct.drbd_device* %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %79, %72
  br label %90

90:                                               ; preds = %3, %89, %48
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_6__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @__ratelimit(i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i8*) #1

declare dso_local i32 @_drbd_set_state(i32, i32, i32*) #1

declare dso_local i32 @_NS(%struct.drbd_device*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
