; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_parse_boot_command_line.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_parse_boot_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_RANDOMIZE_BASE = common dso_local global i32 0, align 4
@kaslr_enabled = common dso_local global i64 0, align 8
@command_line_buf = common dso_local global i32 0, align 4
@early_command_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@memory_end = common dso_local global i32 0, align 4
@memory_end_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"vmalloc\00", align 1
@vmalloc_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"noexec\00", align 1
@noexec_disabled = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"facilities\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nokaslr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_boot_command_line() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CONFIG_RANDOMIZE_BASE, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  store i64 %7, i64* @kaslr_enabled, align 8
  %8 = load i32, i32* @command_line_buf, align 4
  %9 = load i32, i32* @early_command_line, align 4
  %10 = call i8* @strcpy(i32 %8, i32 %9)
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %70, %0
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @next_arg(i8* %16, i8** %1, i8** %2)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @memparse(i8* %25, i32* null)
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @round_down(i32 %26, i32 %27)
  store i32 %28, i32* @memory_end, align 4
  store i32 1, i32* @memory_end_set, align 4
  br label %29

29:                                               ; preds = %24, %21, %15
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %2, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @memparse(i8* %37, i32* null)
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i32 @round_up(i32 %38, i32 %39)
  store i32 %40, i32* @vmalloc_size, align 4
  br label %41

41:                                               ; preds = %36, %33, %29
  %42 = load i8*, i8** %1, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @kstrtobool(i8* %46, i32* %3)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 1, i32* @noexec_disabled, align 4
  br label %54

54:                                               ; preds = %53, %50, %45
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %2, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @modify_fac_list(i8* %63)
  br label %65

65:                                               ; preds = %62, %59, %55
  %66 = load i8*, i8** %1, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i64 0, i64* @kaslr_enabled, align 8
  br label %70

70:                                               ; preds = %69, %65
  br label %11

71:                                               ; preds = %11
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i8* @strcpy(i32, i32) #1

declare dso_local i8* @next_arg(i8*, i8**, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @memparse(i8*, i32*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @modify_fac_list(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
