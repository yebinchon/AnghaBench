; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_setup_64.c_cpucap_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_setup_64.c_cpucap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@sparc64_elf_hwcap = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"cpucaps\09\09: \00", align 1
@hwcaps = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HWCAP_SPARC_CRYPTO = common dso_local global i64 0, align 8
@crypto_hwcaps = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpucap_info(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %9 = load i64, i64* @sparc64_elf_hwcap, align 8
  store i64 %9, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %11 = call i32 @seq_puts(%struct.seq_file* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %47, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i64*, i64** @hwcaps, align 8
  %15 = call i32 @ARRAY_SIZE(i64* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64*, i64** @hwcaps, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %17
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %38 = load i64*, i64** @hwcaps, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %37, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %32, %27, %17
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %12

50:                                               ; preds = %12
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @HWCAP_SPARC_CRYPTO, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = call i64 asm sideeffect "rd %asr26, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %56, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %85, %55
  %58 = load i32, i32* %4, align 4
  %59 = load i64*, i64** @crypto_hwcaps, align 8
  %60 = call i32 @ARRAY_SIZE(i64* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %62
  %71 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %76 = load i64*, i64** @crypto_hwcaps, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %75, i64 %80)
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %70, %62
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %57

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88, %50
  %90 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %91 = call i32 @seq_putc(%struct.seq_file* %90, i8 signext 10)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 877}
