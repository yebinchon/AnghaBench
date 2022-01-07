; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_sparc_assemble.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_sparc_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_opcode = type { i32, float*, i32* }

@sparc_opcodes = common dso_local global %struct.sparc_opcode* null, align 8
@ARG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @sparc_assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_assemble(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sparc_opcode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load %struct.sparc_opcode*, %struct.sparc_opcode** @sparc_opcodes, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sparc_opcode, %struct.sparc_opcode* %13, i64 %15
  store %struct.sparc_opcode* %16, %struct.sparc_opcode** %7, align 8
  %17 = load %struct.sparc_opcode*, %struct.sparc_opcode** %7, align 8
  %18 = getelementptr inbounds %struct.sparc_opcode, %struct.sparc_opcode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sparc_opcode*, %struct.sparc_opcode** %7, align 8
  %21 = getelementptr inbounds %struct.sparc_opcode, %struct.sparc_opcode* %20, i32 0, i32 1
  %22 = load float*, float** %21, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = fcmp oeq float %24, 1.020000e+02
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load %struct.sparc_opcode*, %struct.sparc_opcode** %7, align 8
  %31 = getelementptr inbounds %struct.sparc_opcode, %struct.sparc_opcode* %30, i32 0, i32 1
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  %34 = load float, float* %33, align 4
  %35 = fcmp oeq float %34, 1.020000e+02
  br label %36

36:                                               ; preds = %29, %3
  %37 = phi i1 [ true, %3 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %118, %36
  %40 = load %struct.sparc_opcode*, %struct.sparc_opcode** %7, align 8
  %41 = getelementptr inbounds %struct.sparc_opcode, %struct.sparc_opcode* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ARG_NONE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %121

49:                                               ; preds = %39
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.sparc_opcode*, %struct.sparc_opcode** %7, align 8
  %56 = getelementptr inbounds %struct.sparc_opcode, %struct.sparc_opcode* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %117 [
    i32 131, label %62
    i32 130, label %67
    i32 132, label %72
    i32 129, label %77
    i32 134, label %85
    i32 133, label %93
    i32 135, label %101
    i32 128, label %109
  ]

62:                                               ; preds = %49
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @RS1(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %117

67:                                               ; preds = %49
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @RS2(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %117

72:                                               ; preds = %49
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @RD(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %117

77:                                               ; preds = %49
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @SIMM13(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @vimm(i32 %82, i32 13, i32 0, i32 1, i32 %83)
  br label %117

85:                                               ; preds = %49
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @DISP30(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @vimm(i32 %90, i32 30, i32 0, i32 1, i32 %91)
  br label %117

93:                                               ; preds = %49
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @IMM22(i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @vimm(i32 %98, i32 22, i32 0, i32 0, i32 %99)
  br label %117

101:                                              ; preds = %49
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @DISP22(i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @vimm(i32 %106, i32 22, i32 0, i32 1, i32 %107)
  br label %117

109:                                              ; preds = %49
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @SWTRAP(i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @vimm(i32 %114, i32 7, i32 0, i32 0, i32 %115)
  br label %117

117:                                              ; preds = %49, %109, %101, %93, %85, %77, %72, %67, %62
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %39

121:                                              ; preds = %39
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @RS2(i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i32 @SIMM13(i32) #1

declare dso_local i32 @vimm(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DISP30(i32) #1

declare dso_local i32 @IMM22(i32) #1

declare dso_local i32 @DISP22(i32) #1

declare dso_local i32 @SWTRAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
