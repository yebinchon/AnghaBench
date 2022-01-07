; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dis.c_find_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dis.c_find_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_opcode_offset = type { i8, i32, i8, i64, i32 }
%struct.s390_insn = type { i8 }

@opcode_offset = common dso_local global %struct.s390_opcode_offset* null, align 8
@opcode = common dso_local global %struct.s390_insn* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.s390_insn* @find_insn(i8* %0) #0 {
  %2 = alloca %struct.s390_insn*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.s390_opcode_offset*, align 8
  %5 = alloca %struct.s390_insn*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.s390_opcode_offset*, %struct.s390_opcode_offset** @opcode_offset, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.s390_opcode_offset* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.s390_opcode_offset*, %struct.s390_opcode_offset** @opcode_offset, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.s390_opcode_offset, %struct.s390_opcode_offset* %14, i64 %16
  store %struct.s390_opcode_offset* %17, %struct.s390_opcode_offset** %4, align 8
  %18 = load %struct.s390_opcode_offset*, %struct.s390_opcode_offset** %4, align 8
  %19 = getelementptr inbounds %struct.s390_opcode_offset, %struct.s390_opcode_offset* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %32

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %8

32:                                               ; preds = %27, %8
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.s390_opcode_offset*, %struct.s390_opcode_offset** %4, align 8
  %35 = getelementptr inbounds %struct.s390_opcode_offset, %struct.s390_opcode_offset* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load %struct.s390_opcode_offset*, %struct.s390_opcode_offset** %4, align 8
  %42 = getelementptr inbounds %struct.s390_opcode_offset, %struct.s390_opcode_offset* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = and i32 %40, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %6, align 1
  %47 = load %struct.s390_insn*, %struct.s390_insn** @opcode, align 8
  %48 = load %struct.s390_opcode_offset*, %struct.s390_opcode_offset** %4, align 8
  %49 = getelementptr inbounds %struct.s390_opcode_offset, %struct.s390_opcode_offset* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.s390_insn, %struct.s390_insn* %47, i64 %50
  store %struct.s390_insn* %51, %struct.s390_insn** %5, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %71, %32
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.s390_opcode_offset*, %struct.s390_opcode_offset** %4, align 8
  %55 = getelementptr inbounds %struct.s390_opcode_offset, %struct.s390_opcode_offset* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load %struct.s390_insn*, %struct.s390_insn** %5, align 8
  %60 = getelementptr inbounds %struct.s390_insn, %struct.s390_insn* %59, i32 0, i32 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load %struct.s390_insn*, %struct.s390_insn** %5, align 8
  store %struct.s390_insn* %67, %struct.s390_insn** %2, align 8
  br label %75

68:                                               ; preds = %58
  %69 = load %struct.s390_insn*, %struct.s390_insn** %5, align 8
  %70 = getelementptr inbounds %struct.s390_insn, %struct.s390_insn* %69, i32 1
  store %struct.s390_insn* %70, %struct.s390_insn** %5, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %52

74:                                               ; preds = %52
  store %struct.s390_insn* null, %struct.s390_insn** %2, align 8
  br label %75

75:                                               ; preds = %74, %66
  %76 = load %struct.s390_insn*, %struct.s390_insn** %2, align 8
  ret %struct.s390_insn* %76
}

declare dso_local i32 @ARRAY_SIZE(%struct.s390_opcode_offset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
