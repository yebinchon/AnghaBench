; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_to_le_r64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_to_le_r64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_aux = type { i32 }

@IA32_EAX = common dso_local global i32 0, align 4
@dst_lo = common dso_local global i32 0, align 4
@IA32_EDX = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@IA32_EBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32**, %struct.bpf_prog_aux*)* @emit_ia32_to_le_r64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_to_le_r64(i32* %0, i32 %1, i32 %2, i32** %3, %struct.bpf_prog_aux* %4) #0 {
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
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 64
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* @IA32_EBP, align 4
  %40 = load i32, i32* @IA32_EAX, align 4
  %41 = call i32 @add_2reg(i32 64, i32 %39, i32 %40)
  %42 = load i32, i32* @dst_lo, align 4
  %43 = call i32 @STACK_VAR(i32 %42)
  %44 = call i32 @EMIT3(i32 139, i32 %41, i32 %43)
  %45 = load i32, i32* @IA32_EBP, align 4
  %46 = load i32, i32* @IA32_EDX, align 4
  %47 = call i32 @add_2reg(i32 64, i32 %45, i32 %46)
  %48 = load i32, i32* @dst_hi, align 4
  %49 = call i32 @STACK_VAR(i32 %48)
  %50 = call i32 @EMIT3(i32 139, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %38, %35, %31
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %81 [
    i32 16, label %53
    i32 32, label %69
    i32 64, label %80
  ]

53:                                               ; preds = %51
  %54 = call i32 @EMIT2(i32 15, i32 183)
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @add_2reg(i32 192, i32 %55, i32 %56)
  %58 = call i32 @EMIT1(i32 %57)
  %59 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %10, align 8
  %60 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @add_2reg(i32 192, i32 %64, i32 %65)
  %67 = call i32 @EMIT2(i32 51, i32 %66)
  br label %68

68:                                               ; preds = %63, %53
  br label %81

69:                                               ; preds = %51
  %70 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %10, align 8
  %71 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @add_2reg(i32 192, i32 %75, i32 %76)
  %78 = call i32 @EMIT2(i32 51, i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %81

80:                                               ; preds = %51
  br label %81

81:                                               ; preds = %51, %80, %79, %68
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 64
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i32, i32* @IA32_EBP, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @add_2reg(i32 64, i32 %88, i32 %89)
  %91 = load i32, i32* @dst_lo, align 4
  %92 = call i32 @STACK_VAR(i32 %91)
  %93 = call i32 @EMIT3(i32 137, i32 %90, i32 %92)
  %94 = load i32, i32* @IA32_EBP, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @add_2reg(i32 64, i32 %94, i32 %95)
  %97 = load i32, i32* @dst_hi, align 4
  %98 = call i32 @STACK_VAR(i32 %97)
  %99 = call i32 @EMIT3(i32 137, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %87, %84, %81
  %101 = load i32*, i32** %11, align 8
  %102 = load i32**, i32*** %9, align 8
  store i32* %101, i32** %102, align 8
  ret void
}

declare dso_local i32 @EMIT3(i32, i32, i32) #1

declare dso_local i32 @add_2reg(i32, i32, i32) #1

declare dso_local i32 @STACK_VAR(i32) #1

declare dso_local i32 @EMIT2(i32, i32) #1

declare dso_local i32 @EMIT1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
