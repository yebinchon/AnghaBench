; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vecemu.c_eexp2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vecemu.c_eexp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exp2s = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @eexp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eexp2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = lshr i32 %8, 23
  %10 = and i32 %9, 255
  %11 = sub i32 %10, 127
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 7
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 8388607
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, 4194304
  store i32 %23, i32* %2, align 4
  br label %102

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, -2147483648
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 2139095040
  store i32 %29, i32* %2, align 4
  br label %102

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, -23
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1065353216, i32* %2, align 4
  br label %102

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 8388607
  %37 = or i32 %36, 8388608
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 0, %45
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, -2147483648
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, 23
  %59 = add nsw i32 %58, 126
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 254
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 2139095040, i32* %2, align 4
  br label %102

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, -23
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %102

67:                                               ; preds = %63
  %68 = load i32*, i32** @exp2s, align 8
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %69, 20
  %71 = and i32 %70, 7
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = shl i32 %75, 12
  %77 = call i32 asm "mulhwu $0,$1,$2", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %76, i32 388727807) #1, !srcloc !2
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 asm "mulhwu $0,$1,$2", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %78, i32 %79) #1, !srcloc !3
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %67
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %4, align 4
  %89 = shl i32 %88, 23
  %90 = add i32 %87, %89
  store i32 %90, i32* %2, align 4
  br label %102

91:                                               ; preds = %67
  %92 = load i32, i32* %4, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %94, 1
  %96 = shl i32 1, %95
  %97 = load i32, i32* %6, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %4, align 4
  %101 = lshr i32 %99, %100
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %91, %86, %66, %62, %33, %24, %21
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 721}
!3 = !{i32 801}
