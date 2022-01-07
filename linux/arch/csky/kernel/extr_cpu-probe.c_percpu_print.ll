; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_cpu-probe.c_percpu_print.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_cpu-probe.c_percpu_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"processor       : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"C-SKY CPU model : %s\0A\00", align 1
@CSKYCPU_DEF_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"cr13\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"product info[%d] : 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"hint (CPU funcs): 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ccr  (L1C & MMU): 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cr18\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ccr2 (L2C)      : 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @percpu_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @percpu_print(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.seq_file*
  store %struct.seq_file* %8, %struct.seq_file** %3, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = call i32 (...) @smp_processor_id()
  %11 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load i32, i32* @CSKYCPU_DEF_NAME, align 4
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = call i32 @mfcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %43, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %17, 100
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %22)
  %24 = call i32 @mfcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %46

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = lshr i32 %31, 28
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %40, %34
  %36 = call i32 @mfcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %37 = ashr i32 %36, 28
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %35

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %16

46:                                               ; preds = %41, %28, %16
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 (...) @mfcr_hint()
  %49 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = call i32 @mfcr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = call i32 (...) @mfcr_ccr2()
  %55 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mfcr(i8*) #1

declare dso_local i32 @mfcr_hint(...) #1

declare dso_local i32 @mfcr_ccr2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
