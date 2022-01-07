; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_module.c_patch_plt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_module.c_patch_plt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.plt_entry = type { i64* }
%struct.insn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, %struct.plt_entry*, i64, i64)* @patch_plt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_plt(%struct.module* %0, %struct.plt_entry* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.plt_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %6, align 8
  store %struct.plt_entry* %1, %struct.plt_entry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.module*, %struct.module** %6, align 8
  %11 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %12 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 2
  %17 = inttoptr i64 %16 to %struct.insn*
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @apply_imm64(%struct.module* %10, %struct.insn* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %4
  %22 = load %struct.module*, %struct.module** %6, align 8
  %23 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %24 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 2
  %29 = inttoptr i64 %28 to %struct.insn*
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %32 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %30, %37
  %39 = sdiv i64 %38, 16
  %40 = trunc i64 %39 to i32
  %41 = call i64 @apply_imm60(%struct.module* %22, %struct.insn* %29, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %45

44:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @apply_imm64(%struct.module*, %struct.insn*, i64) #1

declare dso_local i64 @apply_imm60(%struct.module*, %struct.insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
