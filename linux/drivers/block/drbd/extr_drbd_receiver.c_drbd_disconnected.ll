; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_4__*, %struct.drbd_device* }
%struct.TYPE_4__ = type { i32 }
%struct.drbd_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@drbd_bm_write_copy_pages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"write from disconnected\00", align 1
@BM_LOCKED_CHANGE_ALLOWED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"net_ee not empty, killed %u entries\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"pp_in_use_by_net = %d, expected 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"pp_in_use = %d, expected 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_peer_device*)* @drbd_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_disconnected(%struct.drbd_peer_device* %0) #0 {
  %2 = alloca %struct.drbd_peer_device*, align 8
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %2, align 8
  %5 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %6 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %5, i32 0, i32 1
  %7 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  store %struct.drbd_device* %7, %struct.drbd_device** %3, align 8
  %8 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %9 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %8, i32 0, i32 13
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %14 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %15 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %14, i32 0, i32 2
  %16 = call i32 @_drbd_wait_ee_list_empty(%struct.drbd_device* %13, i32* %15)
  %17 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %18 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %19 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %18, i32 0, i32 1
  %20 = call i32 @_drbd_wait_ee_list_empty(%struct.drbd_device* %17, i32* %19)
  %21 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %22 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %23 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %22, i32 0, i32 3
  %24 = call i32 @_drbd_wait_ee_list_empty(%struct.drbd_device* %21, i32* %23)
  %25 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %26 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %25, i32 0, i32 13
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %31 = call i32 @drbd_rs_cancel_all(%struct.drbd_device* %30)
  %32 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %33 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %32, i32 0, i32 12
  store i64 0, i64* %33, align 8
  %34 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %35 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %34, i32 0, i32 11
  store i64 0, i64* %35, align 8
  %36 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %37 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %36, i32 0, i32 10
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %40 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %39, i32 0, i32 9
  %41 = call i32 @wake_up(i32* %40)
  %42 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %43 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %42, i32 0, i32 8
  %44 = call i32 @del_timer_sync(i32* %43)
  %45 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %46 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %45, i32 0, i32 8
  %47 = call i32 @resync_timer_fn(i32* %46)
  %48 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %49 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @drbd_flush_workqueue(i32* %51)
  %53 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %54 = call i32 @drbd_finish_peer_reqs(%struct.drbd_device* %53)
  %55 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %56 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @drbd_flush_workqueue(i32* %58)
  %60 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %61 = call i32 @drbd_rs_cancel_all(%struct.drbd_device* %60)
  %62 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %63 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %67 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %66, i32 0, i32 7
  store i32* null, i32** %67, align 8
  %68 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %69 = call i32 @drbd_suspended(%struct.drbd_device* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %1
  %72 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %73 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @tl_clear(%struct.TYPE_4__* %74)
  br label %76

76:                                               ; preds = %71, %1
  %77 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %78 = call i32 @drbd_md_sync(%struct.drbd_device* %77)
  %79 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %80 = call i64 @get_ldev(%struct.drbd_device* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %84 = load i32, i32* @BM_LOCKED_CHANGE_ALLOWED, align 4
  %85 = call i32 @drbd_bitmap_io(%struct.drbd_device* %83, i32* @drbd_bm_write_copy_pages, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %87 = call i32 @put_ldev(%struct.drbd_device* %86)
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %90 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %91 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %90, i32 0, i32 6
  %92 = call i32 @drbd_free_peer_reqs(%struct.drbd_device* %89, i32* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @drbd_info(%struct.drbd_device* %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %101 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %100, i32 0, i32 5
  %102 = call i32 @atomic_read(i32* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @drbd_info(%struct.drbd_device* %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %111 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %110, i32 0, i32 4
  %112 = call i32 @atomic_read(i32* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @drbd_info(%struct.drbd_device* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %121 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %122 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %121, i32 0, i32 3
  %123 = call i32 @list_empty(i32* %122)
  %124 = call i32 @D_ASSERT(%struct.drbd_device* %120, i32 %123)
  %125 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %126 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %127 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %126, i32 0, i32 2
  %128 = call i32 @list_empty(i32* %127)
  %129 = call i32 @D_ASSERT(%struct.drbd_device* %125, i32 %128)
  %130 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %131 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %132 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %131, i32 0, i32 1
  %133 = call i32 @list_empty(i32* %132)
  %134 = call i32 @D_ASSERT(%struct.drbd_device* %130, i32 %133)
  %135 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %136 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %137 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %136, i32 0, i32 0
  %138 = call i32 @list_empty(i32* %137)
  %139 = call i32 @D_ASSERT(%struct.drbd_device* %135, i32 %138)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @_drbd_wait_ee_list_empty(%struct.drbd_device*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @drbd_rs_cancel_all(%struct.drbd_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @resync_timer_fn(i32*) #1

declare dso_local i32 @drbd_flush_workqueue(i32*) #1

declare dso_local i32 @drbd_finish_peer_reqs(%struct.drbd_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @drbd_suspended(%struct.drbd_device*) #1

declare dso_local i32 @tl_clear(%struct.TYPE_4__*) #1

declare dso_local i32 @drbd_md_sync(%struct.drbd_device*) #1

declare dso_local i64 @get_ldev(%struct.drbd_device*) #1

declare dso_local i32 @drbd_bitmap_io(%struct.drbd_device*, i32*, i8*, i32) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @drbd_free_peer_reqs(%struct.drbd_device*, i32*) #1

declare dso_local i32 @drbd_info(%struct.drbd_device*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
