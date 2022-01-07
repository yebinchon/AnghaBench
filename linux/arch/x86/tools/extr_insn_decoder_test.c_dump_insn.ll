; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_decoder_test.c_dump_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_decoder_test.c_dump_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Instruction = {\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rex_prefix\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"vex_prefix\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"opcode\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"modrm\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sib\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"displacement\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"immediate1\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"immediate2\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"\09.attr = %x, .opnd_bytes = %d, .addr_bytes = %d,\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\09.length = %d, .x86_64 = %d, .kaddr = %p}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.insn*)* @dump_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_insn(i32* %0, %struct.insn* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.insn*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.insn* %1, %struct.insn** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.insn*, %struct.insn** %4, align 8
  %9 = getelementptr inbounds %struct.insn, %struct.insn* %8, i32 0, i32 14
  %10 = call i32 @dump_field(i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.insn*, %struct.insn** %4, align 8
  %13 = getelementptr inbounds %struct.insn, %struct.insn* %12, i32 0, i32 13
  %14 = call i32 @dump_field(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.insn*, %struct.insn** %4, align 8
  %17 = getelementptr inbounds %struct.insn, %struct.insn* %16, i32 0, i32 12
  %18 = call i32 @dump_field(i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.insn*, %struct.insn** %4, align 8
  %21 = getelementptr inbounds %struct.insn, %struct.insn* %20, i32 0, i32 11
  %22 = call i32 @dump_field(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.insn*, %struct.insn** %4, align 8
  %25 = getelementptr inbounds %struct.insn, %struct.insn* %24, i32 0, i32 10
  %26 = call i32 @dump_field(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.insn*, %struct.insn** %4, align 8
  %29 = getelementptr inbounds %struct.insn, %struct.insn* %28, i32 0, i32 9
  %30 = call i32 @dump_field(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.insn*, %struct.insn** %4, align 8
  %33 = getelementptr inbounds %struct.insn, %struct.insn* %32, i32 0, i32 8
  %34 = call i32 @dump_field(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.insn*, %struct.insn** %4, align 8
  %37 = getelementptr inbounds %struct.insn, %struct.insn* %36, i32 0, i32 7
  %38 = call i32 @dump_field(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.insn*, %struct.insn** %4, align 8
  %41 = getelementptr inbounds %struct.insn, %struct.insn* %40, i32 0, i32 6
  %42 = call i32 @dump_field(i32* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.insn*, %struct.insn** %4, align 8
  %45 = getelementptr inbounds %struct.insn, %struct.insn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.insn*, %struct.insn** %4, align 8
  %48 = getelementptr inbounds %struct.insn, %struct.insn* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.insn*, %struct.insn** %4, align 8
  %51 = getelementptr inbounds %struct.insn, %struct.insn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %46, i32 %49, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.insn*, %struct.insn** %4, align 8
  %56 = getelementptr inbounds %struct.insn, %struct.insn* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.insn*, %struct.insn** %4, align 8
  %59 = getelementptr inbounds %struct.insn, %struct.insn* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.insn*, %struct.insn** %4, align 8
  %62 = getelementptr inbounds %struct.insn, %struct.insn* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %57, i32 %60, i32 %63)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @dump_field(i32*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
