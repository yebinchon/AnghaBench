; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vecemu.c_elog2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vecemu.c_elog2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @elog2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elog2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 2139095040
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 8388607
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 2139095040
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, 4194304
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %2, align 4
  br label %122

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -8388608, i32* %2, align 4
  br label %122

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = call i32 asm "cntlzw $0,$1", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %32) #1, !srcloc !2
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 8
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 -118, %38
  %40 = shl i32 %39, 23
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %28
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, 8388608
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 1065353216
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %31
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 11863283
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, 4194304
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 asm "mulhwu $0,$1,$2", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %52, i32 -1257966796) #1, !srcloc !3
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 9975792
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, 2097152
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 asm "mulhwu $0,$1,$2", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %60, i32 -683344693) #1, !srcloc !4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %5, align 4
  %64 = icmp sge i32 %63, 9147842
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, 1048576
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 asm "mulhwu $0,$1,$2", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %68, i32 -356464920) #1, !srcloc !5
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %71, 8388608
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 %74, 8388608
  %76 = shl i32 %75, 1
  %77 = call i32 asm "mulhwu $0,$1,$2", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(i32 %76, i32 -1329083078) #1, !srcloc !6
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %73, %70
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, -2147483648
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %120

86:                                               ; preds = %81
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %4, align 4
  %94 = call i32 asm "cntlzw $0,$1", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %93) #1, !srcloc !7
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 8, %95
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %4, align 4
  %102 = ashr i32 %101, %100
  store i32 %102, i32* %4, align 4
  br label %112

103:                                              ; preds = %92
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = sub nsw i32 0, %107
  %109 = load i32, i32* %4, align 4
  %110 = shl i32 %109, %108
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %106, %103
  br label %112

112:                                              ; preds = %111, %99
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 126
  %115 = shl i32 %114, 23
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %3, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %112, %81
  %121 = load i32, i32* %3, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %27, %20
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 417}
!3 = !{i32 609}
!4 = !{i32 733}
!5 = !{i32 857}
!6 = !{i32 963}
!7 = !{i32 1140}
