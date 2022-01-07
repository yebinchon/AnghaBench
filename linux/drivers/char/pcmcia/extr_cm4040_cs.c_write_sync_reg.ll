; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_write_sync_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_write_sync_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reader_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@REG_OFFSET_SYNC_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.reader_dev*)* @write_sync_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_sync_reg(i8 zeroext %0, %struct.reader_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.reader_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store %struct.reader_dev* %1, %struct.reader_dev** %5, align 8
  %8 = load %struct.reader_dev*, %struct.reader_dev** %5, align 8
  %9 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %12, i64 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.reader_dev*, %struct.reader_dev** %5, align 8
  %18 = call i32 @wait_for_bulk_out_ready(%struct.reader_dev* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load i8, i8* %4, align 1
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @REG_OFFSET_SYNC_CONTROL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @xoutb(i8 zeroext %24, i64 %28)
  %30 = load %struct.reader_dev*, %struct.reader_dev** %5, align 8
  %31 = call i32 @wait_for_bulk_out_ready(%struct.reader_dev* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %34, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @wait_for_bulk_out_ready(%struct.reader_dev*) #1

declare dso_local i32 @xoutb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
