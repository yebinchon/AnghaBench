; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_print_long_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_print_long_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_opcode = type { i32, %struct.insn* }
%struct.insn = type { i32, i8*, i8* }

@cmp_long_insn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"enum {\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09LONG_INSN_%s,\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"}; /* %d */\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"#define LONG_INSN_INITIALIZER { \\\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\09[LONG_INSN_%s] = \22%s\22, \\\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gen_opcode*)* @print_long_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_long_insn(%struct.gen_opcode* %0) #0 {
  %2 = alloca %struct.gen_opcode*, align 8
  %3 = alloca %struct.insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gen_opcode* %0, %struct.gen_opcode** %2, align 8
  %6 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %7 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %6, i32 0, i32 1
  %8 = load %struct.insn*, %struct.insn** %7, align 8
  %9 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %10 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @cmp_long_insn, align 4
  %13 = call i32 @qsort(%struct.insn* %8, i32 %11, i32 24, i32 %12)
  store i32 0, i32* %5, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %18 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %23 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %22, i32 0, i32 1
  %24 = load %struct.insn*, %struct.insn** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.insn, %struct.insn* %24, i64 %26
  store %struct.insn* %27, %struct.insn** %3, align 8
  %28 = load %struct.insn*, %struct.insn** %3, align 8
  %29 = getelementptr inbounds %struct.insn, %struct.insn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %40

33:                                               ; preds = %21
  %34 = load %struct.insn*, %struct.insn** %3, align 8
  %35 = getelementptr inbounds %struct.insn, %struct.insn* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %33, %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %15

43:                                               ; preds = %15
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %73, %43
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %50 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %55 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %54, i32 0, i32 1
  %56 = load %struct.insn*, %struct.insn** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.insn, %struct.insn* %56, i64 %58
  store %struct.insn* %59, %struct.insn** %3, align 8
  %60 = load %struct.insn*, %struct.insn** %3, align 8
  %61 = getelementptr inbounds %struct.insn, %struct.insn* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 6
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %73

65:                                               ; preds = %53
  %66 = load %struct.insn*, %struct.insn** %3, align 8
  %67 = getelementptr inbounds %struct.insn, %struct.insn* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.insn*, %struct.insn** %3, align 8
  %70 = getelementptr inbounds %struct.insn, %struct.insn* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %68, i8* %71)
  br label %73

73:                                               ; preds = %65, %64
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %47

76:                                               ; preds = %47
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @qsort(%struct.insn*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
