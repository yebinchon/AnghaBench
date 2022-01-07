; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_print_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_print_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i8*, i8*, i32, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"\09[%4d] = { .opfrag = 0x%s, .format = INSTR_%s, \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c".name = \22%s\22 \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c".offset = LONG_INSN_%s \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"}, \\\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.insn*, i32)* @print_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_opcode(%struct.insn* %0, i32 %1) #0 {
  %3 = alloca %struct.insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.insn* %0, %struct.insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.insn*, %struct.insn** %3, align 8
  %7 = getelementptr inbounds %struct.insn, %struct.insn* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load %struct.insn*, %struct.insn** %3, align 8
  %10 = getelementptr inbounds %struct.insn, %struct.insn* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.insn*, %struct.insn** %3, align 8
  %22 = getelementptr inbounds %struct.insn, %struct.insn* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20, i8* %23)
  %25 = load %struct.insn*, %struct.insn** %3, align 8
  %26 = getelementptr inbounds %struct.insn, %struct.insn* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.insn*, %struct.insn** %3, align 8
  %31 = getelementptr inbounds %struct.insn, %struct.insn* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %39

34:                                               ; preds = %18
  %35 = load %struct.insn*, %struct.insn** %3, align 8
  %36 = getelementptr inbounds %struct.insn, %struct.insn* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
