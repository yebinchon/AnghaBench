; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_pc1_decrypt.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_pc1_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc1_ctx = type { i32, i32, i32, i32, i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.pc1_ctx*, i16)* @pc1_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @pc1_decrypt(%struct.pc1_ctx* %0, i16 signext %1) #0 {
  %3 = alloca %struct.pc1_ctx*, align 8
  %4 = alloca i16, align 2
  store %struct.pc1_ctx* %0, %struct.pc1_ctx** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %6 = call i32 @pc1_assemble(%struct.pc1_ctx* %5)
  %7 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 8
  %11 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  %17 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i16, i16* %4, align 2
  %20 = sext i16 %19 to i32
  %21 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = xor i32 %23, %26
  %28 = xor i32 %20, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %4, align 2
  %30 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %30, i32 0, i32 3
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %60, %2
  %33 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 15
  br i1 %36, label %37, label %65

37:                                               ; preds = %32
  %38 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %38, i32 0, i32 4
  %40 = load i16*, i16** %39, align 8
  %41 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %40, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = load i16, i16* %4, align 2
  %49 = sext i16 %48 to i32
  %50 = xor i32 %47, %49
  %51 = trunc i32 %50 to i16
  %52 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %52, i32 0, i32 4
  %54 = load i16*, i16** %53, align 8
  %55 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %54, i64 %58
  store i16 %51, i16* %59, align 2
  br label %60

60:                                               ; preds = %37
  %61 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load i16, i16* %4, align 2
  %67 = trunc i16 %66 to i8
  ret i8 %67
}

declare dso_local i32 @pc1_assemble(%struct.pc1_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
