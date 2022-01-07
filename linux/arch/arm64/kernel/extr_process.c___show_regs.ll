; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c___show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c___show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i32, i64, i64, i64, i64 }

@KERN_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pc : %pS\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"lr : %pS\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"pc : %016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"lr : %016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"sp : %016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"pmr_save: %08llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"x%-2d: %016llx \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i64 @compat_user_mode(%struct.pt_regs* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  store i32 12, i32* %4, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 30
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  store i32 29, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %10
  %27 = load i32, i32* @KERN_DEFAULT, align 4
  %28 = call i32 @show_regs_print_info(i32 %27)
  %29 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %30 = call i32 @print_pstate(%struct.pt_regs* %29)
  %31 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %32 = call i32 @user_mode(%struct.pt_regs* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %26
  %35 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = ptrtoint i8* %38 to i32
  %40 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* %5, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = ptrtoint i8* %42 to i32
  %44 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %54

45:                                               ; preds = %26
  %46 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* %5, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %45, %34
  %55 = load i64, i64* %6, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = call i64 (...) @system_uses_irq_prio_masking()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %54
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %97, %65
  %68 = load i32, i32* %3, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %71, i64 %78)
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = srem i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %70
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %86, i64 %93)
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %85, %70
  %98 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %67

99:                                               ; preds = %67
  ret void
}

declare dso_local i64 @compat_user_mode(%struct.pt_regs*) #1

declare dso_local i32 @show_regs_print_info(i32) #1

declare dso_local i32 @print_pstate(%struct.pt_regs*) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @system_uses_irq_prio_masking(...) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
