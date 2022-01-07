; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_comm_ins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_comm_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_lpc_dev = type { i32 }
%struct.lpc_cycle_para = type { i64, i32 }

@LPC_MAX_DWIDTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FG_INCRADDR_LPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32)* @hisi_lpc_comm_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_lpc_comm_ins(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hisi_lpc_dev*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.lpc_cycle_para, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.hisi_lpc_dev*
  store %struct.hisi_lpc_dev* %18, %struct.hisi_lpc_dev** %12, align 8
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %13, align 8
  %20 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %12, align 8
  %21 = icmp ne %struct.hisi_lpc_dev* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @LPC_MAX_DWIDTH, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %28, %25, %22, %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %72

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %14, i32 0, i32 1
  store i32 0, i32* %39, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ugt i64 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @FG_INCRADDR_LPC, align 4
  %44 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %14, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %14, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @hisi_lpc_pio_to_addr(%struct.hisi_lpc_dev* %50, i64 %51)
  store i64 %52, i64* %15, align 8
  br label %53

53:                                               ; preds = %67, %47
  %54 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %12, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @hisi_lpc_target_in(%struct.hisi_lpc_dev* %54, %struct.lpc_cycle_para* %14, i64 %55, i8* %56, i64 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %6, align 4
  br label %72

63:                                               ; preds = %53
  %64 = load i64, i64* %10, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %13, align 8
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, -1
  store i32 %69, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %53, label %71

71:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %61, %35
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i64 @hisi_lpc_pio_to_addr(%struct.hisi_lpc_dev*, i64) #1

declare dso_local i32 @hisi_lpc_target_in(%struct.hisi_lpc_dev*, %struct.lpc_cycle_para*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
