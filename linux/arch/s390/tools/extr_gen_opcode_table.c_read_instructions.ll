; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_read_instructions.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_read_instructions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_opcode = type { i32, %struct.insn* }
%struct.insn = type { i32, i64*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@EOF = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gen_opcode*)* @read_instructions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_instructions(%struct.gen_opcode* %0) #0 {
  %2 = alloca %struct.gen_opcode*, align 8
  %3 = alloca %struct.insn, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gen_opcode* %0, %struct.gen_opcode** %2, align 8
  br label %6

6:                                                ; preds = %1, %79
  %7 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @scanf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8, i64* %10, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  br label %91

18:                                               ; preds = %6
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @exit(i32 %22) #4
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @insn_format_to_type(i32 %26)
  %28 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = call i32 @strlen(i64* %30)
  %32 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %52, %24
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %34, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i8
  %46 = call i32 @toupper(i8 zeroext %45)
  %47 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %46, i32* %51, align 4
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %57 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %61 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %60, i32 0, i32 1
  %62 = load %struct.insn*, %struct.insn** %61, align 8
  %63 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %64 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 40
  %68 = trunc i64 %67 to i32
  %69 = call %struct.insn* @realloc(%struct.insn* %62, i32 %68)
  %70 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %71 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %70, i32 0, i32 1
  store %struct.insn* %69, %struct.insn** %71, align 8
  %72 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %73 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %72, i32 0, i32 1
  %74 = load %struct.insn*, %struct.insn** %73, align 8
  %75 = icmp ne %struct.insn* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %55
  %77 = load i32, i32* @EXIT_FAILURE, align 4
  %78 = call i32 @exit(i32 %77) #4
  unreachable

79:                                               ; preds = %55
  %80 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %81 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %80, i32 0, i32 1
  %82 = load %struct.insn*, %struct.insn** %81, align 8
  %83 = load %struct.gen_opcode*, %struct.gen_opcode** %2, align 8
  %84 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.insn, %struct.insn* %82, i64 %87
  %89 = bitcast %struct.insn* %88 to i8*
  %90 = bitcast %struct.insn* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 40, i1 false)
  br label %6

91:                                               ; preds = %17
  ret void
}

declare dso_local i32 @scanf(i8*, i32, i64*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @insn_format_to_type(i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @toupper(i8 zeroext) #1

declare dso_local %struct.insn* @realloc(%struct.insn*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
