; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_alu_r.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_alu_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA32_EAX = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32**)* @emit_ia32_alu_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_alu_r(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32** %7, i32*** %16, align 8
  %21 = load i32**, i32*** %16, align 8
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %8
  %26 = load i32, i32* @IA32_EAX, align 4
  br label %29

27:                                               ; preds = %8
  %28 = load i32, i32* %13, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @IA32_EDX, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* @IA32_EBP, align 4
  %43 = load i32, i32* @IA32_EAX, align 4
  %44 = call i32 @add_2reg(i32 64, i32 %42, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @STACK_VAR(i32 %45)
  %47 = call i32 @EMIT3(i32 139, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* @IA32_EBP, align 4
  %53 = load i32, i32* @IA32_EDX, align 4
  %54 = call i32 @add_2reg(i32 64, i32 %52, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @STACK_VAR(i32 %55)
  %57 = call i32 @EMIT3(i32 139, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @BPF_OP(i32 %59)
  switch i32 %60, label %110 [
    i32 132, label %61
    i32 129, label %78
    i32 130, label %95
    i32 131, label %100
    i32 128, label %105
  ]

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @add_2reg(i32 192, i32 %68, i32 %69)
  %71 = call i32 @EMIT2(i32 17, i32 %70)
  br label %77

72:                                               ; preds = %64, %61
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @add_2reg(i32 192, i32 %73, i32 %74)
  %76 = call i32 @EMIT2(i32 1, i32 %75)
  br label %77

77:                                               ; preds = %72, %67
  br label %110

78:                                               ; preds = %58
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @add_2reg(i32 192, i32 %85, i32 %86)
  %88 = call i32 @EMIT2(i32 25, i32 %87)
  br label %94

89:                                               ; preds = %81, %78
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %19, align 4
  %92 = call i32 @add_2reg(i32 192, i32 %90, i32 %91)
  %93 = call i32 @EMIT2(i32 41, i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  br label %110

95:                                               ; preds = %58
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @add_2reg(i32 192, i32 %96, i32 %97)
  %99 = call i32 @EMIT2(i32 9, i32 %98)
  br label %110

100:                                              ; preds = %58
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @add_2reg(i32 192, i32 %101, i32 %102)
  %104 = call i32 @EMIT2(i32 33, i32 %103)
  br label %110

105:                                              ; preds = %58
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %19, align 4
  %108 = call i32 @add_2reg(i32 192, i32 %106, i32 %107)
  %109 = call i32 @EMIT2(i32 49, i32 %108)
  br label %110

110:                                              ; preds = %58, %105, %100, %95, %94, %77
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32, i32* @IA32_EBP, align 4
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @add_2reg(i32 64, i32 %114, i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @STACK_VAR(i32 %117)
  %119 = call i32 @EMIT3(i32 137, i32 %116, i32 %118)
  br label %120

120:                                              ; preds = %113, %110
  %121 = load i32*, i32** %17, align 8
  %122 = load i32**, i32*** %16, align 8
  store i32* %121, i32** %122, align 8
  ret void
}

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i32 @BPF_OP(i32) #1

declare dso_local i32 @EMIT2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
