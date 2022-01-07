; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.threshold_block = type { i64 }

@mce_flags = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@th_names = common dso_local global i8** null, align 8
@N_SMCA_BANK_TYPES = common dso_local global i32 0, align 4
@SMCA_UMC = common dso_local global i32 0, align 4
@smca_umc_block_names = common dso_local global i8** null, align 8
@smca_banks = common dso_local global %struct.TYPE_5__* null, align 8
@buf_mcatype = common dso_local global i8* null, align 8
@MAX_MCATYPE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.threshold_block*)* @get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_name(i32 %0, %struct.threshold_block* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.threshold_block*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.threshold_block* %1, %struct.threshold_block** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mce_flags, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %11 = icmp ne %struct.threshold_block* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %17 = call i8* @bank4_names(%struct.threshold_block* %16)
  store i8* %17, i8** %3, align 8
  br label %79

18:                                               ; preds = %12, %9
  %19 = load i8**, i8*** @th_names, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %3, align 8
  br label %79

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @smca_get_bank_type(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @N_SMCA_BANK_TYPES, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %79

31:                                               ; preds = %24
  %32 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %33 = icmp ne %struct.threshold_block* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SMCA_UMC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %40 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i8**, i8*** @smca_umc_block_names, align 8
  %43 = call i64 @ARRAY_SIZE(i8** %42)
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i8**, i8*** @smca_umc_block_names, align 8
  %47 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %48 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %3, align 8
  br label %79

52:                                               ; preds = %38
  store i8* null, i8** %3, align 8
  br label %79

53:                                               ; preds = %34, %31
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smca_banks, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %6, align 4
  %65 = call i8* @smca_get_name(i32 %64)
  store i8* %65, i8** %3, align 8
  br label %79

66:                                               ; preds = %53
  %67 = load i8*, i8** @buf_mcatype, align 8
  %68 = load i32, i32* @MAX_MCATYPE_NAME_LEN, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i8* @smca_get_name(i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smca_banks, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @snprintf(i8* %67, i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %76)
  %78 = load i8*, i8** @buf_mcatype, align 8
  store i8* %78, i8** %3, align 8
  br label %79

79:                                               ; preds = %66, %63, %52, %45, %30, %18, %15
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

declare dso_local i8* @bank4_names(%struct.threshold_block*) #1

declare dso_local i32 @smca_get_bank_type(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i8* @smca_get_name(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
