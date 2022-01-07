; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c___issue_creg_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c___issue_creg_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.creg_completion = type { i32, i32, i32* }

@cmd_done = common dso_local global i32 0, align 4
@creg_cmd_done_cb = common dso_local global i32 0, align 4
@CREG_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cregs timer failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SCRATCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"creg command failed(%d x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, i32, i32, i32, i8*, i32, i32*)* @__issue_creg_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__issue_creg_rw(%struct.rsxx_cardinfo* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.rsxx_cardinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.creg_completion, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* @cmd_done, align 4
  %20 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %19)
  %21 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %16, i32 0, i32 2
  store i32* @cmd_done, i32** %21, align 8
  %22 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %16, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %16, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @creg_cmd_done_cb, align 4
  %31 = call i32 @creg_queue_cmd(%struct.rsxx_cardinfo* %24, i32 %25, i32 %26, i32 %27, i8* %28, i32 %29, i32 %30, %struct.creg_completion* %16)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %7
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %8, align 4
  br label %82

36:                                               ; preds = %7
  %37 = load i32, i32* @CREG_TIMEOUT_MSEC, align 4
  %38 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %9, align 8
  %39 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %37, %41
  %43 = add nsw i32 %42, 20000
  %44 = call i64 @msecs_to_jiffies(i32 %43)
  store i64 %44, i64* %17, align 8
  %45 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %16, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %17, align 8
  %48 = call i32 @wait_for_completion_timeout(i32* %46, i64 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %36
  %52 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %9, align 8
  %53 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %52)
  %54 = call i32 @dev_crit(i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %9, align 8
  %56 = call i32 @creg_reset(%struct.rsxx_cardinfo* %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %82

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %16, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %15, align 8
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %16, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %9, align 8
  %68 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SCRATCH, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @ioread32(i64 %71)
  %73 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %9, align 8
  %74 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %73)
  %75 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %16, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @dev_warn(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  %79 = getelementptr inbounds %struct.creg_completion, %struct.creg_completion* %16, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %8, align 4
  br label %82

81:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %66, %51, %34
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @creg_queue_cmd(%struct.rsxx_cardinfo*, i32, i32, i32, i8*, i32, i32, %struct.creg_completion*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @creg_reset(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
