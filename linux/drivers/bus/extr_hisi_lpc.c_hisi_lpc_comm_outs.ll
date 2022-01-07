; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_comm_outs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_hisi_lpc.c_hisi_lpc_comm_outs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_lpc_dev = type { i32 }
%struct.lpc_cycle_para = type { i64, i32 }

@LPC_MAX_DWIDTH = common dso_local global i64 0, align 8
@FG_INCRADDR_LPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i32)* @hisi_lpc_comm_outs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_lpc_comm_outs(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hisi_lpc_dev*, align 8
  %12 = alloca %struct.lpc_cycle_para, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.hisi_lpc_dev*
  store %struct.hisi_lpc_dev* %16, %struct.hisi_lpc_dev** %11, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %11, align 8
  %19 = icmp ne %struct.hisi_lpc_dev* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @LPC_MAX_DWIDTH, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %26, %23, %20, %5
  br label %65

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %12, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @FG_INCRADDR_LPC, align 4
  %40 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %12, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.lpc_cycle_para, %struct.lpc_cycle_para* %12, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %11, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @hisi_lpc_pio_to_addr(%struct.hisi_lpc_dev* %46, i64 %47)
  store i64 %48, i64* %14, align 8
  br label %49

49:                                               ; preds = %61, %43
  %50 = load %struct.hisi_lpc_dev*, %struct.hisi_lpc_dev** %11, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @hisi_lpc_target_out(%struct.hisi_lpc_dev* %50, %struct.lpc_cycle_para* %12, i64 %51, i8* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %65

57:                                               ; preds = %49
  %58 = load i64, i64* %9, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %13, align 8
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %49, label %65

65:                                               ; preds = %33, %61, %56
  ret void
}

declare dso_local i64 @hisi_lpc_pio_to_addr(%struct.hisi_lpc_dev*, i64) #1

declare dso_local i64 @hisi_lpc_target_out(%struct.hisi_lpc_dev*, %struct.lpc_cycle_para*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
