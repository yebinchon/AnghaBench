; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_add_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/tools/extr_relocs.c_add_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.relocs = type { i32, i32, i32* }

@.str = private unnamed_addr constant [51 x i8] c"Kernel image exceeds maximum size for relocation!\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"realloc failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.relocs*, i32, i32)* @add_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_reloc(%struct.relocs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.relocs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.relocs* %0, %struct.relocs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 2
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 16777215
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 16777215
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 255
  %20 = shl i32 %19, 24
  %21 = or i32 %17, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.relocs*, %struct.relocs** %4, align 8
  %23 = getelementptr inbounds %struct.relocs, %struct.relocs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.relocs*, %struct.relocs** %4, align 8
  %26 = getelementptr inbounds %struct.relocs, %struct.relocs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %15
  %30 = load %struct.relocs*, %struct.relocs** %4, align 8
  %31 = getelementptr inbounds %struct.relocs, %struct.relocs* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 50000
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load %struct.relocs*, %struct.relocs** %4, align 8
  %36 = getelementptr inbounds %struct.relocs, %struct.relocs* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = mul i64 %38, 4
  %40 = call i8* @realloc(i32* %37, i64 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %29
  %44 = call i32 @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %29
  %46 = load i8*, i8** %8, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.relocs*, %struct.relocs** %4, align 8
  %49 = getelementptr inbounds %struct.relocs, %struct.relocs* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.relocs*, %struct.relocs** %4, align 8
  %53 = getelementptr inbounds %struct.relocs, %struct.relocs* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %15
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.relocs*, %struct.relocs** %4, align 8
  %57 = getelementptr inbounds %struct.relocs, %struct.relocs* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.relocs*, %struct.relocs** %4, align 8
  %60 = getelementptr inbounds %struct.relocs, %struct.relocs* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32 %55, i32* %64, align 4
  ret void
}

declare dso_local i32 @die(i8*) #1

declare dso_local i8* @realloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
