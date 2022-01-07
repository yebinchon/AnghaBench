; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_power_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_power_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [138 x i8] c"Power level %d:\0A\09entry_latency       : %d cycles\0A\09exit_latency        : %d cycles\0A\09power consumption   : %d mW\0A\09Cache+TLB coherency : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Power level %d: not implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @power_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_info(%struct.seq_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %9 = bitcast i32* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = call i64 @ia64_pal_halt_info(%struct.TYPE_5__* %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

15:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %68, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %71

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %63

28:                                               ; preds = %19
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %62 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %37, i32 %44, i32 %51, i8* %61)
  br label %67

63:                                               ; preds = %19
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %28
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %16

71:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %14
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @ia64_pal_halt_info(%struct.TYPE_5__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
