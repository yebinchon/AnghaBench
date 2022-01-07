; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_mmu_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_mmu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@mmu_info.pgsz_strings = internal global [8 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"8K\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"64K\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"512K\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"4MB\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"32MB\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"256MB\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2GB\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"16GB\00", align 1
@tlb_type = common dso_local global i64 0, align 8
@cheetah = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"MMU Type\09: Cheetah\0A\00", align 1
@cheetah_plus = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"MMU Type\09: Cheetah+\0A\00", align 1
@spitfire = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"MMU Type\09: Spitfire\0A\00", align 1
@hypervisor = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"MMU Type\09: Hypervisor (sun4v)\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"MMU Type\09: ???\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"MMU PGSZs\09: \00", align 1
@cpu_pgsz_mask = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dcpage_flushes = common dso_local global i32 0, align 4
@dcpage_flushes_xcall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmu_info(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %5 = load i64, i64* @tlb_type, align 8
  %6 = load i64, i64* @cheetah, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %10 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %38

11:                                               ; preds = %1
  %12 = load i64, i64* @tlb_type, align 8
  %13 = load i64, i64* @cheetah_plus, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %17 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %37

18:                                               ; preds = %11
  %19 = load i64, i64* @tlb_type, align 8
  %20 = load i64, i64* @spitfire, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %24 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %36

25:                                               ; preds = %18
  %26 = load i64, i64* @tlb_type, align 8
  %27 = load i64, i64* @hypervisor, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %31 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37, %8
  %39 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %66, %38
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @mmu_info.pgsz_strings, i64 0, i64 0))
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i64, i64* @cpu_pgsz_mask, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = and i64 %46, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i8*], [8 x i8*]* @mmu_info.pgsz_strings, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %57, i8* %61)
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %52, %45
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %41

69:                                               ; preds = %41
  %70 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %71 = call i32 @seq_putc(%struct.seq_file* %70, i8 signext 10)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
