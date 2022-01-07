; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_..kernelmachine_kexec_reloc.c_arch_kexec_do_relocs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_..kernelmachine_kexec_reloc.c_arch_kexec_do_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_kexec_do_relocs(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %106 [
    i32 134, label %11
    i32 136, label %12
    i32 141, label %16
    i32 140, label %29
    i32 139, label %34
    i32 138, label %57
    i32 137, label %62
    i32 135, label %62
    i32 133, label %66
    i32 132, label %73
    i32 130, label %81
    i32 131, label %89
    i32 129, label %96
    i32 128, label %102
  ]

11:                                               ; preds = %4
  br label %107

12:                                               ; preds = %4
  %13 = load i64, i64* %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i64*
  store i64 %13, i64* %15, align 8
  br label %107

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 61440
  store i32 %20, i32* %18, align 4
  %21 = load i64, i64* %8, align 8
  %22 = and i64 %21, 4095
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = or i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  br label %107

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %107

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -268435201
  store i32 %38, i32* %36, align 4
  %39 = load i64, i64* %8, align 8
  %40 = and i64 %39, 4095
  %41 = shl i64 %40, 16
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = or i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load i64, i64* %8, align 8
  %49 = and i64 %48, 1044480
  %50 = lshr i64 %49, 4
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = or i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  br label %107

57:                                               ; preds = %4
  %58 = load i64, i64* %8, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i8*, i8** %7, align 8
  %61 = bitcast i8* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %107

62:                                               ; preds = %4, %4
  %63 = load i64, i64* %8, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = bitcast i8* %64 to i64*
  store i64 %63, i64* %65, align 8
  br label %107

66:                                               ; preds = %4
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load i8*, i8** %7, align 8
  %72 = bitcast i8* %71 to i32*
  store i32 %70, i32* %72, align 4
  br label %107

73:                                               ; preds = %4
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %74, %75
  %77 = lshr i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = load i8*, i8** %7, align 8
  %80 = bitcast i8* %79 to i32*
  store i32 %78, i32* %80, align 4
  br label %107

81:                                               ; preds = %4
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub i64 %82, %83
  %85 = lshr i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = load i8*, i8** %7, align 8
  %88 = bitcast i8* %87 to i32*
  store i32 %86, i32* %88, align 4
  br label %107

89:                                               ; preds = %4
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load i8*, i8** %7, align 8
  %95 = bitcast i8* %94 to i32*
  store i32 %93, i32* %95, align 4
  br label %107

96:                                               ; preds = %4
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = sub i64 %97, %98
  %100 = load i8*, i8** %7, align 8
  %101 = bitcast i8* %100 to i64*
  store i64 %99, i64* %101, align 8
  br label %107

102:                                              ; preds = %4
  %103 = load i64, i64* %8, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = bitcast i8* %104 to i64*
  store i64 %103, i64* %105, align 8
  br label %107

106:                                              ; preds = %4
  store i32 1, i32* %5, align 4
  br label %108

107:                                              ; preds = %102, %96, %89, %81, %73, %66, %62, %57, %34, %29, %16, %12, %11
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
