; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_forget_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_forget_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_state_change = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.drbd_connection* }
%struct.drbd_connection = type { i32 }
%struct.TYPE_5__ = type { %struct.drbd_device* }
%struct.drbd_device = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@drbd_destroy_resource = common dso_local global i32 0, align 4
@drbd_destroy_device = common dso_local global i32 0, align 4
@drbd_destroy_connection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forget_state_change(%struct.drbd_state_change* %0) #0 {
  %2 = alloca %struct.drbd_state_change*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.drbd_connection*, align 8
  store %struct.drbd_state_change* %0, %struct.drbd_state_change** %2, align 8
  %6 = load %struct.drbd_state_change*, %struct.drbd_state_change** %2, align 8
  %7 = icmp ne %struct.drbd_state_change* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %82

9:                                                ; preds = %1
  %10 = load %struct.drbd_state_change*, %struct.drbd_state_change** %2, align 8
  %11 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %10, i32 0, i32 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.drbd_state_change*, %struct.drbd_state_change** %2, align 8
  %18 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %17, i32 0, i32 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* @drbd_destroy_resource, align 4
  %24 = call i32 @kref_put(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %9
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.drbd_state_change*, %struct.drbd_state_change** %2, align 8
  %29 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.drbd_state_change*, %struct.drbd_state_change** %2, align 8
  %34 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.drbd_device*, %struct.drbd_device** %39, align 8
  store %struct.drbd_device* %40, %struct.drbd_device** %4, align 8
  %41 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %42 = icmp ne %struct.drbd_device* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %45 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %44, i32 0, i32 0
  %46 = load i32, i32* @drbd_destroy_device, align 4
  %47 = call i32 @kref_put(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %26

52:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %76, %52
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.drbd_state_change*, %struct.drbd_state_change** %2, align 8
  %56 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.drbd_state_change*, %struct.drbd_state_change** %2, align 8
  %61 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.drbd_connection*, %struct.drbd_connection** %66, align 8
  store %struct.drbd_connection* %67, %struct.drbd_connection** %5, align 8
  %68 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %69 = icmp ne %struct.drbd_connection* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %72 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %71, i32 0, i32 0
  %73 = load i32, i32* @drbd_destroy_connection, align 4
  %74 = call i32 @kref_put(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %53

79:                                               ; preds = %53
  %80 = load %struct.drbd_state_change*, %struct.drbd_state_change** %2, align 8
  %81 = call i32 @kfree(%struct.drbd_state_change* %80)
  br label %82

82:                                               ; preds = %79, %8
  ret void
}

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kfree(%struct.drbd_state_change*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
