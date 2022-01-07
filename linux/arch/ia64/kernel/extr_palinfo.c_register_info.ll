; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_register_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_register_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_3__ = type { i64 }

@register_info.info_type = internal constant [4 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [18 x i8] c"Implemented AR(s)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"AR(s) with read side-effects\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Implemented CR(s)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"CR(s) with read side-effects\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%-32s : \00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"RSE stacked physical registers   : %ld\0ARSE load/store hints             : %ld (%s)\0A\00", align 1
@RSE_HINTS_COUNT = common dso_local global i64 0, align 8
@rse_hints = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"(??)\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"Instruction debug register pairs : %ld\0AData debug register pairs        : %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @register_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_info(%struct.seq_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %17 = call i64 @ia64_pal_register_info(i32 %14, i32* %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %66

20:                                               ; preds = %13
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* @register_info.info_type, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %29 = call i32 @bitregister_process(%struct.seq_file* %27, i32* %28, i32 128)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = call i32 @seq_putc(%struct.seq_file* %30, i8 signext 10)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %10

35:                                               ; preds = %10
  %36 = call i64 @ia64_pal_rse_info(i64* %6, %struct.TYPE_3__* %7)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RSE_HINTS_COUNT, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i8**, i8*** @rse_hints, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i8* [ %52, %47 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %53 ]
  %56 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i64 %40, i64 %42, i8* %55)
  br label %57

57:                                               ; preds = %54, %35
  %58 = call i64 @ia64_pal_debug_info(i64* %8, i64* %9)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %66

61:                                               ; preds = %57
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0), i64 %63, i64 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %60, %19
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @ia64_pal_register_info(i32, i32*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @bitregister_process(%struct.seq_file*, i32*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i64 @ia64_pal_rse_info(i64*, %struct.TYPE_3__*) #1

declare dso_local i64 @ia64_pal_debug_info(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
