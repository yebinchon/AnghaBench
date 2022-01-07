; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_conf_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/44x/extr_fsp2.c_conf_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Configuration Logic Error\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"CONF_FIR: 0x%08x\0A\00", align 1
@DCRN_CONF_FIR_RWC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"RPERR0:   0x%08x\0A\00", align 1
@DCRN_CONF_RPERR0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"RPERR1:   0x%08x\0A\00", align 1
@DCRN_CONF_RPERR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @conf_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @DCRN_CONF_FIR_RWC, align 4
  %8 = call i32 @mfdcr(i32 %7)
  %9 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @DCRN_CONF_RPERR0, align 4
  %11 = call i32 @mfdcr(i32 %10)
  %12 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @DCRN_CONF_RPERR1, align 4
  %14 = call i32 @mfdcr(i32 %13)
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mfdcr(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
