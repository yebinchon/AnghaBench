; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32, %struct.pi_adapter* }
%struct.pi_adapter = type { i32 }

@PT_SPIN = common dso_local global i32 0, align 4
@PT_SPIN_DEL = common dso_local global i32 0, align 4
@STAT_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s: %s %s: alt=0x%x stat=0x%x err=0x%x loop=%d phase=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_unit*, i32, i32, i8*, i8*)* @pt_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_wait(%struct.pt_unit* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pi_adapter*, align 8
  store %struct.pt_unit* %0, %struct.pt_unit** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %19 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %18, i32 0, i32 1
  %20 = load %struct.pi_adapter*, %struct.pi_adapter** %19, align 8
  store %struct.pi_adapter* %20, %struct.pi_adapter** %17, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %42, %5
  %22 = load %struct.pi_adapter*, %struct.pi_adapter** %17, align 8
  %23 = call i32 @status_reg(%struct.pi_adapter* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30, %21
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @PT_SPIN, align 4
  %39 = icmp slt i32 %36, %38
  br label %40

40:                                               ; preds = %35, %30, %27
  %41 = phi i1 [ false, %30 ], [ false, %27 ], [ %39, %35 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, i32* @PT_SPIN_DEL, align 4
  %44 = call i32 @udelay(i32 %43)
  br label %21

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @STAT_ERR, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @PT_SPIN, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %52, %45
  %57 = load %struct.pi_adapter*, %struct.pi_adapter** %17, align 8
  %58 = call i32 @read_reg(%struct.pi_adapter* %57, i32 7)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.pi_adapter*, %struct.pi_adapter** %17, align 8
  %60 = call i32 @read_reg(%struct.pi_adapter* %59, i32 1)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.pi_adapter*, %struct.pi_adapter** %17, align 8
  %62 = call i32 @read_reg(%struct.pi_adapter* %61, i32 2)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @PT_SPIN, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, 256
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %66, %56
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %74 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %76, i8* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %72, %69
  %85 = load i32, i32* %14, align 4
  %86 = shl i32 %85, 8
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %6, align 4
  br label %90

89:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @status_reg(%struct.pi_adapter*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_reg(%struct.pi_adapter*, i32) #1

declare dso_local i32 @printk(i8*, i32, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
