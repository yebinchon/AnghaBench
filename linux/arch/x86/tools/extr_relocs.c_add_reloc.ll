; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_add_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_add_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.relocs = type { i32, i32, i32* }

@.str = private unnamed_addr constant [42 x i8] c"realloc of %ld entries for relocs failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.relocs*, i32)* @add_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_reloc(%struct.relocs* %0, i32 %1) #0 {
  %3 = alloca %struct.relocs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.relocs* %0, %struct.relocs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.relocs*, %struct.relocs** %3, align 8
  %8 = getelementptr inbounds %struct.relocs, %struct.relocs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.relocs*, %struct.relocs** %3, align 8
  %11 = getelementptr inbounds %struct.relocs, %struct.relocs* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.relocs*, %struct.relocs** %3, align 8
  %16 = getelementptr inbounds %struct.relocs, %struct.relocs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 50000
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load %struct.relocs*, %struct.relocs** %3, align 8
  %21 = getelementptr inbounds %struct.relocs, %struct.relocs* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = mul i64 %23, 4
  %25 = call i8* @realloc(i32* %22, i64 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %28, %14
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.relocs*, %struct.relocs** %3, align 8
  %35 = getelementptr inbounds %struct.relocs, %struct.relocs* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.relocs*, %struct.relocs** %3, align 8
  %39 = getelementptr inbounds %struct.relocs, %struct.relocs* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %2
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.relocs*, %struct.relocs** %3, align 8
  %43 = getelementptr inbounds %struct.relocs, %struct.relocs* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.relocs*, %struct.relocs** %3, align 8
  %46 = getelementptr inbounds %struct.relocs, %struct.relocs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  store i32 %41, i32* %50, align 4
  ret void
}

declare dso_local i8* @realloc(i32*, i64) #1

declare dso_local i32 @die(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
