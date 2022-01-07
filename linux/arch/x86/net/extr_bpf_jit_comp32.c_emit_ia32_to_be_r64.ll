; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_to_be_r64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_to_be_r64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_aux = type { i32 }

@IA32_EAX = common dso_local global i32 0, align 4
@dst_lo = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@IA32_ECX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32**, %struct.bpf_prog_aux*)* @emit_ia32_to_be_r64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_to_be_r64(i32* %0, i32 %1, i32 %2, i32** %3, %struct.bpf_prog_aux* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.bpf_prog_aux*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store %struct.bpf_prog_aux* %4, %struct.bpf_prog_aux** %10, align 8
  %15 = load i32**, i32*** %9, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @IA32_EAX, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @dst_lo, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @IA32_EDX, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @dst_hi, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* @IA32_EBP, align 4
  %37 = load i32, i32* @IA32_EAX, align 4
  %38 = call i32 @add_2reg(i32 64, i32 %36, i32 %37)
  %39 = load i32, i32* @dst_lo, align 4
  %40 = call i32 @STACK_VAR(i32 %39)
  %41 = call i32 @EMIT3(i32 139, i32 %38, i32 %40)
  %42 = load i32, i32* @IA32_EBP, align 4
  %43 = load i32, i32* @IA32_EDX, align 4
  %44 = call i32 @add_2reg(i32 64, i32 %42, i32 %43)
  %45 = load i32, i32* @dst_hi, align 4
  %46 = call i32 @STACK_VAR(i32 %45)
  %47 = call i32 @EMIT3(i32 139, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %35, %31
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %106 [
    i32 16, label %50
    i32 32, label %70
    i32 64, label %85
  ]

50:                                               ; preds = %48
  %51 = call i32 @EMIT1(i32 102)
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @add_1reg(i32 200, i32 %52)
  %54 = call i32 @EMIT3(i32 193, i32 %53, i32 8)
  %55 = call i32 @EMIT2(i32 15, i32 183)
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @add_2reg(i32 192, i32 %56, i32 %57)
  %59 = call i32 @EMIT1(i32 %58)
  %60 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %10, align 8
  %61 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @add_2reg(i32 192, i32 %65, i32 %66)
  %68 = call i32 @EMIT2(i32 51, i32 %67)
  br label %69

69:                                               ; preds = %64, %50
  br label %106

70:                                               ; preds = %48
  %71 = call i32 @EMIT1(i32 15)
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @add_1reg(i32 200, i32 %72)
  %74 = call i32 @EMIT1(i32 %73)
  %75 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %10, align 8
  %76 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @add_2reg(i32 192, i32 %80, i32 %81)
  %83 = call i32 @EMIT2(i32 51, i32 %82)
  br label %84

84:                                               ; preds = %79, %70
  br label %106

85:                                               ; preds = %48
  %86 = call i32 @EMIT1(i32 15)
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @add_1reg(i32 200, i32 %87)
  %89 = call i32 @EMIT1(i32 %88)
  %90 = call i32 @EMIT1(i32 15)
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @add_1reg(i32 200, i32 %91)
  %93 = call i32 @EMIT1(i32 %92)
  %94 = load i32, i32* @IA32_ECX, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @add_2reg(i32 192, i32 %94, i32 %95)
  %97 = call i32 @EMIT2(i32 137, i32 %96)
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @add_2reg(i32 192, i32 %98, i32 %99)
  %101 = call i32 @EMIT2(i32 137, i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @IA32_ECX, align 4
  %104 = call i32 @add_2reg(i32 192, i32 %102, i32 %103)
  %105 = call i32 @EMIT2(i32 137, i32 %104)
  br label %106

106:                                              ; preds = %48, %85, %84, %69
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i32, i32* @IA32_EBP, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @add_2reg(i32 64, i32 %110, i32 %111)
  %113 = load i32, i32* @dst_lo, align 4
  %114 = call i32 @STACK_VAR(i32 %113)
  %115 = call i32 @EMIT3(i32 137, i32 %112, i32 %114)
  %116 = load i32, i32* @IA32_EBP, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @add_2reg(i32 64, i32 %116, i32 %117)
  %119 = load i32, i32* @dst_hi, align 4
  %120 = call i32 @STACK_VAR(i32 %119)
  %121 = call i32 @EMIT3(i32 137, i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %109, %106
  %123 = load i32*, i32** %11, align 8
  %124 = load i32**, i32*** %9, align 8
  store i32* %123, i32** %124, align 8
  ret void
}

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i32 @EMIT1(i32) #1

declare dso_local i32 @add_1reg(i32, i32) #1

declare dso_local i32 @EMIT2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
