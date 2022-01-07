; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_intf_find_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_intf_find_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.ipmi_recv_msg* }
%struct.ipmi_recv_msg = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i16 }
%struct.TYPE_4__ = type { i8, i8 }
%struct.ipmi_addr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IPMI_IPMB_NUM_SEQ = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@IPMI_WATCH_MASK_CHECK_MESSAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, i8, i16, i8, i8, %struct.ipmi_addr*, %struct.ipmi_recv_msg**)* @intf_find_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intf_find_seq(%struct.ipmi_smi* %0, i8 zeroext %1, i16 signext %2, i8 zeroext %3, i8 zeroext %4, %struct.ipmi_addr* %5, %struct.ipmi_recv_msg** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipmi_smi*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca %struct.ipmi_addr*, align 8
  %15 = alloca %struct.ipmi_recv_msg**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.ipmi_recv_msg*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %9, align 8
  store i8 %1, i8* %10, align 1
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i8 %4, i8* %13, align 1
  store %struct.ipmi_addr* %5, %struct.ipmi_addr** %14, align 8
  store %struct.ipmi_recv_msg** %6, %struct.ipmi_recv_msg*** %15, align 8
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %16, align 4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @IPMI_IPMB_NUM_SEQ, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %104

29:                                               ; preds = %7
  %30 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %31 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %30, i32 0, i32 0
  %32 = load i64, i64* %17, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %35 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %98

43:                                               ; preds = %29
  %44 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %45 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i8, i8* %10, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %50, align 8
  store %struct.ipmi_recv_msg* %51, %struct.ipmi_recv_msg** %18, align 8
  %52 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %18, align 8
  %53 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  %57 = load i16, i16* %11, align 2
  %58 = sext i16 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %43
  %61 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %18, align 8
  %62 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 2
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %60
  %70 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %18, align 8
  %71 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %13, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %69
  %79 = load %struct.ipmi_addr*, %struct.ipmi_addr** %14, align 8
  %80 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %18, align 8
  %81 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %80, i32 0, i32 0
  %82 = call i64 @ipmi_addr_equal(%struct.ipmi_addr* %79, %struct.TYPE_6__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %18, align 8
  %86 = load %struct.ipmi_recv_msg**, %struct.ipmi_recv_msg*** %15, align 8
  store %struct.ipmi_recv_msg* %85, %struct.ipmi_recv_msg** %86, align 8
  %87 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %88 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i8, i8* %10, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %95 = load i32, i32* @IPMI_WATCH_MASK_CHECK_MESSAGES, align 4
  %96 = call i32 @smi_remove_watch(%struct.ipmi_smi* %94, i32 %95)
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %84, %78, %69, %60, %43
  br label %98

98:                                               ; preds = %97, %29
  %99 = load %struct.ipmi_smi*, %struct.ipmi_smi** %9, align 8
  %100 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %99, i32 0, i32 0
  %101 = load i64, i64* %17, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %98, %26
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ipmi_addr_equal(%struct.ipmi_addr*, %struct.TYPE_6__*) #1

declare dso_local i32 @smi_remove_watch(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
