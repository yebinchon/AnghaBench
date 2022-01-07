; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_init_fp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_init_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_dev = type { i32 }
%struct.freepool = type { i32, i32, i32 }

@FS_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Initializing free pool at %x:\0A\00", align 1
@RBFP_RBS = common dso_local global i32 0, align 4
@RBFP_RBSVAL = common dso_local global i32 0, align 4
@RBFP_CME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_dev*, %struct.freepool*, i32, i32, i32)* @init_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_fp(%struct.fs_dev* %0, %struct.freepool* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fs_dev*, align 8
  %7 = alloca %struct.freepool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fs_dev* %0, %struct.fs_dev** %6, align 8
  store %struct.freepool* %1, %struct.freepool** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = call i32 (...) @func_enter()
  %12 = load i32, i32* @FS_DEBUG_INIT, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @fs_dprintk(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @FP_CNF(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @RBFP_RBS, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* @RBFP_RBSVAL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RBFP_CME, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @write_fs(%struct.fs_dev* %15, i32 %17, i32 %24)
  %26 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @FP_SA(i32 %27)
  %29 = call i32 @write_fs(%struct.fs_dev* %26, i32 %28, i32 0)
  %30 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @FP_EA(i32 %31)
  %33 = call i32 @write_fs(%struct.fs_dev* %30, i32 %32, i32 0)
  %34 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @FP_CTU(i32 %35)
  %37 = call i32 @write_fs(%struct.fs_dev* %34, i32 %36, i32 0)
  %38 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @FP_CNT(i32 %39)
  %41 = call i32 @write_fs(%struct.fs_dev* %38, i32 %40, i32 0)
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.freepool*, %struct.freepool** %7, align 8
  %44 = getelementptr inbounds %struct.freepool, %struct.freepool* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.freepool*, %struct.freepool** %7, align 8
  %47 = getelementptr inbounds %struct.freepool, %struct.freepool* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.freepool*, %struct.freepool** %7, align 8
  %50 = getelementptr inbounds %struct.freepool, %struct.freepool* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = call i32 (...) @func_exit()
  ret i32 1
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @fs_dprintk(i32, i8*, i32) #1

declare dso_local i32 @write_fs(%struct.fs_dev*, i32, i32) #1

declare dso_local i32 @FP_CNF(i32) #1

declare dso_local i32 @FP_SA(i32) #1

declare dso_local i32 @FP_EA(i32) #1

declare dso_local i32 @FP_CTU(i32) #1

declare dso_local i32 @FP_CNT(i32) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
