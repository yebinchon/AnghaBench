; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_print_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_print_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"pstate: %08llx (%c%c%c%c %c %s %s %c%c%c)\0A\00", align 1
@PSR_AA32_N_BIT = common dso_local global i32 0, align 4
@PSR_AA32_Z_BIT = common dso_local global i32 0, align 4
@PSR_AA32_C_BIT = common dso_local global i32 0, align 4
@PSR_AA32_V_BIT = common dso_local global i32 0, align 4
@PSR_AA32_Q_BIT = common dso_local global i32 0, align 4
@PSR_AA32_T_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"T32\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"A32\00", align 1
@PSR_AA32_E_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"BE\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@PSR_AA32_A_BIT = common dso_local global i32 0, align 4
@PSR_AA32_I_BIT = common dso_local global i32 0, align 4
@PSR_AA32_F_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"pstate: %08llx (%c%c%c%c %c%c%c%c %cPAN %cUAO)\0A\00", align 1
@PSR_N_BIT = common dso_local global i32 0, align 4
@PSR_Z_BIT = common dso_local global i32 0, align 4
@PSR_C_BIT = common dso_local global i32 0, align 4
@PSR_V_BIT = common dso_local global i32 0, align 4
@PSR_D_BIT = common dso_local global i32 0, align 4
@PSR_A_BIT = common dso_local global i32 0, align 4
@PSR_I_BIT = common dso_local global i32 0, align 4
@PSR_F_BIT = common dso_local global i32 0, align 4
@PSR_PAN_BIT = common dso_local global i32 0, align 4
@PSR_UAO_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @print_pstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pstate(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i64 @compat_user_mode(%struct.pt_regs* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %78

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PSR_AA32_N_BIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 78, i32 110
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PSR_AA32_Z_BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 90, i32 122
  %25 = trunc i32 %24 to i8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PSR_AA32_C_BIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 67, i32 99
  %32 = trunc i32 %31 to i8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @PSR_AA32_V_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 86, i32 118
  %39 = trunc i32 %38 to i8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PSR_AA32_Q_BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 81, i32 113
  %46 = trunc i32 %45 to i8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @PSR_AA32_T_BIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @PSR_AA32_E_BIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PSR_AA32_A_BIT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 65, i32 97
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @PSR_AA32_I_BIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 73, i32 105
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @PSR_AA32_F_BIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 70, i32 102
  %77 = call i32 (i8*, i32, i8, i8, i8, i8, i8, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %11, i8 signext %18, i8 signext %25, i8 signext %32, i8 signext %39, i8 signext %46, i8* %52, i8* %58, i32 %64, i32 %70, i32 %76)
  br label %146

78:                                               ; preds = %1
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @PSR_N_BIT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 78, i32 110
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @PSR_Z_BIT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 90, i32 122
  %93 = trunc i32 %92 to i8
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @PSR_C_BIT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 67, i32 99
  %100 = trunc i32 %99 to i8
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @PSR_V_BIT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 86, i32 118
  %107 = trunc i32 %106 to i8
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @PSR_D_BIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 68, i32 100
  %114 = trunc i32 %113 to i8
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @PSR_A_BIT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 65, i32 97
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @PSR_I_BIT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 73, i32 105
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @PSR_F_BIT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 70, i32 102
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @PSR_PAN_BIT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 43, i32 45
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @PSR_UAO_BIT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 43, i32 45
  %145 = call i32 (i8*, i32, i8, i8, i8, i8, i8, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %79, i8 signext %86, i8 signext %93, i8 signext %100, i8 signext %107, i8 signext %114, i32 %120, i32 %126, i32 %132, i32 %138, i32 %144)
  br label %146

146:                                              ; preds = %78, %10
  ret void
}

declare dso_local i64 @compat_user_mode(%struct.pt_regs*) #1

declare dso_local i32 @printk(i8*, i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
