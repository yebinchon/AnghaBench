; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_mpic_err.c_mpic_err_int_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_mpic_err.c_mpic_err_int_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error interrupt setup failed\0A\00", align 1
@fsl_error_int_handler = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"mpic-error-int\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to register error interrupt handler\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpic_err_int_init(%struct.mpic* %0, i32 %1) #0 {
  %3 = alloca %struct.mpic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpic* %0, %struct.mpic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mpic*, %struct.mpic** %3, align 8
  %8 = getelementptr inbounds %struct.mpic, %struct.mpic* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @irq_create_mapping(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.mpic*, %struct.mpic** %3, align 8
  %18 = getelementptr inbounds %struct.mpic, %struct.mpic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mpic_fsl_err_write(i32 %19, i32 -1)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @fsl_error_int_handler, align 4
  %23 = load i32, i32* @IRQF_NO_THREAD, align 4
  %24 = load %struct.mpic*, %struct.mpic** %3, align 8
  %25 = call i32 @request_irq(i32 %21, i32 %22, i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.mpic* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %14, %28, %16
  ret void
}

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mpic_fsl_err_write(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.mpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
