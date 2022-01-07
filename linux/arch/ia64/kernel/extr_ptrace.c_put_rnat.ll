; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_put_rnat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_put_rnat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.switch_stack = type { i64, i64 }
%struct.pt_regs = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.switch_stack*, i64*, i64*, i64, i64*)* @put_rnat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_rnat(%struct.task_struct* %0, %struct.switch_stack* %1, i64* %2, i64* %3, i64 %4, i64* %5) #0 {
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.switch_stack*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.pt_regs*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.switch_stack* %1, %struct.switch_stack** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* %5, i64** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %16, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %30 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %29)
  store %struct.pt_regs* %30, %struct.pt_regs** %26, align 8
  %31 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %32 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %19, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %26, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64* %38, i64** %20, align 8
  %39 = load i64*, i64** %12, align 8
  store i64* %39, i64** %28, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %26, align 8
  %41 = call i64 @in_syscall(%struct.pt_regs* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %6
  %44 = load %struct.pt_regs*, %struct.pt_regs** %26, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %27, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = load i64, i64* %27, align 8
  %49 = and i64 %48, 127
  %50 = sub i64 0, %49
  %51 = call i64* @ia64_rse_skip_regs(i64* %47, i64 %50)
  store i64* %51, i64** %28, align 8
  br label %52

52:                                               ; preds = %43, %6
  %53 = load i64*, i64** %28, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = icmp uge i64* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i64 63, i64* %25, align 8
  br label %68

57:                                               ; preds = %52
  %58 = load i64*, i64** %10, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 -63
  %60 = load i64*, i64** %28, align 8
  %61 = icmp uge i64* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %194

63:                                               ; preds = %57
  %64 = load i64*, i64** %10, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 -63
  %66 = load i64*, i64** %28, align 8
  %67 = call i64 @ia64_rse_num_regs(i64* %65, i64* %66)
  store i64 %67, i64* %25, align 8
  br label %68

68:                                               ; preds = %63, %56
  %69 = load i64, i64* %25, align 8
  %70 = call i64 @MASK(i64 %69)
  store i64 %70, i64* %17, align 8
  %71 = load i64*, i64** %20, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = call i64 @ia64_rse_num_regs(i64* %71, i64* %73)
  store i64 %74, i64* %24, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %24, align 8
  %77 = call i64* @ia64_rse_skip_regs(i64* %75, i64 %76)
  store i64* %77, i64** %15, align 8
  %78 = load i64*, i64** %15, align 8
  %79 = call i64 @ia64_rse_slot_num(i64* %78)
  store i64 %79, i64* %23, align 8
  %80 = load i64*, i64** %15, align 8
  %81 = call i64* @ia64_rse_rnat_addr(i64* %80)
  store i64* %81, i64** %22, align 8
  %82 = load i64*, i64** %22, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 -64
  store i64* %83, i64** %21, align 8
  %84 = load i64*, i64** %20, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 63
  %86 = load i64*, i64** %10, align 8
  %87 = icmp ugt i64* %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %68
  %89 = load i64*, i64** %20, align 8
  %90 = call i64 @ia64_rse_slot_num(i64* %89)
  %91 = call i64 @MASK(i64 %90)
  %92 = load i64, i64* %17, align 8
  %93 = and i64 %91, %92
  store i64 %93, i64* %16, align 8
  %94 = load %struct.pt_regs*, %struct.pt_regs** %26, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = xor i64 %97, -1
  %99 = and i64 %96, %98
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %16, align 8
  %102 = and i64 %100, %101
  %103 = or i64 %99, %102
  %104 = load %struct.pt_regs*, %struct.pt_regs** %26, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %16, align 8
  %107 = xor i64 %106, -1
  %108 = load i64, i64* %17, align 8
  %109 = and i64 %108, %107
  store i64 %109, i64* %17, align 8
  %110 = load i64, i64* %17, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %88
  br label %194

113:                                              ; preds = %88
  br label %114

114:                                              ; preds = %113, %68
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %23, align 8
  %117 = shl i64 %115, %116
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* %23, align 8
  %120 = shl i64 %118, %119
  store i64 %120, i64* %18, align 8
  %121 = load i64*, i64** %21, align 8
  %122 = load i64*, i64** %19, align 8
  %123 = icmp uge i64* %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %114
  %125 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %126 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %18, align 8
  %129 = xor i64 %128, -1
  %130 = and i64 %127, %129
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %18, align 8
  %133 = and i64 %131, %132
  %134 = or i64 %130, %133
  %135 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %136 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %153

137:                                              ; preds = %114
  %138 = load i64*, i64** %21, align 8
  %139 = load i64*, i64** %9, align 8
  %140 = icmp ugt i64* %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %137
  %142 = load i64*, i64** %21, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %18, align 8
  %145 = xor i64 %144, -1
  %146 = and i64 %143, %145
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %18, align 8
  %149 = and i64 %147, %148
  %150 = or i64 %146, %149
  %151 = load i64*, i64** %21, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %141, %137
  br label %153

153:                                              ; preds = %152, %124
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %23, align 8
  %156 = sub i64 63, %155
  %157 = lshr i64 %154, %156
  store i64 %157, i64* %14, align 8
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %23, align 8
  %160 = sub i64 63, %159
  %161 = lshr i64 %158, %160
  store i64 %161, i64* %18, align 8
  %162 = load i64*, i64** %22, align 8
  %163 = load i64*, i64** %19, align 8
  %164 = icmp uge i64* %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %153
  %166 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %167 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %18, align 8
  %170 = xor i64 %169, -1
  %171 = and i64 %168, %170
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %18, align 8
  %174 = and i64 %172, %173
  %175 = or i64 %171, %174
  %176 = load %struct.switch_stack*, %struct.switch_stack** %8, align 8
  %177 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %194

178:                                              ; preds = %153
  %179 = load i64*, i64** %22, align 8
  %180 = load i64*, i64** %9, align 8
  %181 = icmp ugt i64* %179, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %178
  %183 = load i64*, i64** %22, align 8
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %18, align 8
  %186 = xor i64 %185, -1
  %187 = and i64 %184, %186
  %188 = load i64, i64* %14, align 8
  %189 = load i64, i64* %18, align 8
  %190 = and i64 %188, %189
  %191 = or i64 %187, %190
  %192 = load i64*, i64** %22, align 8
  store i64 %191, i64* %192, align 8
  br label %193

193:                                              ; preds = %182, %178
  br label %194

194:                                              ; preds = %62, %112, %193, %165
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @in_syscall(%struct.pt_regs*) #1

declare dso_local i64* @ia64_rse_skip_regs(i64*, i64) #1

declare dso_local i64 @ia64_rse_num_regs(i64*, i64*) #1

declare dso_local i64 @MASK(i64) #1

declare dso_local i64 @ia64_rse_slot_num(i64*) #1

declare dso_local i64* @ia64_rse_rnat_addr(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
