; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/vr41xx/common/extr_icu.c_set_sysint2_assign.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/vr41xx/common/extr_icu.c_set_sysint2_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@INTASSIGN2 = common dso_local global i32 0, align 4
@INTASSIGN3 = common dso_local global i32 0, align 4
@INTASSIGN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sysint2_assign = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @set_sysint2_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sysint2_assign(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.irq_desc* @irq_to_desc(i32 %10)
  store %struct.irq_desc* %11, %struct.irq_desc** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @SYSINT2_IRQ_TO_PIN(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = call i32 @raw_spin_lock_irq(i32* %15)
  %17 = load i32, i32* @INTASSIGN2, align 4
  %18 = call i32 @icu1_read(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @INTASSIGN3, align 4
  %20 = call i32 @icu1_read(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %128 [
    i32 0, label %22
    i32 1, label %31
    i32 3, label %42
    i32 4, label %53
    i32 5, label %64
    i32 6, label %75
    i32 7, label %84
    i32 8, label %95
    i32 9, label %106
    i32 10, label %117
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* @INTASSIGN_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %134

31:                                               ; preds = %2
  %32 = load i32, i32* @INTASSIGN_MASK, align 4
  %33 = shl i32 %32, 3
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 3
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %134

42:                                               ; preds = %2
  %43 = load i32, i32* @INTASSIGN_MASK, align 4
  %44 = shl i32 %43, 6
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 6
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %134

53:                                               ; preds = %2
  %54 = load i32, i32* @INTASSIGN_MASK, align 4
  %55 = shl i32 %54, 9
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i8, i8* %5, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 9
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %134

64:                                               ; preds = %2
  %65 = load i32, i32* @INTASSIGN_MASK, align 4
  %66 = shl i32 %65, 12
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i8, i8* %5, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 12
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %134

75:                                               ; preds = %2
  %76 = load i32, i32* @INTASSIGN_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i8, i8* %5, align 1
  %81 = zext i8 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %134

84:                                               ; preds = %2
  %85 = load i32, i32* @INTASSIGN_MASK, align 4
  %86 = shl i32 %85, 3
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i8, i8* %5, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 3
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %134

95:                                               ; preds = %2
  %96 = load i32, i32* @INTASSIGN_MASK, align 4
  %97 = shl i32 %96, 6
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i8, i8* %5, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 %102, 6
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %134

106:                                              ; preds = %2
  %107 = load i32, i32* @INTASSIGN_MASK, align 4
  %108 = shl i32 %107, 9
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i8, i8* %5, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %113, 9
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %134

117:                                              ; preds = %2
  %118 = load i32, i32* @INTASSIGN_MASK, align 4
  %119 = shl i32 %118, 12
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, 12
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %134

128:                                              ; preds = %2
  %129 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %130 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %129, i32 0, i32 0
  %131 = call i32 @raw_spin_unlock_irq(i32* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %149

134:                                              ; preds = %117, %106, %95, %84, %75, %64, %53, %42, %31, %22
  %135 = load i8, i8* %5, align 1
  %136 = load i8*, i8** @sysint2_assign, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 %135, i8* %139, align 1
  %140 = load i32, i32* @INTASSIGN2, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @icu1_write(i32 %140, i32 %141)
  %143 = load i32, i32* @INTASSIGN3, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @icu1_write(i32 %143, i32 %144)
  %146 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %147 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %146, i32 0, i32 0
  %148 = call i32 @raw_spin_unlock_irq(i32* %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %134, %128
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @SYSINT2_IRQ_TO_PIN(i32) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @icu1_read(i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @icu1_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
