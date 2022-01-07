; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_poll_dsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_poll_dsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32, %struct.pi_adapter* }
%struct.pi_adapter = type { i32 }

@STAT_ERR = common dso_local global i32 0, align 4
@STAT_SEEK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: %s DSC timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: %s stat=0x%x err=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_unit*, i32, i32, i8*)* @pt_poll_dsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_poll_dsc(%struct.pt_unit* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_unit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pi_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pt_unit* %0, %struct.pt_unit** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %15 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %14, i32 0, i32 1
  %16 = load %struct.pi_adapter*, %struct.pi_adapter** %15, align 8
  store %struct.pi_adapter* %16, %struct.pi_adapter** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %45, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @pt_sleep(i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %27 = call i32 @pi_connect(%struct.pi_adapter* %26)
  %28 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %29 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %30 = call i32 @DRIVE(%struct.pt_unit* %29)
  %31 = call i32 @write_reg(%struct.pi_adapter* %28, i32 6, i32 %30)
  %32 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %33 = call i32 @read_reg(%struct.pi_adapter* %32, i32 7)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %35 = call i32 @read_reg(%struct.pi_adapter* %34, i32 1)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %37 = call i32 @pi_disconnect(%struct.pi_adapter* %36)
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @STAT_ERR, align 4
  %40 = load i32, i32* @STAT_SEEK, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  br label %46

45:                                               ; preds = %21
  br label %17

46:                                               ; preds = %44, %17
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @STAT_ERR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %61 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (i8*, i32, i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %63)
  br label %73

65:                                               ; preds = %55
  %66 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %67 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i8*, i32, i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %59
  %74 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %75 = call i32 @pt_req_sense(%struct.pt_unit* %74, i32 0)
  store i32 0, i32* %5, align 4
  br label %77

76:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @pt_sleep(i32) #1

declare dso_local i32 @pi_connect(%struct.pi_adapter*) #1

declare dso_local i32 @write_reg(%struct.pi_adapter*, i32, i32) #1

declare dso_local i32 @DRIVE(%struct.pt_unit*) #1

declare dso_local i32 @read_reg(%struct.pi_adapter*, i32) #1

declare dso_local i32 @pi_disconnect(%struct.pi_adapter*) #1

declare dso_local i32 @printk(i8*, i32, i8*, ...) #1

declare dso_local i32 @pt_req_sense(%struct.pt_unit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
