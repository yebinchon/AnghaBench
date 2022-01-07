; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-hmi.c_print_hmi_event_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-hmi.c_print_hmi_event_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OpalHMIEvent = type { i64, i32, i64, i64, i32, i32 }

@print_hmi_event_info.hmi_error_types = internal global [13 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [18 x i8] c"Malfunction Alert\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Processor Recovery done\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Processor recovery occurred again\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Processor recovery occurred for masked error\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Timer facility experienced an error\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"TFMR SPR is corrupted\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"UPS (Uninterrupted Power System) Overflow indication\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"An XSCOM operation failure\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"An XSCOM operation completed\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"SCOM has set a reserved FIR bit to cause recovery\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"Debug trigger has set a reserved FIR bit to cause recovery\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"A hypervisor resource error occurred\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"CAPP recovery process is in progress\00", align 1
@OpalHMIEvt_V1 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [43 x i8] c"HMI Interrupt, Unknown event version %d !\0A\00", align 1
@KERN_INFO = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"Harmless\00", align 1
@KERN_WARNING = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KERN_ERR = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"Severe\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Fatal\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"%s%s Hypervisor Maintenance interrupt [%s]\0A\00", align 1
@OpalHMI_DISPOSITION_RECOVERED = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"Recovered\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Not recovered\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"%s Error detail: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"%s\09HMER: %016llx\0A\00", align 1
@OpalHMI_ERROR_TFAC = common dso_local global i64 0, align 8
@OpalHMI_ERROR_TFMR_PARITY = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [18 x i8] c"%s\09TFMR: %016llx\0A\00", align 1
@OpalHMIEvt_V2 = common dso_local global i64 0, align 8
@OpalHMI_ERROR_MALFUNC_ALERT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.OpalHMIEvent*)* @print_hmi_event_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_hmi_event_info(%struct.OpalHMIEvent* %0) #0 {
  %2 = alloca %struct.OpalHMIEvent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.OpalHMIEvent* %0, %struct.OpalHMIEvent** %2, align 8
  %6 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %7 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OpalHMIEvt_V1, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %13 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %14)
  br label %98

16:                                               ; preds = %1
  %17 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %18 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %27 [
    i32 129, label %20
    i32 128, label %22
    i32 131, label %24
    i32 130, label %26
  ]

20:                                               ; preds = %16
  %21 = load i8*, i8** @KERN_INFO, align 8
  store i8* %21, i8** %3, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %4, align 8
  br label %29

22:                                               ; preds = %16
  %23 = load i8*, i8** @KERN_WARNING, align 8
  store i8* %23, i8** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  br label %29

24:                                               ; preds = %16
  %25 = load i8*, i8** @KERN_ERR, align 8
  store i8* %25, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  br label %29

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %16, %26
  %28 = load i8*, i8** @KERN_ERR, align 8
  store i8* %28, i8** %3, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** %4, align 8
  br label %29

29:                                               ; preds = %27, %24, %22, %20
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %33 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OpalHMI_DISPOSITION_RECOVERED, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0)
  %39 = call i32 (i8*, i8*, i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i8* %30, i8* %31, i8* %38)
  %40 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %41 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @print_hmi_event_info.hmi_error_types, i64 0, i64 0))
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %29
  %46 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %47 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds [13 x i8*], [13 x i8*]* @print_hmi_event_info.hmi_error_types, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  br label %52

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i8* [ %50, %45 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), %51 ]
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, i8*, i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %54, i8* %55)
  %57 = load i8*, i8** %3, align 8
  %58 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %59 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @be64_to_cpu(i32 %60)
  %62 = call i32 (i8*, i8*, i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* %57, i8* %61)
  %63 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %64 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @OpalHMI_ERROR_TFAC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %52
  %69 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %70 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @OpalHMI_ERROR_TFMR_PARITY, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68, %52
  %75 = load i8*, i8** %3, align 8
  %76 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %77 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @be64_to_cpu(i32 %78)
  %80 = call i32 (i8*, i8*, i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %75, i8* %79)
  br label %81

81:                                               ; preds = %74, %68
  %82 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %83 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @OpalHMIEvt_V2, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %98

88:                                               ; preds = %81
  %89 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %90 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @OpalHMI_ERROR_MALFUNC_ALERT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i8*, i8** %3, align 8
  %96 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %2, align 8
  %97 = call i32 @print_checkstop_reason(i8* %95, %struct.OpalHMIEvent* %96)
  br label %98

98:                                               ; preds = %11, %87, %94, %88
  ret void
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @printk(i8*, i8*, i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @print_checkstop_reason(i8*, %struct.OpalHMIEvent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
