; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_add_pci_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_add_pci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"add fid:%x, fh:%x, c:%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ZPCI_FN_STATE_CONFIGURED = common dso_local global i32 0, align 4
@ZPCI_FN_STATE_STANDBY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"add fid:%x, rc:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clp_add_pci_device(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zpci_dev*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i32, i8*, i8*, i32, ...) @zpci_dbg(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %14, i32 %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.zpci_dev* @kzalloc(i32 24, i32 %17)
  store %struct.zpci_dev* %18, %struct.zpci_dev** %8, align 8
  %19 = load %struct.zpci_dev*, %struct.zpci_dev** %8, align 8
  %20 = icmp ne %struct.zpci_dev* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %53

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.zpci_dev*, %struct.zpci_dev** %8, align 8
  %25 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.zpci_dev*, %struct.zpci_dev** %8, align 8
  %28 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.zpci_dev*, %struct.zpci_dev** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @clp_query_pci_fn(%struct.zpci_dev* %29, i8* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %53

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @ZPCI_FN_STATE_CONFIGURED, align 4
  %40 = load %struct.zpci_dev*, %struct.zpci_dev** %8, align 8
  %41 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @ZPCI_FN_STATE_STANDBY, align 4
  %44 = load %struct.zpci_dev*, %struct.zpci_dev** %8, align 8
  %45 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.zpci_dev*, %struct.zpci_dev** %8, align 8
  %48 = call i32 @zpci_create_device(%struct.zpci_dev* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %60

53:                                               ; preds = %51, %34, %21
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i8*, i8*, i32, ...) @zpci_dbg(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %55)
  %57 = load %struct.zpci_dev*, %struct.zpci_dev** %8, align 8
  %58 = call i32 @kfree(%struct.zpci_dev* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @zpci_dbg(i32, i8*, i8*, i32, ...) #1

declare dso_local %struct.zpci_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @clp_query_pci_fn(%struct.zpci_dev*, i8*) #1

declare dso_local i32 @zpci_create_device(%struct.zpci_dev*) #1

declare dso_local i32 @kfree(%struct.zpci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
