; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_creg_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_creg_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i64, i32 }
%struct.creg_cmd = type { i64, i64, i64, i32, i64 }

@CREG_ADD = common dso_local global i64 0, align 8
@CREG_CNT = common dso_local global i64 0, align 8
@CREG_OP_WRITE = common dso_local global i64 0, align 8
@CREG_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*, %struct.creg_cmd*)* @creg_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creg_issue_cmd(%struct.rsxx_cardinfo* %0, %struct.creg_cmd* %1) #0 {
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca %struct.creg_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  store %struct.creg_cmd* %1, %struct.creg_cmd** %4, align 8
  %6 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %7 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %75

12:                                               ; preds = %2
  %13 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %17 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CREG_ADD, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @iowrite32(i64 %15, i64 %20)
  %22 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %26 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CREG_CNT, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite32(i64 %24, i64 %29)
  %31 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CREG_OP_WRITE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %12
  %37 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %43 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @copy_to_creg_data(%struct.rsxx_cardinfo* %42, i64 %45, i64 %48, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %75

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %36
  br label %58

58:                                               ; preds = %57, %12
  %59 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %60 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %75

65:                                               ; preds = %58
  %66 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %70 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CREG_CMD, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @iowrite32(i64 %68, i64 %73)
  br label %75

75:                                               ; preds = %65, %64, %55, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @copy_to_creg_data(%struct.rsxx_cardinfo*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
