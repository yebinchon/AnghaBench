; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_print_opcode_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_print_opcode_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_opcode = type { i32, %struct.insn* }
%struct.insn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@cmpopcode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"#define OPCODE_TABLE_INITIALIZER { \\\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\09/* %.2s */ \\\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\09/* 1-byte opcode instructions */ \\\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gen_opcode*)* @print_opcode_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_opcode_table(%struct.gen_opcode* %0) #0 {
  %2 = alloca %struct.gen_opcode*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca %struct.insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gen_opcode* %0, %struct.gen_opcode** %2, align 8
  %7 = bitcast [2 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 2, i1 false)
  %8 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %9 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %8, i32 0, i32 1
  %10 = load %struct.insn*, %struct.insn** %9, align 8
  %11 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %12 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @cmpopcode, align 4
  %15 = call i32 @qsort(%struct.insn* %10, i32 %13, i32 16, i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %62, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %20 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %17
  %24 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %25 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %24, i32 0, i32 1
  %26 = load %struct.insn*, %struct.insn** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.insn, %struct.insn* %26, i64 %28
  store %struct.insn* %29, %struct.insn** %4, align 8
  %30 = load %struct.insn*, %struct.insn** %4, align 8
  %31 = getelementptr inbounds %struct.insn, %struct.insn* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %62

37:                                               ; preds = %23
  %38 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %39 = load %struct.insn*, %struct.insn** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @add_to_group(%struct.gen_opcode* %38, %struct.insn* %39, i32 %40)
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %43 = load %struct.insn*, %struct.insn** %4, align 8
  %44 = getelementptr inbounds %struct.insn, %struct.insn* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @strncmp(i8* %42, i32 %45, i32 2)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %50 = load %struct.insn*, %struct.insn** %4, align 8
  %51 = getelementptr inbounds %struct.insn, %struct.insn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memcpy(i8* %49, i32 %52, i32 2)
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %48, %37
  %57 = load %struct.insn*, %struct.insn** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @print_opcode(%struct.insn* %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %56, %36
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %17

65:                                               ; preds = %17
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %97, %65
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %70 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %75 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %74, i32 0, i32 1
  %76 = load %struct.insn*, %struct.insn** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.insn, %struct.insn* %76, i64 %78
  store %struct.insn* %79, %struct.insn** %4, align 8
  %80 = load %struct.insn*, %struct.insn** %4, align 8
  %81 = getelementptr inbounds %struct.insn, %struct.insn* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %97

87:                                               ; preds = %73
  %88 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %89 = load %struct.insn*, %struct.insn** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @add_to_group(%struct.gen_opcode* %88, %struct.insn* %89, i32 %90)
  %92 = load %struct.insn*, %struct.insn** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @print_opcode(%struct.insn* %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %87, %86
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %67

100:                                              ; preds = %67
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qsort(%struct.insn*, i32, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @add_to_group(%struct.gen_opcode*, %struct.insn*, i32) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @print_opcode(%struct.insn*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
