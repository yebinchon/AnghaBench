; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_setup_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_setup_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_cpu = type { i32 }

@xive_pool_vps = common dso_local global i64 0, align 8
@XIVE_INVALID_VP = common dso_local global i64 0, align 8
@xive_tima = common dso_local global i64 0, align 8
@TM_QW2_HV_POOL = common dso_local global i64 0, align 8
@TM_WORD2 = common dso_local global i64 0, align 8
@TM_QW2W2_VP = common dso_local global i32 0, align 4
@TM_SPC_PULL_POOL_CTX = common dso_local global i64 0, align 8
@OPAL_XIVE_VP_ENABLED = common dso_local global i32 0, align 4
@OPAL_BUSY = common dso_local global i64 0, align 8
@OPAL_BUSY_DELAY_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to enable pool VP on CPU %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get pool VP info CPU %d\0A\00", align 1
@TM_WORD0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.xive_cpu*)* @xive_native_setup_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_native_setup_cpu(i32 %0, %struct.xive_cpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xive_cpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.xive_cpu* %1, %struct.xive_cpu** %4, align 8
  %9 = load i64, i64* @xive_pool_vps, align 8
  %10 = load i64, i64* @XIVE_INVALID_VP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %76

13:                                               ; preds = %2
  %14 = load i64, i64* @xive_tima, align 8
  %15 = load i64, i64* @TM_QW2_HV_POOL, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @TM_WORD2, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @in_be32(i64 %18)
  %20 = load i32, i32* @TM_QW2W2_VP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i64, i64* @xive_tima, align 8
  %25 = load i64, i64* @TM_SPC_PULL_POOL_CTX, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @in_be64(i64 %26)
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i64, i64* @xive_pool_vps, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %41, %28
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @OPAL_XIVE_VP_ENABLED, align 4
  %36 = call i64 @opal_xive_set_vp_info(i64 %34, i32 %35, i32 0)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @OPAL_BUSY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %43 = call i32 @msleep(i32 %42)
  br label %33

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %76

50:                                               ; preds = %44
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @opal_xive_get_vp_info(i64 %51, i32* null, i32* %7, i32* null, i32* null)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %76

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @be64_to_cpu(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i64, i64* @xive_tima, align 8
  %62 = load i64, i64* @TM_QW2_HV_POOL, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i64, i64* @TM_WORD0, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @out_be32(i64 %65, i32 255)
  %67 = load i64, i64* @xive_tima, align 8
  %68 = load i64, i64* @TM_QW2_HV_POOL, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* @TM_WORD2, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* @TM_QW2W2_VP, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @out_be32(i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %58, %55, %47, %12
  ret void
}

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @in_be64(i64) #1

declare dso_local i64 @opal_xive_set_vp_info(i64, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @opal_xive_get_vp_info(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @out_be32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
