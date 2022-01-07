; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_pci_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"PCIe (\00", align 1
@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"2.5GT/s \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"5.0GT/s \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"<unknown> \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%dX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skd_device*, i8*)* @skd_pci_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @skd_pci_info(%struct.skd_device* %0, i8* %1) #0 {
  %3 = alloca %struct.skd_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcpy(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %13 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %16 = call i32 @pci_find_capability(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 18
  store i32 %21, i32* %5, align 4
  %22 = load %struct.skd_device*, %struct.skd_device** %3, align 8
  %23 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pci_read_config_word(i32 %24, i32 %25, i32* %7)
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 15
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 1008
  %31 = ashr i32 %30, 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcat(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %47

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcat(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strcat(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %34
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @snprintf(i8* %48, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %53 = call i32 @strcat(i8* %51, i8* %52)
  br label %54

54:                                               ; preds = %47, %2
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @pci_find_capability(i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
