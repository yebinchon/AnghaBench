; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_alternative.c_text_poke_bp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_alternative.c_text_poke_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_poke_loc = type { i8*, i8*, i64, i64 }

@POKE_MAX_OPCODE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"len is larger than %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @text_poke_bp(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.text_poke_loc, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %9, i32 0, i32 0
  %11 = load i8*, i8** %8, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %9, i32 0, i32 1
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %9, i32 0, i32 2
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %9, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @POKE_MAX_OPCODE_SIZE, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @POKE_MAX_OPCODE_SIZE, align 8
  %22 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %31

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %9, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @memcpy(i8* %26, i8* %27, i64 %28)
  %30 = call i32 @text_poke_bp_batch(%struct.text_poke_loc* %9, i32 1)
  br label %31

31:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @text_poke_bp_batch(%struct.text_poke_loc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
