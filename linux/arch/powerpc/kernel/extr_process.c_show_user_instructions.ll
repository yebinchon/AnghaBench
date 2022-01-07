; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_show_user_instructions.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_show_user_instructions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32 }
%struct.seq_buf = type { i32 }

@NR_INSN_TO_PRINT = common dso_local global i32 0, align 4
@USER_DS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s[%d]: Bad NIP, not dumping instructions.\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"XXXXXXXX \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"<%08x> \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s[%d]: code: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_user_instructions(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_buf, align 4
  %6 = alloca [96 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %9 = load i32, i32* @NR_INSN_TO_PRINT, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = load i32, i32* @NR_INSN_TO_PRINT, align 4
  %15 = mul nsw i32 %14, 3
  %16 = sdiv i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = sub i64 %13, %18
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @NR_INSN_TO_PRINT, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @USER_DS, align 4
  %26 = call i32 @__access_ok(i64 %20, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  br label %92

36:                                               ; preds = %1
  %37 = getelementptr inbounds [96 x i8], [96 x i8]* %6, i64 0, i64 0
  %38 = call i32 @seq_buf_init(%struct.seq_buf* %5, i8* %37, i32 96)
  br label %39

39:                                               ; preds = %91, %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %39
  %43 = call i32 @seq_buf_clear(%struct.seq_buf* %5)
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %71, %42
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  br i1 %51, label %52, label %78

52:                                               ; preds = %50
  %53 = load i64, i64* %3, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @probe_kernel_address(i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %71

60:                                               ; preds = %52
  %61 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %3, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (%struct.seq_buf*, i8*, ...) @seq_buf_printf(%struct.seq_buf* %5, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %58
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %4, align 4
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 4
  store i64 %77, i64* %3, align 8
  br label %44

78:                                               ; preds = %50
  %79 = call i32 @seq_buf_has_overflowed(%struct.seq_buf* %5)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %81, %78
  br label %39

92:                                               ; preds = %28, %39
  ret void
}

declare dso_local i32 @__access_ok(i64, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @seq_buf_init(%struct.seq_buf*, i8*, i32) #1

declare dso_local i32 @seq_buf_clear(%struct.seq_buf*) #1

declare dso_local i64 @probe_kernel_address(i8*, i32) #1

declare dso_local i32 @seq_buf_printf(%struct.seq_buf*, i8*, ...) #1

declare dso_local i32 @seq_buf_has_overflowed(%struct.seq_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
