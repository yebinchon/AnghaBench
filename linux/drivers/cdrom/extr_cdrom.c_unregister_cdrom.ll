; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_unregister_cdrom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_unregister_cdrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i32 (%struct.cdrom_device_info*)*, i32 }

@CD_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"entering unregister_cdrom\0A\00", align 1
@cdrom_mutex = common dso_local global i32 0, align 4
@CD_REG_UNREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"drive \22/dev/%s\22 unregistered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_cdrom(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca %struct.cdrom_device_info*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %2, align 8
  %3 = load i32, i32* @CD_OPEN, align 4
  %4 = call i32 (i32, i8*, ...) @cd_dbg(i32 %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @mutex_lock(i32* @cdrom_mutex)
  %6 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %7 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %6, i32 0, i32 2
  %8 = call i32 @list_del(i32* %7)
  %9 = call i32 @mutex_unlock(i32* @cdrom_mutex)
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 1
  %12 = load i32 (%struct.cdrom_device_info*)*, i32 (%struct.cdrom_device_info*)** %11, align 8
  %13 = icmp ne i32 (%struct.cdrom_device_info*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %16 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %15, i32 0, i32 1
  %17 = load i32 (%struct.cdrom_device_info*)*, i32 (%struct.cdrom_device_info*)** %16, align 8
  %18 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %19 = call i32 %17(%struct.cdrom_device_info* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* @CD_REG_UNREG, align 4
  %22 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %23 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @cd_dbg(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  ret void
}

declare dso_local i32 @cd_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
