; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pf_in.c_get_ins_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pf_in.c_get_ins_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prefix_bits = type { i32 }

@OTHERS = common dso_local global i32 0, align 4
@reg_rop = common dso_local global i32 0, align 4
@REG_READ = common dso_local global i32 0, align 4
@reg_wop = common dso_local global i32 0, align 4
@REG_WRITE = common dso_local global i32 0, align 4
@imm_wop = common dso_local global i32 0, align 4
@IMM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ins_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.prefix_bits, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @OTHERS, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @skip_prefix(i8* %11, %struct.prefix_bits* %5)
  %13 = load i8*, i8** %4, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @get_opcode(i8* %16, i32* %3)
  %18 = load i8*, i8** %4, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @reg_rop, align 4
  %23 = load i32, i32* @REG_READ, align 4
  %24 = call i32 @CHECK_OP_TYPE(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @reg_wop, align 4
  %27 = load i32, i32* @REG_WRITE, align 4
  %28 = call i32 @CHECK_OP_TYPE(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @imm_wop, align 4
  %31 = load i32, i32* @IMM_WRITE, align 4
  %32 = call i32 @CHECK_OP_TYPE(i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @skip_prefix(i8*, %struct.prefix_bits*) #1

declare dso_local i32 @get_opcode(i8*, i32*) #1

declare dso_local i32 @CHECK_OP_TYPE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
