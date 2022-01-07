; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_uPD98402.c_set_framing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_uPD98402.c_set_framing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@set_framing.sonet = internal constant [4 x i8] c"\01\02\03\00", align 1
@set_framing.sdh = internal constant [4 x i8] c"\01\00\00\02", align 1
@EINVAL = common dso_local global i32 0, align 4
@C11T = common dso_local global i32 0, align 4
@C12T = common dso_local global i32 0, align 4
@C13T = common dso_local global i32 0, align 4
@MDR = common dso_local global i32 0, align 4
@uPD98402_MDR_SS_MASK = common dso_local global i8 0, align 1
@uPD98402_MDR_SS_SHIFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i8)* @set_framing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_framing(%struct.atm_dev* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load i8, i8* %5, align 1
  %9 = zext i8 %8 to i32
  switch i32 %9, label %12 [
    i32 128, label %10
    i32 129, label %11
  ]

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @set_framing.sonet, i64 0, i64 0), i8** %6, align 8
  br label %15

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @set_framing.sdh, i64 0, i64 0), i8** %6, align 8
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %59

15:                                               ; preds = %11, %10
  %16 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %17 = call %struct.TYPE_2__* @PRIV(%struct.atm_dev* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = load i32, i32* @C11T, align 4
  %25 = call i32 @PUT(i8 signext %23, i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = load i32, i32* @C12T, align 4
  %30 = call i32 @PUT(i8 signext %28, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = load i32, i32* @C13T, align 4
  %35 = call i32 @PUT(i8 signext %33, i32 %34)
  %36 = load i32, i32* @MDR, align 4
  %37 = call signext i8 @GET(i32 %36)
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @uPD98402_MDR_SS_MASK, align 1
  %40 = sext i8 %39 to i32
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @uPD98402_MDR_SS_SHIFT, align 1
  %48 = sext i8 %47 to i32
  %49 = shl i32 %46, %48
  %50 = or i32 %42, %49
  %51 = trunc i32 %50 to i8
  %52 = load i32, i32* @MDR, align 4
  %53 = call i32 @PUT(i8 signext %51, i32 %52)
  %54 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %55 = call %struct.TYPE_2__* @PRIV(%struct.atm_dev* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %15, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @PRIV(%struct.atm_dev*) #1

declare dso_local i32 @PUT(i8 signext, i32) #1

declare dso_local signext i8 @GET(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
