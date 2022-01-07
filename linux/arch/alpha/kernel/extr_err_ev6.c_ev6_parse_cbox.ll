; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_ev6.c_ev6_parse_cbox.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_ev6.c_ev6_parse_cbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ev6_parse_cbox.sourcename = internal constant [8 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MEMORY\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"BCACHE\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DCACHE\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"BCACHE PROBE\00", align 1
@ev6_parse_cbox.streamname = internal constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@ev6_parse_cbox.bitsname = internal constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@MCHK_DISPOSITION_REPORT = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@EV6__C_STAT__SOURCE = common dso_local global i32 0, align 4
@EV6__C_STAT__ISTREAM = common dso_local global i32 0, align 4
@EV6__C_STAT__DOUBLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"%s    Bcache tag parity error\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"%s    Dcache tag parity error\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"%s    Bcache single-bit error on a probe hit\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%s    %s-STREAM %s-BIT ECC error from %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"%s    Address: 0x%016llx\0A    Syndrome[upper.lower]: %02llx.%02llx\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"%s    Block status: %s%s%s%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"SHARED \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"DIRTY \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"VALID \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"PARITY \00", align 1
@EV6__C_STAT__BC_PERR = common dso_local global i32 0, align 4
@EV6__C_STAT__DC_PERR = common dso_local global i32 0, align 4
@EV6__C_STAT__ERRMASK = common dso_local global i32 0, align 4
@EV6__C_STAT__PROBE_BC_ERR0 = common dso_local global i32 0, align 4
@EV6__C_STAT__PROBE_BC_ERR1 = common dso_local global i32 0, align 4
@EV6__C_STAT__SOURCE_BCACHE = common dso_local global i32 0, align 4
@EV6__C_STAT__SOURCE_MEMORY = common dso_local global i32 0, align 4
@EV6__C_STS__DIRTY = common dso_local global i32 0, align 4
@EV6__C_STS__PARITY = common dso_local global i32 0, align 4
@EV6__C_STS__SHARED = common dso_local global i32 0, align 4
@EV6__C_STS__VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @ev6_parse_cbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ev6_parse_cbox(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @MCHK_DISPOSITION_REPORT, align 4
  store i32 %18, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = and i32 %19, 31
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %23, i32* %7, align 4
  br label %115

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %115

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @EV6__C_STAT__SOURCE, align 4
  %32 = call i32 @EXTRACT(i32 %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @EV6__C_STAT__ISTREAM, align 4
  %35 = call i32 @EXTRACT(i32 %33, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @EV6__C_STAT__DOUBLE, align 4
  %38 = call i32 @EXTRACT(i32 %36, i32 %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @err_print_prefix, align 4
  %44 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @err_print_prefix, align 4
  %51 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %15, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 7
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @err_print_prefix, align 4
  %60 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %59)
  store i32 -1, i32* %15, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* @err_print_prefix, align 4
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i8*], [2 x i8*]* @ev6_parse_cbox.streamname, i64 0, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i8*], [2 x i8*]* @ev6_parse_cbox.bitsname, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ev6_parse_cbox.sourcename, i64 0, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %65, i8* %69, i8* %73, i8* %77)
  br label %79

79:                                               ; preds = %64, %61
  %80 = load i32, i32* @err_print_prefix, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %113

90:                                               ; preds = %87, %79
  %91 = load i32, i32* @err_print_prefix, align 4
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, 2
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %107 = load i32, i32* %12, align 4
  %108 = and i32 %107, 8
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %112 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %91, i8* %96, i8* %101, i8* %106, i8* %111)
  br label %113

113:                                              ; preds = %90, %87
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %113, %27, %22
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @EXTRACT(i32, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
