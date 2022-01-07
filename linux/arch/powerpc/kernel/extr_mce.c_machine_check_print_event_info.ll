; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_machine_check_print_event_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_machine_check_print_event_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.machine_check_event = type { i64, i32, i32, i32, i64, i64, i32, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_12__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i64, i32 }

@machine_check_print_event_info.mc_ue_types = internal global [5 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [14 x i8] c"Indeterminate\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Instruction fetch\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Page table walk ifetch\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Load/Store\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Page table walk Load/Store\00", align 1
@machine_check_print_event_info.mc_slb_types = internal global [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"Parity\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Multihit\00", align 1
@machine_check_print_event_info.mc_erat_types = internal global [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)], align 16
@machine_check_print_event_info.mc_tlb_types = internal global [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)], align 16
@machine_check_print_event_info.mc_user_types = internal global [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [17 x i8] c"tlbie(l) invalid\00", align 1
@machine_check_print_event_info.mc_ra_types = internal global [10 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [24 x i8] c"Instruction fetch (bad)\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Instruction fetch (foreign)\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Page table walk ifetch (bad)\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Page table walk ifetch (foreign)\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Load (bad)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Store (bad)\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Page table walk Load/Store (bad)\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Page table walk Load/Store (foreign)\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Load/Store (foreign)\00", align 1
@machine_check_print_event_info.mc_link_types = internal global [6 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0)], align 16
@.str.17 = private unnamed_addr constant [28 x i8] c"Instruction fetch (timeout)\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Page table walk ifetch (timeout)\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Load (timeout)\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Store (timeout)\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Page table walk Load/Store (timeout)\00", align 1
@machine_check_print_event_info.mc_error_class = internal global [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.22 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Hardware error\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"Probable Hardware error (some chance of software cause)\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Software error\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"Probable Software error (some chance of hardware cause)\00", align 1
@MCE_V1 = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [53 x i8] c"Machine Check Exception, Unknown event version %d !\0A\00", align 1
@KERN_INFO = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"Harmless\00", align 1
@KERN_WARNING = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@KERN_ERR = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [7 x i8] c"Severe\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Fatal\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Power Management\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"UE\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"SLB\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"ERAT\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"TLB\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Real address\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"D-Cache\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"I-Cache\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"DAR: %016llx \00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"paddr: %016llx \00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c" paddr: %016llx\00", align 1
@.str.50 = private unnamed_addr constant [50 x i8] c"%sMCE: CPU%d: machine check (%s) %s %s %s %s[%s]\0A\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"Guest\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@MCE_DISPOSITION_RECOVERED = common dso_local global i64 0, align 8
@.str.53 = private unnamed_addr constant [10 x i8] c"Recovered\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Not recovered\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"%sMCE: CPU%d: PID: %d Comm: %s %sNIP: [%016llx]%s\0A\00", align 1
@current = common dso_local global %struct.TYPE_11__* null, align 8
@.str.56 = private unnamed_addr constant [7 x i8] c"Guest \00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"%sMCE: CPU%d: NIP: [%016llx] %pS%s\0A\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"%sMCE: CPU%d: Initiator %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"%sMCE: CPU%d: %s\0A\00", align 1
@local_paca = common dso_local global %struct.TYPE_20__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_check_print_event_info(%struct.machine_check_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.machine_check_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [50 x i8], align 16
  %16 = alloca [50 x i8], align 16
  store %struct.machine_check_event* %0, %struct.machine_check_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %18 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MCE_V1, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %24 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0), i64 %25)
  br label %419

27:                                               ; preds = %3
  %28 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %29 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %38 [
    i32 130, label %31
    i32 128, label %33
    i32 129, label %35
    i32 131, label %37
  ]

31:                                               ; preds = %27
  %32 = load i8*, i8** @KERN_INFO, align 8
  store i8* %32, i8** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8** %8, align 8
  br label %40

33:                                               ; preds = %27
  %34 = load i8*, i8** @KERN_WARNING, align 8
  store i8* %34, i8** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8** %8, align 8
  br label %40

35:                                               ; preds = %27
  %36 = load i8*, i8** @KERN_ERR, align 8
  store i8* %36, i8** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8** %8, align 8
  br label %40

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %27, %37
  %39 = load i8*, i8** @KERN_ERR, align 8
  store i8* %39, i8** %7, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8** %8, align 8
  br label %40

40:                                               ; preds = %38, %35, %33, %31
  %41 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %42 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %50 [
    i32 137, label %44
    i32 134, label %45
    i32 136, label %46
    i32 135, label %47
    i32 133, label %48
    i32 132, label %49
  ]

44:                                               ; preds = %40
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8** %11, align 8
  br label %51

45:                                               ; preds = %40
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8** %11, align 8
  br label %51

46:                                               ; preds = %40
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8** %11, align 8
  br label %51

47:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8** %11, align 8
  br label %51

48:                                               ; preds = %40
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8** %11, align 8
  br label %51

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %40, %49
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %11, align 8
  br label %51

51:                                               ; preds = %50, %48, %47, %46, %45, %44
  %52 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %53 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %294 [
    i32 140, label %55
    i32 142, label %100
    i32 146, label %132
    i32 141, label %164
    i32 138, label %196
    i32 143, label %228
    i32 144, label %260
    i32 147, label %292
    i32 145, label %293
    i32 139, label %295
  ]

55:                                               ; preds = %51
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %10, align 8
  %56 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %57 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @machine_check_print_event_info.mc_ue_types, i64 0, i64 0))
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %65 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds [5 x i8*], [5 x i8*]* @machine_check_print_event_info.mc_ue_types, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  br label %72

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %63
  %73 = phi i8* [ %70, %63 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %71 ]
  store i8* %73, i8** %9, align 8
  %74 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %75 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %82 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %80, %72
  %87 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %88 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %95 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %13, align 8
  br label %99

99:                                               ; preds = %93, %86
  br label %296

100:                                              ; preds = %51
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8** %10, align 8
  %101 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %102 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @machine_check_print_event_info.mc_slb_types, i64 0, i64 0))
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %110 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds [3 x i8*], [3 x i8*]* @machine_check_print_event_info.mc_slb_types, i64 0, i64 %113
  %115 = load i8*, i8** %114, align 8
  br label %117

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116, %108
  %118 = phi i8* [ %115, %108 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %116 ]
  store i8* %118, i8** %9, align 8
  %119 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %120 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %127 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %12, align 8
  br label %131

131:                                              ; preds = %125, %117
  br label %296

132:                                              ; preds = %51
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8** %10, align 8
  %133 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %134 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @machine_check_print_event_info.mc_erat_types, i64 0, i64 0))
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %132
  %141 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %142 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds [3 x i8*], [3 x i8*]* @machine_check_print_event_info.mc_erat_types, i64 0, i64 %145
  %147 = load i8*, i8** %146, align 8
  br label %149

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148, %140
  %150 = phi i8* [ %147, %140 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %148 ]
  store i8* %150, i8** %9, align 8
  %151 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %152 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %159 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %12, align 8
  br label %163

163:                                              ; preds = %157, %149
  br label %296

164:                                              ; preds = %51
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i8** %10, align 8
  %165 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %166 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @machine_check_print_event_info.mc_tlb_types, i64 0, i64 0))
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %174 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %173, i32 0, i32 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds [3 x i8*], [3 x i8*]* @machine_check_print_event_info.mc_tlb_types, i64 0, i64 %177
  %179 = load i8*, i8** %178, align 8
  br label %181

180:                                              ; preds = %164
  br label %181

181:                                              ; preds = %180, %172
  %182 = phi i8* [ %179, %172 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %180 ]
  store i8* %182, i8** %9, align 8
  %183 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %184 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %181
  %190 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %191 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %12, align 8
  br label %195

195:                                              ; preds = %189, %181
  br label %296

196:                                              ; preds = %51
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8** %10, align 8
  %197 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %198 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %197, i32 0, i32 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @machine_check_print_event_info.mc_user_types, i64 0, i64 0))
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %196
  %205 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %206 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %205, i32 0, i32 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds [2 x i8*], [2 x i8*]* @machine_check_print_event_info.mc_user_types, i64 0, i64 %209
  %211 = load i8*, i8** %210, align 8
  br label %213

212:                                              ; preds = %196
  br label %213

213:                                              ; preds = %212, %204
  %214 = phi i8* [ %211, %204 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %212 ]
  store i8* %214, i8** %9, align 8
  %215 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %216 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %215, i32 0, i32 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %213
  %222 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %223 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %222, i32 0, i32 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %12, align 8
  br label %227

227:                                              ; preds = %221, %213
  br label %296

228:                                              ; preds = %51
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8** %10, align 8
  %229 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %230 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %229, i32 0, i32 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @machine_check_print_event_info.mc_ra_types, i64 0, i64 0))
  %235 = icmp ult i64 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %228
  %237 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %238 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %237, i32 0, i32 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds [10 x i8*], [10 x i8*]* @machine_check_print_event_info.mc_ra_types, i64 0, i64 %241
  %243 = load i8*, i8** %242, align 8
  br label %245

244:                                              ; preds = %228
  br label %245

245:                                              ; preds = %244, %236
  %246 = phi i8* [ %243, %236 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %244 ]
  store i8* %246, i8** %9, align 8
  %247 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %248 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %247, i32 0, i32 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %245
  %254 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %255 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %254, i32 0, i32 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %12, align 8
  br label %259

259:                                              ; preds = %253, %245
  br label %296

260:                                              ; preds = %51
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8** %10, align 8
  %261 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %262 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %261, i32 0, i32 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @machine_check_print_event_info.mc_link_types, i64 0, i64 0))
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %276

268:                                              ; preds = %260
  %269 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %270 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %269, i32 0, i32 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds [6 x i8*], [6 x i8*]* @machine_check_print_event_info.mc_link_types, i64 0, i64 %273
  %275 = load i8*, i8** %274, align 8
  br label %277

276:                                              ; preds = %260
  br label %277

277:                                              ; preds = %276, %268
  %278 = phi i8* [ %275, %268 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %276 ]
  store i8* %278, i8** %9, align 8
  %279 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %280 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %279, i32 0, i32 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %277
  %286 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %287 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %286, i32 0, i32 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %12, align 8
  br label %291

291:                                              ; preds = %285, %277
  br label %296

292:                                              ; preds = %51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %9, align 8
  br label %296

293:                                              ; preds = %51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %9, align 8
  br label %296

294:                                              ; preds = %51
  br label %295

295:                                              ; preds = %51, %294
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0), i8** %9, align 8
  br label %296

296:                                              ; preds = %295, %293, %292, %291, %259, %227, %195, %163, %131, %99
  %297 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %297, align 16
  %298 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %298, align 16
  %299 = load i64, i64* %12, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %321

301:                                              ; preds = %296
  %302 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %303 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %302, i32 0, i32 7
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* %12, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %321

307:                                              ; preds = %301
  %308 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %309 = load i64, i64* %12, align 8
  %310 = call i32 @sprintf(i8* %308, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i64 %309)
  store i32 %310, i32* %14, align 4
  %311 = load i64, i64* %13, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %307
  %314 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %315 = load i32, i32* %14, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  %318 = load i64, i64* %13, align 8
  %319 = call i32 @sprintf(i8* %317, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i64 %318)
  br label %320

320:                                              ; preds = %313, %307
  br label %329

321:                                              ; preds = %301, %296
  %322 = load i64, i64* %13, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %326 = load i64, i64* %13, align 8
  %327 = call i32 @sprintf(i8* %325, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i64 %326)
  br label %328

328:                                              ; preds = %324, %321
  br label %329

329:                                              ; preds = %328, %320
  %330 = load i8*, i8** %7, align 8
  %331 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %332 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %331, i32 0, i32 6
  %333 = load i32, i32* %332, align 8
  %334 = load i8*, i8** %8, align 8
  %335 = load i32, i32* %6, align 4
  %336 = icmp ne i32 %335, 0
  %337 = zext i1 %336 to i64
  %338 = select i1 %336, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)
  %339 = load i8*, i8** %10, align 8
  %340 = load i8*, i8** %9, align 8
  %341 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %342 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %343 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @MCE_DISPOSITION_RECOVERED, align 8
  %346 = icmp eq i64 %344, %345
  %347 = zext i1 %346 to i64
  %348 = select i1 %346, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0)
  %349 = call i32 (i8*, i8*, i32, i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.50, i64 0, i64 0), i8* %330, i32 %333, i8* %334, i8* %338, i8* %339, i8* %340, i8* %341, i8* %348)
  %350 = load i32, i32* %6, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %329
  %353 = load i32, i32* %5, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %377

355:                                              ; preds = %352, %329
  %356 = load i8*, i8** %7, align 8
  %357 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %358 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = inttoptr i64 %363 to i8*
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %6, align 4
  %369 = icmp ne i32 %368, 0
  %370 = zext i1 %369 to i64
  %371 = select i1 %369, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0)
  %372 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %373 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %372, i32 0, i32 7
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %376 = call i32 (i8*, i8*, i32, i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i64 0, i64 0), i8* %356, i32 %359, i8* %364, i32 %367, i8* %371, i64 %374, i8* %375)
  br label %392

377:                                              ; preds = %352
  %378 = load i8*, i8** %7, align 8
  %379 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %380 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %383 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %382, i32 0, i32 7
  %384 = load i64, i64* %383, align 8
  %385 = inttoptr i64 %384 to i8*
  %386 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %387 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %386, i32 0, i32 7
  %388 = load i64, i64* %387, align 8
  %389 = inttoptr i64 %388 to i8*
  %390 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %391 = call i32 (i8*, i8*, i32, i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0), i8* %378, i32 %381, i8* %385, i8* %389, i8* %390)
  br label %392

392:                                              ; preds = %377, %355
  %393 = load i8*, i8** %7, align 8
  %394 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %395 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %394, i32 0, i32 6
  %396 = load i32, i32* %395, align 8
  %397 = load i8*, i8** %11, align 8
  %398 = call i32 (i8*, i8*, i32, i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i64 0, i64 0), i8* %393, i32 %396, i8* %397)
  %399 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %400 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %399, i32 0, i32 5
  %401 = load i64, i64* %400, align 8
  %402 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @machine_check_print_event_info.mc_error_class, i64 0, i64 0))
  %403 = icmp ult i64 %401, %402
  br i1 %403, label %404, label %410

404:                                              ; preds = %392
  %405 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %406 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %405, i32 0, i32 5
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds [5 x i8*], [5 x i8*]* @machine_check_print_event_info.mc_error_class, i64 0, i64 %407
  %409 = load i8*, i8** %408, align 8
  br label %411

410:                                              ; preds = %392
  br label %411

411:                                              ; preds = %410, %404
  %412 = phi i8* [ %409, %404 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %410 ]
  store i8* %412, i8** %9, align 8
  %413 = load i8*, i8** %7, align 8
  %414 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %415 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %414, i32 0, i32 6
  %416 = load i32, i32* %415, align 8
  %417 = load i8*, i8** %9, align 8
  %418 = call i32 (i8*, i8*, i32, i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i8* %413, i32 %416, i8* %417)
  br label %419

419:                                              ; preds = %411, %22
  ret void
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @printk(i8*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
