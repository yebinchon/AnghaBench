; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_amiga_check_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_amiga_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amiga_floppy_struct = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.gendisk = type { %struct.amiga_floppy_struct* }

@unit = common dso_local global %struct.amiga_floppy_struct* null, align 8
@amiga_check_events.first_time = internal global i32 1, align 4
@ciaa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DSKCHANGE = common dso_local global i32 0, align 4
@writepending = common dso_local global i64 0, align 8
@writefromint = common dso_local global i64 0, align 8
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i32)* @amiga_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amiga_check_events(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amiga_floppy_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 0
  %11 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %10, align 8
  store %struct.amiga_floppy_struct* %11, %struct.amiga_floppy_struct** %6, align 8
  %12 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %6, align 8
  %13 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** @unit, align 8
  %14 = ptrtoint %struct.amiga_floppy_struct* %12 to i64
  %15 = ptrtoint %struct.amiga_floppy_struct* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @amiga_check_events.first_time, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @amiga_check_events.first_time, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @amiga_check_events.first_time, align 4
  store i32 %22, i32* %8, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @get_fdc(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fd_select(i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 0), align 4
  %30 = load i32, i32* @DSKCHANGE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @fd_deselect(i32 %35)
  %37 = call i32 (...) @rel_fdc()
  br label %38

38:                                               ; preds = %24, %21
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @fd_probe(i32 %42)
  %44 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %6, align 8
  %45 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %6, align 8
  %47 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  store i64 0, i64* @writepending, align 8
  store i64 0, i64* @writefromint, align 8
  %48 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @get_fdc(i32) #1

declare dso_local i32 @fd_select(i32) #1

declare dso_local i32 @fd_deselect(i32) #1

declare dso_local i32 @rel_fdc(...) #1

declare dso_local i32 @fd_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
