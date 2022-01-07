; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_sthyi_init_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_sthyi_init_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@sthyi_cache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sthyi_init_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sthyi_init_cache() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sthyi_cache, i32 0, i32 1), align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

5:                                                ; preds = %0
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @get_zeroed_page(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sthyi_cache, i32 0, i32 1), align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sthyi_cache, i32 0, i32 1), align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %17

14:                                               ; preds = %5
  %15 = load i64, i64* @jiffies, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sthyi_cache, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %14, %11, %4
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i64 @get_zeroed_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
