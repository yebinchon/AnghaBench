; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_disassemble.c_show_code.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_disassemble.c_show_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Code:\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" (Bad address in pc)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s%08lx:  \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_code(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i16*
  store i16* %10, i16** %3, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %53

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 -3, i64* %4, align 8
  br label %19

19:                                               ; preds = %48, %17
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %20, 6
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load i16, i16* %5, align 2
  %24 = load i16*, i16** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i16, i16* %24, i64 %25
  %27 = call i64 @__get_user(i16 zeroext %23, i16* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %51

31:                                               ; preds = %22
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %36 = load i16*, i16** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i16, i16* %36, i64 %37
  %39 = ptrtoint i16* %38 to i64
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %35, i64 %39)
  %41 = load i16*, i16** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i16, i16* %41, i64 %42
  %44 = ptrtoint i16* %43 to i64
  %45 = load i16, i16* %5, align 2
  %46 = call i32 @print_sh_insn(i64 %44, i16 zeroext %45)
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %31
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %19

51:                                               ; preds = %29, %19
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %16
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @__get_user(i16 zeroext, i16*) #1

declare dso_local i32 @print_sh_insn(i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
