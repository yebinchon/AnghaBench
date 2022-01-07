; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sil24.c_sil24_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sil24.c_sil24_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_port* }
%struct.ata_port = type { i32 }
%struct.ata_taskfile = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"port not ready\00", align 1
@jiffies = common dso_local global i64 0, align 8
@PRB_CTRL_SRST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SRST command error\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"EXIT, class=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"softreset failed (%s)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @sil24_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sil24_softreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ata_taskfile, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %15 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %14, i32 0, i32 1
  %16 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  store %struct.ata_port* %16, %struct.ata_port** %8, align 8
  %17 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %18 = call i32 @sata_srst_pmp(%struct.ata_link* %17)
  store i32 %18, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %19 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %21 = call i64 @sil24_init_port(%struct.ata_port* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %62

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @jiffies, align 8
  %27 = call i64 @time_after(i64 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @jiffies, align 8
  %32 = sub i64 %30, %31
  %33 = call i64 @jiffies_to_msecs(i64 %32)
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %36 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ata_tf_init(i32 %37, %struct.ata_taskfile* %11)
  %39 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PRB_CTRL_SRST, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @sil24_exec_polled_cmd(%struct.ata_port* %39, i32 %40, %struct.ata_taskfile* %11, i32 0, i32 %41, i64 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %62

49:                                               ; preds = %34
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %62

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %56 = call i32 @sil24_read_tf(%struct.ata_port* %55, i32 0, %struct.ata_taskfile* %11)
  %57 = call i32 @ata_dev_classify(%struct.ata_taskfile* %11)
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  store i32 0, i32* %4, align 4
  br label %68

62:                                               ; preds = %52, %48, %23
  %63 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @ata_link_err(%struct.ata_link* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %54
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @sata_srst_pmp(%struct.ata_link*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i64 @sil24_init_port(%struct.ata_port*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @ata_tf_init(i32, %struct.ata_taskfile*) #1

declare dso_local i32 @sil24_exec_polled_cmd(%struct.ata_port*, i32, %struct.ata_taskfile*, i32, i32, i64) #1

declare dso_local i32 @sil24_read_tf(%struct.ata_port*, i32, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_dev_classify(%struct.ata_taskfile*) #1

declare dso_local i32 @ata_link_err(%struct.ata_link*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
