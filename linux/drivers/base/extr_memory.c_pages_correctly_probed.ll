; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_pages_correctly_probed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_pages_correctly_probed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sections_per_block = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"section %ld pfn[%lx, %lx) not present\0A\00", align 1
@PAGES_PER_SECTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"section %ld pfn[%lx, %lx) no valid memmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"section %ld pfn[%lx, %lx) is already online\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @pages_correctly_probed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pages_correctly_probed(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @pfn_to_section_nr(i64 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @sections_per_block, align 8
  %11 = add i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %65, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @pfn_valid(i64 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %69

26:                                               ; preds = %17
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @present_section_nr(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @PAGES_PER_SECTION, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32, i64 %35)
  store i32 0, i32* %2, align 4
  br label %69

37:                                               ; preds = %26
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @valid_section_nr(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @PAGES_PER_SECTION, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %43, i64 %46)
  store i32 0, i32* %2, align 4
  br label %69

48:                                               ; preds = %37
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @online_section_nr(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @PAGES_PER_SECTION, align 8
  %57 = add i64 %55, %56
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %53, i64 %54, i64 %57)
  store i32 0, i32* %2, align 4
  br label %69

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* @PAGES_PER_SECTION, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %4, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %4, align 8
  br label %13

68:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %52, %41, %30, %25
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @pfn_to_section_nr(i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local i32 @present_section_nr(i64) #1

declare dso_local i32 @pr_warn(i8*, i64, i64, i64) #1

declare dso_local i32 @valid_section_nr(i64) #1

declare dso_local i64 @online_section_nr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
