; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_pc1_encrypt.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_pc1_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc1_ctx = type { i32, i32, i32, i32, i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.pc1_ctx*, i16)* @pc1_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @pc1_encrypt(%struct.pc1_ctx* %0, i16 signext %1) #0 {
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
  %19 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %19, i32 0, i32 3
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %49, %2
  %22 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 15
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %27, i32 0, i32 4
  %29 = load i16*, i16** %28, align 8
  %30 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %29, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = load i16, i16* %4, align 2
  %38 = sext i16 %37 to i32
  %39 = xor i32 %36, %38
  %40 = trunc i32 %39 to i16
  %41 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %41, i32 0, i32 4
  %43 = load i16*, i16** %42, align 8
  %44 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %43, i64 %47
  store i16 %40, i16* %48, align 2
  br label %49

49:                                               ; preds = %26
  %50 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i16, i16* %4, align 2
  %56 = sext i16 %55 to i32
  %57 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pc1_ctx*, %struct.pc1_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = xor i32 %59, %62
  %64 = xor i32 %56, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %4, align 2
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
