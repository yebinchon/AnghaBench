; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_print_opcode_table_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_print_opcode_table_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_opcode = type { i32, %struct.insn_group* }
%struct.insn_group = type { i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"#define OPCODE_OFFSET_INITIALIZER { \\\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"\09{ .opcode = 0x%.2s, .mask = 0x%02x, .byte = %d, .offset = %d, .count = %d }, \\\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gen_opcode*)* @print_opcode_table_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_opcode_table_offsets(%struct.gen_opcode* %0) #0 {
  %2 = alloca %struct.gen_opcode*, align 8
  %3 = alloca %struct.insn_group*, align 8
  %4 = alloca i32, align 4
  store %struct.gen_opcode* %0, %struct.gen_opcode** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %9 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %6
  %13 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %14 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %13, i32 0, i32 1
  %15 = load %struct.insn_group*, %struct.insn_group** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %15, i64 %17
  store %struct.insn_group* %18, %struct.insn_group** %3, align 8
  %19 = load %struct.insn_group*, %struct.insn_group** %3, align 8
  %20 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.insn_group*, %struct.insn_group** %3, align 8
  %23 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.insn_group*, %struct.insn_group** %3, align 8
  %28 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.insn_group*, %struct.insn_group** %3, align 8
  %33 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.insn_group*, %struct.insn_group** %3, align 8
  %36 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %26, i32 %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %12
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %6

42:                                               ; preds = %6
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
