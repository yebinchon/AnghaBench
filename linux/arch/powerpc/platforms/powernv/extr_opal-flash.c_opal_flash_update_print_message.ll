; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_opal_flash_update_print_message.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_opal_flash_update_print_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@update_flash_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@FLASH_IMG_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"FLASH: Flashing new firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"FLASH: Image is %u bytes\0A\00", align 1
@image_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"FLASH: Performing flash and reboot/shutdown\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"FLASH: This will take several minutes. Do not power off!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opal_flash_update_print_message() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @update_flash_data, i32 0, i32 0), align 8
  %2 = load i64, i64* @FLASH_IMG_READY, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %12

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_data, i32 0, i32 0), align 4
  %8 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @msleep(i32 500)
  br label %12

12:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
