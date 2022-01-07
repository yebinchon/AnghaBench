; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_sun4v_emit_err_attr_strings.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_sun4v_emit_err_attr_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sun4v_emit_err_attr_strings.attr_names = internal global [9 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"int-registers\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"fpu-registers\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"shutdown-request\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ASR\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ASI\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"priv-reg\00", align 1
@sun4v_emit_err_attr_strings.sp_states = internal global [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"sp-faulted\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"sp-available\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"sp-not-present\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"sp-state-reserved\00", align 1
@sun4v_emit_err_attr_strings.modes = internal global [4 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"mode-reserved0\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"mode-reserved1\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@SUN4V_ERR_ATTRS_SPSTATE_MSK = common dso_local global i32 0, align 4
@SUN4V_ERR_ATTRS_SPSTATE_SHFT = common dso_local global i32 0, align 4
@SUN4V_ERR_ATTRS_MODE_MSK = common dso_local global i32 0, align 4
@SUN4V_ERR_ATTRS_MODE_SHFT = common dso_local global i32 0, align 4
@SUN4V_ERR_ATTRS_RES_QUEUE_FULL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"res-queue-full \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sun4v_emit_err_attr_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4v_emit_err_attr_strings(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @sun4v_emit_err_attr_strings.attr_names, i64 0, i64 0))
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [9 x i8*], [9 x i8*]* @sun4v_emit_err_attr_strings.attr_names, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %17, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SUN4V_ERR_ATTRS_SPSTATE_MSK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @SUN4V_ERR_ATTRS_SPSTATE_SHFT, align 4
  %33 = lshr i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8*], [4 x i8*]* @sun4v_emit_err_attr_strings.sp_states, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @SUN4V_ERR_ATTRS_MODE_MSK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @SUN4V_ERR_ATTRS_MODE_SHFT, align 4
  %43 = lshr i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8*], [4 x i8*]* @sun4v_emit_err_attr_strings.modes, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @SUN4V_ERR_ATTRS_RES_QUEUE_FULL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %28
  %54 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %28
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
