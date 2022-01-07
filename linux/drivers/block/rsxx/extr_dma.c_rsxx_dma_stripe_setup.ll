; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_dma_stripe_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_dma.c_rsxx_dma_stripe_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"stripe_size is NOT a power of 2!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"_stripe.lower_mask   = x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"_stripe.upper_shift  = x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"_stripe.upper_mask   = x%016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"_stripe.target_mask  = x%016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"_stripe.target_shift = x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, i32)* @rsxx_dma_stripe_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_dma_stripe_setup(%struct.rsxx_cardinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsxx_cardinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @is_power_of_2(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %11 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %10)
  %12 = call i32 @dev_err(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sub i32 %16, 1
  %18 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %19 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %22 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %27 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %30 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @ffs(i32 %31)
  %33 = getelementptr i8, i8* %32, i64 -1
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %36 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %39 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %40, 1
  %42 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %43 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @ffs(i32 %45)
  %47 = getelementptr i8, i8* %46, i64 -1
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %50 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 4
  %52 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %53 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %52)
  %54 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %55 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %60 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %59)
  %61 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %62 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %67 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %66)
  %68 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %69 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %74 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %73)
  %75 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %76 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %81 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %80)
  %82 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %83 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %15, %9
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
