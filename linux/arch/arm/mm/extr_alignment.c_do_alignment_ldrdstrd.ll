; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_ldrdstrd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_ldrdstrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@ai_dword = common dso_local global i32 0, align 4
@TYPE_LDST = common dso_local global i32 0, align 4
@TYPE_ERROR = common dso_local global i32 0, align 4
@TYPE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @do_alignment_ldrdstrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alignment_ldrdstrd(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @RD_BITS(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -33554432
  %20 = icmp eq i32 %19, -402653184
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 15
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @LDST_L_BIT(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  br label %47

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 14
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %31
  br label %154

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 240
  %42 = icmp eq i32 %41, 208
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32, i32* @ai_dword, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @ai_dword, align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %51 = call i64 @user_mode(%struct.pt_regs* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %101

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @get32_unaligned_check(i64 %58, i64 %59)
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %61, i64* %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 4
  %71 = call i32 @get32_unaligned_check(i64 %68, i64 %70)
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 %72, i64* %78, align 8
  br label %99

79:                                               ; preds = %54
  %80 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @put32_unaligned_check(i64 %86, i64 %87)
  %89 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %90 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = add i64 %96, 4
  %98 = call i32 @put32_unaligned_check(i64 %95, i64 %97)
  br label %99

99:                                               ; preds = %79, %57
  %100 = load i32, i32* @TYPE_LDST, align 4
  store i32 %100, i32* %4, align 4
  br label %158

101:                                              ; preds = %53
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %101
  %105 = call i32 (...) @uaccess_save_and_enable()
  store i32 %105, i32* %14, align 4
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @get32t_unaligned_check(i64 %106, i64 %107)
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %5, align 8
  %111 = add i64 %110, 4
  %112 = call i32 @get32t_unaligned_check(i64 %109, i64 %111)
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @uaccess_restore(i32 %113)
  %115 = load i64, i64* %12, align 8
  %116 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %115, i64* %121, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %124 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  store i64 %122, i64* %128, align 8
  br label %152

129:                                              ; preds = %101
  %130 = call i32 (...) @uaccess_save_and_enable()
  store i32 %130, i32* %15, align 4
  %131 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %5, align 8
  %139 = call i32 @put32t_unaligned_check(i64 %137, i64 %138)
  %140 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %141 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %5, align 8
  %148 = add i64 %147, 4
  %149 = call i32 @put32t_unaligned_check(i64 %146, i64 %148)
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @uaccess_restore(i32 %150)
  br label %152

152:                                              ; preds = %129, %104
  %153 = load i32, i32* @TYPE_LDST, align 4
  store i32 %153, i32* %4, align 4
  br label %158

154:                                              ; preds = %38
  %155 = load i32, i32* @TYPE_ERROR, align 4
  store i32 %155, i32* %4, align 4
  br label %158

156:                                              ; No predecessors!
  %157 = load i32, i32* @TYPE_FAULT, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %154, %152, %99
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @RD_BITS(i32) #1

declare dso_local i32 @LDST_L_BIT(i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @get32_unaligned_check(i64, i64) #1

declare dso_local i32 @put32_unaligned_check(i64, i64) #1

declare dso_local i32 @uaccess_save_and_enable(...) #1

declare dso_local i32 @get32t_unaligned_check(i64, i64) #1

declare dso_local i32 @uaccess_restore(i32) #1

declare dso_local i32 @put32t_unaligned_check(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
