; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_emit_a64_mov_i64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_emit_a64_mov_i64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.jit_ctx*)* @emit_a64_mov_i64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a64_mov_i64(i32 %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = xor i32 %12, -1
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  call void @emit_a64_mov_i(i32 0, i32 %18, i32 %19, %struct.jit_ctx* %20)
  br label %93

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @i64_i16_blocks(i32 %22, i32 1)
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @i64_i16_blocks(i32 %24, i32 0)
  %26 = icmp slt i64 %23, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @fls64(i32 %31)
  %33 = sub nsw i32 %32, 1
  br label %38

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @fls64(i32 %35)
  %37 = sub nsw i32 %36, 1
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  %40 = call i32 @round_down(i32 %39, i32 16)
  %41 = call i32 @max(i32 %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = ashr i32 %46, %47
  %49 = and i32 %48, 65535
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @A64_MOVN(i32 1, i32 %45, i32 %49, i32 %50)
  %52 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %53 = call i32 @emit(i32 %51, %struct.jit_ctx* %52)
  br label %64

54:                                               ; preds = %38
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 65535
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @A64_MOVZ(i32 1, i32 %55, i32 %59, i32 %60)
  %62 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %63 = call i32 @emit(i32 %61, %struct.jit_ctx* %62)
  br label %64

64:                                               ; preds = %54, %44
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 16
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %90, %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %71, %72
  %74 = and i32 %73, 65535
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 65535, i32 0
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %10, align 4
  %84 = ashr i32 %82, %83
  %85 = and i32 %84, 65535
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @A64_MOVK(i32 1, i32 %81, i32 %85, i32 %86)
  %88 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %89 = call i32 @emit(i32 %87, %struct.jit_ctx* %88)
  br label %90

90:                                               ; preds = %80, %70
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 16
  store i32 %92, i32* %10, align 4
  br label %67

93:                                               ; preds = %17, %67
  ret void
}

declare dso_local void @emit_a64_mov_i(i32, i32, i32, %struct.jit_ctx*) #1

declare dso_local i64 @i64_i16_blocks(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @fls64(i32) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @A64_MOVN(i32, i32, i32, i32) #1

declare dso_local i32 @A64_MOVZ(i32, i32, i32, i32) #1

declare dso_local i32 @A64_MOVK(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
