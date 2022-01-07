; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_misaligned_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_misaligned_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@UM_FIXUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @misaligned_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misaligned_fixup(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %9 = call i32 (...) @unaligned_user_action()
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @UM_FIXUP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %165

15:                                               ; preds = %1
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %20 = call i32 @user_mode(%struct.pt_regs* %19)
  %21 = call i32 @read_opcode(i32 %18, i32* %4, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %165

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 26
  %29 = and i32 %28, 63
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 15
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %154 [
    i32 33, label %34
    i32 44, label %38
    i32 34, label %42
    i32 35, label %46
    i32 41, label %50
    i32 42, label %54
    i32 43, label %58
    i32 16, label %62
    i32 24, label %82
    i32 37, label %98
    i32 38, label %102
    i32 39, label %106
    i32 7, label %110
    i32 45, label %126
    i32 46, label %130
    i32 47, label %134
    i32 15, label %138
  ]

34:                                               ; preds = %26
  %35 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @misaligned_load(%struct.pt_regs* %35, i32 %36, i32 1, i32 1, i32 1)
  store i32 %37, i32* %5, align 4
  br label %155

38:                                               ; preds = %26
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @misaligned_load(%struct.pt_regs* %39, i32 %40, i32 1, i32 1, i32 0)
  store i32 %41, i32* %5, align 4
  br label %155

42:                                               ; preds = %26
  %43 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @misaligned_load(%struct.pt_regs* %43, i32 %44, i32 1, i32 2, i32 1)
  store i32 %45, i32* %5, align 4
  br label %155

46:                                               ; preds = %26
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @misaligned_load(%struct.pt_regs* %47, i32 %48, i32 1, i32 3, i32 0)
  store i32 %49, i32* %5, align 4
  br label %155

50:                                               ; preds = %26
  %51 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @misaligned_store(%struct.pt_regs* %51, i32 %52, i32 1, i32 1)
  store i32 %53, i32* %5, align 4
  br label %155

54:                                               ; preds = %26
  %55 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @misaligned_store(%struct.pt_regs* %55, i32 %56, i32 1, i32 2)
  store i32 %57, i32* %5, align 4
  br label %155

58:                                               ; preds = %26
  %59 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @misaligned_store(%struct.pt_regs* %59, i32 %60, i32 1, i32 3)
  store i32 %61, i32* %5, align 4
  br label %155

62:                                               ; preds = %26
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %80 [
    i32 1, label %64
    i32 5, label %68
    i32 2, label %72
    i32 3, label %76
  ]

64:                                               ; preds = %62
  %65 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @misaligned_load(%struct.pt_regs* %65, i32 %66, i32 0, i32 1, i32 1)
  store i32 %67, i32* %5, align 4
  br label %81

68:                                               ; preds = %62
  %69 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @misaligned_load(%struct.pt_regs* %69, i32 %70, i32 0, i32 1, i32 0)
  store i32 %71, i32* %5, align 4
  br label %81

72:                                               ; preds = %62
  %73 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @misaligned_load(%struct.pt_regs* %73, i32 %74, i32 0, i32 2, i32 1)
  store i32 %75, i32* %5, align 4
  br label %81

76:                                               ; preds = %62
  %77 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @misaligned_load(%struct.pt_regs* %77, i32 %78, i32 0, i32 3, i32 0)
  store i32 %79, i32* %5, align 4
  br label %81

80:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %76, %72, %68, %64
  br label %155

82:                                               ; preds = %26
  %83 = load i32, i32* %7, align 4
  switch i32 %83, label %96 [
    i32 1, label %84
    i32 2, label %88
    i32 3, label %92
  ]

84:                                               ; preds = %82
  %85 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @misaligned_store(%struct.pt_regs* %85, i32 %86, i32 0, i32 1)
  store i32 %87, i32* %5, align 4
  br label %97

88:                                               ; preds = %82
  %89 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @misaligned_store(%struct.pt_regs* %89, i32 %90, i32 0, i32 2)
  store i32 %91, i32* %5, align 4
  br label %97

92:                                               ; preds = %82
  %93 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @misaligned_store(%struct.pt_regs* %93, i32 %94, i32 0, i32 3)
  store i32 %95, i32* %5, align 4
  br label %97

96:                                               ; preds = %82
  store i32 -1, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %92, %88, %84
  br label %155

98:                                               ; preds = %26
  %99 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @misaligned_fpu_load(%struct.pt_regs* %99, i32 %100, i32 1, i32 2, i32 0)
  store i32 %101, i32* %5, align 4
  br label %155

102:                                              ; preds = %26
  %103 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @misaligned_fpu_load(%struct.pt_regs* %103, i32 %104, i32 1, i32 3, i32 1)
  store i32 %105, i32* %5, align 4
  br label %155

106:                                              ; preds = %26
  %107 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @misaligned_fpu_load(%struct.pt_regs* %107, i32 %108, i32 1, i32 3, i32 0)
  store i32 %109, i32* %5, align 4
  br label %155

110:                                              ; preds = %26
  %111 = load i32, i32* %7, align 4
  switch i32 %111, label %124 [
    i32 8, label %112
    i32 13, label %116
    i32 9, label %120
  ]

112:                                              ; preds = %110
  %113 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @misaligned_fpu_load(%struct.pt_regs* %113, i32 %114, i32 0, i32 2, i32 0)
  store i32 %115, i32* %5, align 4
  br label %125

116:                                              ; preds = %110
  %117 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @misaligned_fpu_load(%struct.pt_regs* %117, i32 %118, i32 0, i32 3, i32 1)
  store i32 %119, i32* %5, align 4
  br label %125

120:                                              ; preds = %110
  %121 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @misaligned_fpu_load(%struct.pt_regs* %121, i32 %122, i32 0, i32 3, i32 0)
  store i32 %123, i32* %5, align 4
  br label %125

124:                                              ; preds = %110
  store i32 -1, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %120, %116, %112
  br label %155

126:                                              ; preds = %26
  %127 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @misaligned_fpu_store(%struct.pt_regs* %127, i32 %128, i32 1, i32 2, i32 0)
  store i32 %129, i32* %5, align 4
  br label %155

130:                                              ; preds = %26
  %131 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @misaligned_fpu_store(%struct.pt_regs* %131, i32 %132, i32 1, i32 3, i32 1)
  store i32 %133, i32* %5, align 4
  br label %155

134:                                              ; preds = %26
  %135 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @misaligned_fpu_store(%struct.pt_regs* %135, i32 %136, i32 1, i32 3, i32 0)
  store i32 %137, i32* %5, align 4
  br label %155

138:                                              ; preds = %26
  %139 = load i32, i32* %7, align 4
  switch i32 %139, label %152 [
    i32 8, label %140
    i32 13, label %144
    i32 9, label %148
  ]

140:                                              ; preds = %138
  %141 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @misaligned_fpu_store(%struct.pt_regs* %141, i32 %142, i32 0, i32 2, i32 0)
  store i32 %143, i32* %5, align 4
  br label %153

144:                                              ; preds = %138
  %145 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @misaligned_fpu_store(%struct.pt_regs* %145, i32 %146, i32 0, i32 3, i32 1)
  store i32 %147, i32* %5, align 4
  br label %153

148:                                              ; preds = %138
  %149 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @misaligned_fpu_store(%struct.pt_regs* %149, i32 %150, i32 0, i32 3, i32 0)
  store i32 %151, i32* %5, align 4
  br label %153

152:                                              ; preds = %138
  store i32 -1, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %148, %144, %140
  br label %155

154:                                              ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %153, %134, %130, %126, %125, %106, %102, %98, %97, %81, %58, %54, %50, %46, %42, %38, %34
  %156 = load i32, i32* %5, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %2, align 4
  br label %165

160:                                              ; preds = %155
  %161 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %162 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 4
  store i32 %164, i32* %162, align 4
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %160, %158, %24, %14
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @unaligned_user_action(...) #1

declare dso_local i32 @read_opcode(i32, i32*, i32) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @misaligned_load(%struct.pt_regs*, i32, i32, i32, i32) #1

declare dso_local i32 @misaligned_store(%struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @misaligned_fpu_load(%struct.pt_regs*, i32, i32, i32, i32) #1

declare dso_local i32 @misaligned_fpu_store(%struct.pt_regs*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
