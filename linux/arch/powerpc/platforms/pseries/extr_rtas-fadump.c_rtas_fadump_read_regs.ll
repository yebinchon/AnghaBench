; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_fadump_reg_entry = type { i32, i32 }
%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"CPUEND\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtas_fadump_reg_entry* (%struct.rtas_fadump_reg_entry*, %struct.pt_regs*)* @rtas_fadump_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtas_fadump_reg_entry* @rtas_fadump_read_regs(%struct.rtas_fadump_reg_entry* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.rtas_fadump_reg_entry*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  store %struct.rtas_fadump_reg_entry* %0, %struct.rtas_fadump_reg_entry** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %6 = call i32 @memset(%struct.pt_regs* %5, i32 0, i32 4)
  br label %7

7:                                                ; preds = %14, %2
  %8 = load %struct.rtas_fadump_reg_entry*, %struct.rtas_fadump_reg_entry** %3, align 8
  %9 = getelementptr inbounds %struct.rtas_fadump_reg_entry, %struct.rtas_fadump_reg_entry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be64_to_cpu(i32 %10)
  %12 = call i64 @fadump_str_to_u64(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = load %struct.rtas_fadump_reg_entry*, %struct.rtas_fadump_reg_entry** %3, align 8
  %17 = getelementptr inbounds %struct.rtas_fadump_reg_entry, %struct.rtas_fadump_reg_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @be64_to_cpu(i32 %18)
  %20 = load %struct.rtas_fadump_reg_entry*, %struct.rtas_fadump_reg_entry** %3, align 8
  %21 = getelementptr inbounds %struct.rtas_fadump_reg_entry, %struct.rtas_fadump_reg_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be64_to_cpu(i32 %22)
  %24 = call i32 @rtas_fadump_set_regval(%struct.pt_regs* %15, i64 %19, i64 %23)
  %25 = load %struct.rtas_fadump_reg_entry*, %struct.rtas_fadump_reg_entry** %3, align 8
  %26 = getelementptr inbounds %struct.rtas_fadump_reg_entry, %struct.rtas_fadump_reg_entry* %25, i32 1
  store %struct.rtas_fadump_reg_entry* %26, %struct.rtas_fadump_reg_entry** %3, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.rtas_fadump_reg_entry*, %struct.rtas_fadump_reg_entry** %3, align 8
  %29 = getelementptr inbounds %struct.rtas_fadump_reg_entry, %struct.rtas_fadump_reg_entry* %28, i32 1
  store %struct.rtas_fadump_reg_entry* %29, %struct.rtas_fadump_reg_entry** %3, align 8
  %30 = load %struct.rtas_fadump_reg_entry*, %struct.rtas_fadump_reg_entry** %3, align 8
  ret %struct.rtas_fadump_reg_entry* %30
}

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @fadump_str_to_u64(i8*) #1

declare dso_local i32 @rtas_fadump_set_regval(%struct.pt_regs*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
