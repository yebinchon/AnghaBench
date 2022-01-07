; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_......driverss390charsclp_early_core.c_sclp_early_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_......driverss390charsclp_early_core.c_sclp_early_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_sccb = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@sclp_early_sccb = common dso_local global i64 0, align 8
@EVTYP_OPCMD_MASK = common dso_local global i64 0, align 8
@EVTYP_VT220MSG_MASK = common dso_local global i64 0, align 8
@EVTYP_MSG_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @sclp_early_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_early_setup(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.init_sccb*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ugt i64 4, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUILD_BUG_ON(i32 %15)
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  %19 = load i64, i64* @sclp_early_sccb, align 8
  %20 = inttoptr i64 %19 to %struct.init_sccb*
  store %struct.init_sccb* %20, %struct.init_sccb** %10, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @EVTYP_OPCMD_MASK, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i64 [ 0, %23 ], [ %25, %24 ]
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %35

31:                                               ; preds = %26
  %32 = load i64, i64* @EVTYP_VT220MSG_MASK, align 8
  %33 = load i64, i64* @EVTYP_MSG_MASK, align 8
  %34 = or i64 %32, %33
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i64 [ 0, %30 ], [ %34, %31 ]
  store i64 %36, i64* %9, align 8
  %37 = load %struct.init_sccb*, %struct.init_sccb** %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @sclp_early_set_event_mask(%struct.init_sccb* %37, i64 %38, i64 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %59

45:                                               ; preds = %35
  %46 = load %struct.init_sccb*, %struct.init_sccb** %10, align 8
  %47 = call i32 @sclp_early_con_check_linemode(%struct.init_sccb* %46)
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.init_sccb*, %struct.init_sccb** %10, align 8
  %50 = call i64 @sccb_get_send_mask(%struct.init_sccb* %49)
  %51 = load i64, i64* @EVTYP_VT220MSG_MASK, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %45, %43
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @sclp_early_set_event_mask(%struct.init_sccb*, i64, i64) #1

declare dso_local i32 @sclp_early_con_check_linemode(%struct.init_sccb*) #1

declare dso_local i64 @sccb_get_send_mask(%struct.init_sccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
