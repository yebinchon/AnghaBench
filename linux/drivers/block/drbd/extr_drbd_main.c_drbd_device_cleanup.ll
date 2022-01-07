; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_device_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_device_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"ASSERT FAILED: receiver t_state == %d expected 0.\0A\00", align 1
@DRBD_SYNC_MARKS = common dso_local global i32 0, align 4
@AL_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_device_cleanup(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %4 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %5 = call %struct.TYPE_12__* @first_peer_device(%struct.drbd_device* %4)
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %15 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %16 = call %struct.TYPE_12__* @first_peer_device(%struct.drbd_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @drbd_err(%struct.drbd_device* %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %25 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %24, i32 0, i32 15
  store i64 0, i64* %25, align 8
  %26 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %27 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %26, i32 0, i32 16
  store i64 0, i64* %27, align 8
  %28 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %29 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %28, i32 0, i32 17
  store i64 0, i64* %29, align 8
  %30 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %31 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %30, i32 0, i32 18
  store i64 0, i64* %31, align 8
  %32 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %33 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %32, i32 0, i32 19
  store i64 0, i64* %33, align 8
  %34 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %35 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %34, i32 0, i32 20
  store i64 0, i64* %35, align 8
  %36 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %37 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %36, i32 0, i32 21
  store i64 0, i64* %37, align 8
  %38 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %39 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %38, i32 0, i32 22
  store i64 0, i64* %39, align 8
  %40 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %41 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %40, i32 0, i32 23
  store i64 0, i64* %41, align 8
  %42 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %43 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %42, i32 0, i32 24
  store i64 0, i64* %43, align 8
  %44 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %45 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %44, i32 0, i32 14
  store i64 0, i64* %45, align 8
  %46 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %47 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %46, i32 0, i32 13
  store i64 0, i64* %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %65, %23
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @DRBD_SYNC_MARKS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %54 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %53, i32 0, i32 12
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %60 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %59, i32 0, i32 11
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %70 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %71 = call %struct.TYPE_12__* @first_peer_device(%struct.drbd_device* %70)
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @D_ASSERT(%struct.drbd_device* %69, i32 %77)
  %79 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %80 = call i32 @_drbd_set_my_capacity(%struct.drbd_device* %79, i32 0)
  %81 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %82 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %68
  %86 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %87 = call i32 @drbd_bm_resize(%struct.drbd_device* %86, i32 0, i32 1)
  %88 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %89 = call i32 @drbd_bm_cleanup(%struct.drbd_device* %88)
  br label %90

90:                                               ; preds = %85, %68
  %91 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %92 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %93 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %92, i32 0, i32 9
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @drbd_backing_dev_free(%struct.drbd_device* %91, i32* %94)
  %96 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %97 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %96, i32 0, i32 9
  store i32* null, i32** %97, align 8
  %98 = load i32, i32* @AL_SUSPENDED, align 4
  %99 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %100 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %99, i32 0, i32 8
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  %102 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %103 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %104 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %103, i32 0, i32 7
  %105 = call i32 @list_empty(i32* %104)
  %106 = call i32 @D_ASSERT(%struct.drbd_device* %102, i32 %105)
  %107 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %108 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %109 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %108, i32 0, i32 6
  %110 = call i32 @list_empty(i32* %109)
  %111 = call i32 @D_ASSERT(%struct.drbd_device* %107, i32 %110)
  %112 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %113 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %114 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %113, i32 0, i32 5
  %115 = call i32 @list_empty(i32* %114)
  %116 = call i32 @D_ASSERT(%struct.drbd_device* %112, i32 %115)
  %117 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %118 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %119 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %118, i32 0, i32 4
  %120 = call i32 @list_empty(i32* %119)
  %121 = call i32 @D_ASSERT(%struct.drbd_device* %117, i32 %120)
  %122 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %123 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %124 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %123, i32 0, i32 3
  %125 = call i32 @list_empty(i32* %124)
  %126 = call i32 @D_ASSERT(%struct.drbd_device* %122, i32 %125)
  %127 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %128 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %129 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %128, i32 0, i32 2
  %130 = call i32 @list_empty(i32* %129)
  %131 = call i32 @D_ASSERT(%struct.drbd_device* %127, i32 %130)
  %132 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %133 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %134 = call %struct.TYPE_12__* @first_peer_device(%struct.drbd_device* %133)
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = call i32 @list_empty(i32* %138)
  %140 = call i32 @D_ASSERT(%struct.drbd_device* %132, i32 %139)
  %141 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %142 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %143 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = call i32 @list_empty(i32* %144)
  %146 = call i32 @D_ASSERT(%struct.drbd_device* %141, i32 %145)
  %147 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %148 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %149 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = call i32 @list_empty(i32* %150)
  %152 = call i32 @D_ASSERT(%struct.drbd_device* %147, i32 %151)
  %153 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %154 = call i32 @drbd_set_defaults(%struct.drbd_device* %153)
  ret void
}

declare dso_local %struct.TYPE_12__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i64) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @_drbd_set_my_capacity(%struct.drbd_device*, i32) #1

declare dso_local i32 @drbd_bm_resize(%struct.drbd_device*, i32, i32) #1

declare dso_local i32 @drbd_bm_cleanup(%struct.drbd_device*) #1

declare dso_local i32 @drbd_backing_dev_free(%struct.drbd_device*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @drbd_set_defaults(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
