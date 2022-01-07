; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_module.c_apply_rela_bits.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_module.c_apply_rela_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, i32)* @apply_rela_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_rela_bits(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %11, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = sub i64 %18, 1
  %20 = and i64 %15, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOEXEC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %145

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = ashr i64 %29, %31
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %13, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = shl i64 1, %40
  %42 = sub nsw i64 %41, 1
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %28
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %28
  %51 = load i32, i32* @ENOEXEC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %145

53:                                               ; preds = %46
  br label %72

54:                                               ; preds = %25
  %55 = load i32, i32* %11, align 4
  %56 = load i64, i64* %8, align 8
  %57 = zext i32 %55 to i64
  %58 = lshr i64 %56, %57
  store i64 %58, i64* %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = shl i64 1, %61
  %63 = shl i64 %62, 1
  %64 = sub i64 %63, 1
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load i32, i32* @ENOEXEC, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %145

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i64, i64* %8, align 8
  %77 = trunc i64 %76 to i8
  %78 = load i64, i64* %7, align 8
  %79 = inttoptr i64 %78 to i8*
  store i8 %77, i8* %79, align 1
  br label %144

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 12
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = and i64 %84, 4095
  %86 = load i64, i64* %7, align 8
  %87 = inttoptr i64 %86 to i16*
  %88 = load i16, i16* %87, align 2
  %89 = zext i16 %88 to i32
  %90 = and i32 %89, 61440
  %91 = sext i32 %90 to i64
  %92 = or i64 %85, %91
  %93 = trunc i64 %92 to i16
  %94 = load i64, i64* %7, align 8
  %95 = inttoptr i64 %94 to i16*
  store i16 %93, i16* %95, align 2
  br label %143

96:                                               ; preds = %80
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i64, i64* %8, align 8
  %101 = trunc i64 %100 to i16
  %102 = load i64, i64* %7, align 8
  %103 = inttoptr i64 %102 to i16*
  store i16 %101, i16* %103, align 2
  br label %142

104:                                              ; preds = %96
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 20
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load i64, i64* %8, align 8
  %109 = and i64 %108, 4095
  %110 = shl i64 %109, 16
  %111 = load i64, i64* %8, align 8
  %112 = and i64 %111, 1044480
  %113 = lshr i64 %112, 4
  %114 = or i64 %110, %113
  %115 = load i64, i64* %7, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, -268435201
  %119 = zext i32 %118 to i64
  %120 = or i64 %114, %119
  %121 = trunc i64 %120 to i32
  %122 = load i64, i64* %7, align 8
  %123 = inttoptr i64 %122 to i32*
  store i32 %121, i32* %123, align 4
  br label %141

124:                                              ; preds = %104
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %125, 32
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i64, i64* %8, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i64, i64* %7, align 8
  %131 = inttoptr i64 %130 to i32*
  store i32 %129, i32* %131, align 4
  br label %140

132:                                              ; preds = %124
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 64
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %7, align 8
  %138 = inttoptr i64 %137 to i64*
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %132
  br label %140

140:                                              ; preds = %139, %127
  br label %141

141:                                              ; preds = %140, %107
  br label %142

142:                                              ; preds = %141, %99
  br label %143

143:                                              ; preds = %142, %83
  br label %144

144:                                              ; preds = %143, %75
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %68, %50, %22
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
