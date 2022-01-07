; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_i460-agp.c_i460_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_i460-agp.c_i460_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.aper_size_info_8 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@I460_IO_PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@i460 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i460_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i460_cleanup() #0 {
  %1 = alloca %struct.aper_size_info_8*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %4)
  store %struct.aper_size_info_8* %5, %struct.aper_size_info_8** %1, align 8
  %6 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %1, align 8
  %7 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @i460_write_agpsiz(i32 %8)
  %10 = load i64, i64* @I460_IO_PAGE_SHIFT, align 8
  %11 = load i64, i64* @PAGE_SHIFT, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @i460, i32 0, i32 0), align 4
  %15 = call i32 @kfree(i32 %14)
  br label %16

16:                                               ; preds = %13, %0
  ret void
}

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

declare dso_local i32 @i460_write_agpsiz(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
