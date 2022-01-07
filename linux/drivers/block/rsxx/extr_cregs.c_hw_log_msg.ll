; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_hw_log_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_hw_log_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }

@hw_log_msg.level = internal global i8 0, align 1
@.str = private unnamed_addr constant [9 x i8] c"HW: %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*, i8*, i32)* @hw_log_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_log_msg(%struct.rsxx_cardinfo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rsxx_cardinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 60
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 62
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* @hw_log_msg.level, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  store i8* %26, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 3
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %21, %15, %9, %3
  %30 = load i8, i8* @hw_log_msg.level, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %80 [
    i32 48, label %32
    i32 49, label %38
    i32 50, label %44
    i32 51, label %50
    i32 52, label %56
    i32 53, label %62
    i32 54, label %68
    i32 55, label %74
  ]

32:                                               ; preds = %29
  %33 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %34 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @dev_emerg(i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36)
  br label %86

38:                                               ; preds = %29
  %39 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %40 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @dev_alert(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %42)
  br label %86

44:                                               ; preds = %29
  %45 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %46 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @dev_crit(i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %48)
  br label %86

50:                                               ; preds = %29
  %51 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %52 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %54)
  br label %86

56:                                               ; preds = %29
  %57 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %58 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %59, i8* %60)
  br label %86

62:                                               ; preds = %29
  %63 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %64 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @dev_notice(i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %65, i8* %66)
  br label %86

68:                                               ; preds = %29
  %69 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %70 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %69)
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @dev_info(i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %71, i8* %72)
  br label %86

74:                                               ; preds = %29
  %75 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %76 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %78)
  br label %86

80:                                               ; preds = %29
  %81 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %82 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @dev_info(i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %80, %74, %68, %62, %56, %50, %44, %38, %32
  ret void
}

declare dso_local i32 @dev_emerg(i32, i8*, i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @dev_alert(i32, i8*, i32, i8*) #1

declare dso_local i32 @dev_crit(i32, i8*, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i8*) #1

declare dso_local i32 @dev_notice(i32, i8*, i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
