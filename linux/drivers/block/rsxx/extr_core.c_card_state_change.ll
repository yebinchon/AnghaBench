; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_card_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_card_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"card state change detected.(%s -> %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Hardware has entered read-only mode!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed attaching DMA devices\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Hardware Fault reported!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*, i32)* @card_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @card_state_change(%struct.rsxx_cardinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %7 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %6)
  %8 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %9 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @rsxx_card_state_to_str(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @rsxx_card_state_to_str(i32 %12)
  %14 = call i32 @dev_info(i32 %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %17 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %19 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %64

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %64 [
    i32 132, label %25
    i32 133, label %29
    i32 135, label %55
    i32 131, label %59
    i32 129, label %59
    i32 134, label %59
    i32 128, label %59
    i32 130, label %59
    i32 136, label %59
  ]

25:                                               ; preds = %23
  %26 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %27 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %26)
  %28 = call i32 @dev_crit(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %23, %25
  %30 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %31 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %32 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %31, i32 0, i32 1
  %33 = call i32 @rsxx_get_card_size8(%struct.rsxx_cardinfo* %30, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %38 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %37)
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %42 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %47 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %50 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 9
  %53 = call i32 @set_capacity(i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %45, %40
  br label %64

55:                                               ; preds = %23
  %56 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %57 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %56)
  %58 = call i32 @dev_crit(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %23, %23, %23, %23, %23, %23, %55
  %60 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %61 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @set_capacity(i32 %62, i32 0)
  br label %64

64:                                               ; preds = %22, %23, %59, %54
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @rsxx_card_state_to_str(i32) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @rsxx_get_card_size8(%struct.rsxx_cardinfo*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @set_capacity(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
