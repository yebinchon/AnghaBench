; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c_rb4xx_cpld_read.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c_rb4xx_cpld_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i8**, i32, i8* }
%struct.spi_message = type { i32 }

@rb4xx_cpld_read.cmd = internal constant [2 x i8] c"\80\00", align 1
@rb4xx_cpld = common dso_local global %struct.TYPE_2__* null, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rb4xx_cpld_read(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.spi_transfer], align 16
  %7 = alloca %struct.spi_message, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i8** bitcast ([2 x i8]* @rb4xx_cpld_read.cmd to i8**), i8*** %9, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32 2, i32* %10, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i64 1
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i8** null, i8*** %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rb4xx_cpld, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %2
  %24 = call i32 @spi_message_init(%struct.spi_message* %7)
  %25 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %26 = call i32 @spi_message_add_tail(%struct.spi_transfer* %25, %struct.spi_message* %7)
  %27 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 1
  %28 = call i32 @spi_message_add_tail(%struct.spi_transfer* %27, %struct.spi_message* %7)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rb4xx_cpld, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @spi_sync(i32 %31, %struct.spi_message* %7)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
