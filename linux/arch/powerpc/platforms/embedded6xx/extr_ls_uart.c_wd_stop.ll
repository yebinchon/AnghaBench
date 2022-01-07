; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/embedded6xx/extr_ls_uart.c_wd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/embedded6xx/extr_ls_uart.c_wd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@__const.wd_stop.string = private unnamed_addr constant [37 x i8] c"AAAAFFFFJJJJ>>>>VVVV>>>>ZZZZVVVVKKKK\00", align 16
@avr_addr = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i64 0, align 8
@UART_LSR_THRE = common dso_local global i8 0, align 1
@UART_LSR_TEMT = common dso_local global i8 0, align 1
@UART_TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"linkstation: disarming the AVR watchdog: \00", align 1
@UART_LSR_DR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@UART_RX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @wd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wd_stop(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca [37 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %9 = bitcast [37 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([37 x i8], [37 x i8]* @__const.wd_stop.string, i32 0, i32 0), i64 37, i1 false)
  store i32 0, i32* %4, align 4
  store i32 8, i32* %5, align 4
  %10 = getelementptr inbounds [37 x i8], [37 x i8]* %3, i64 0, i64 0
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %78, %1
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %12
  %17 = load i64, i64* @avr_addr, align 8
  %18 = load i64, i64* @UART_LSR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @in_8(i64 %19)
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %8, align 1
  %22 = load i8, i8* %8, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @UART_LSR_THRE, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @UART_LSR_TEMT, align 1
  %27 = sext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %78

31:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %55

41:                                               ; preds = %39
  %42 = load i64, i64* @avr_addr, align 8
  %43 = load i64, i64* @UART_TX, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [37 x i8], [37 x i8]* %3, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @out_8(i64 %44, i8 signext %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %32

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = call i32 @msleep(i32 7)
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %70, %59
  %63 = load i64, i64* @avr_addr, align 8
  %64 = load i64, i64* @UART_LSR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @in_8(i64 %65)
  %67 = load i32, i32* @UART_LSR_DR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i64, i64* @avr_addr, align 8
  %72 = load i64, i64* @UART_RX, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @in_8(i64 %73)
  %75 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %62

76:                                               ; preds = %62
  br label %80

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77, %16
  %79 = call i32 @msleep(i32 17)
  br label %12

80:                                               ; preds = %76, %12
  %81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @in_8(i64) #2

declare dso_local i32 @out_8(i64, i8 signext) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @printk(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
