; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_mpic_err.c_mpic_setup_error_int.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_mpic_err.c_mpic_setup_error_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mpic = type { i32*, i32, i32, %struct.TYPE_2__, i32, i64 }

@MPIC_ERR_INT_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"could not map mpic error registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fsl_mpic_err_chip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MPIC_FSL_HAS_EIMR = common dso_local global i32 0, align 4
@MPIC_MAX_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpic_setup_error_int(%struct.mpic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mpic*, %struct.mpic** %4, align 8
  %8 = getelementptr inbounds %struct.mpic, %struct.mpic* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MPIC_ERR_INT_BASE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ioremap(i64 %11, i32 4096)
  %13 = load %struct.mpic*, %struct.mpic** %4, align 8
  %14 = getelementptr inbounds %struct.mpic, %struct.mpic* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.mpic*, %struct.mpic** %4, align 8
  %16 = getelementptr inbounds %struct.mpic, %struct.mpic* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.mpic*, %struct.mpic** %4, align 8
  %25 = getelementptr inbounds %struct.mpic, %struct.mpic* %24, i32 0, i32 3
  %26 = bitcast %struct.TYPE_2__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 4 bitcast (%struct.TYPE_2__* @fsl_mpic_err_chip to i8*), i64 4, i1 false)
  %27 = load %struct.mpic*, %struct.mpic** %4, align 8
  %28 = getelementptr inbounds %struct.mpic, %struct.mpic* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mpic*, %struct.mpic** %4, align 8
  %31 = getelementptr inbounds %struct.mpic, %struct.mpic* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @MPIC_FSL_HAS_EIMR, align 4
  %34 = load %struct.mpic*, %struct.mpic** %4, align 8
  %35 = getelementptr inbounds %struct.mpic, %struct.mpic* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @MPIC_MAX_ERR, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %52, %23
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  %46 = load %struct.mpic*, %struct.mpic** %4, align 8
  %47 = getelementptr inbounds %struct.mpic, %struct.mpic* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %40

55:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
