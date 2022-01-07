; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module-plts.c_plt_entries_equal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module-plts.c_plt_entries_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plt_entry = type { i64, i64, i64 }

@SZ_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plt_entries_equal(%struct.plt_entry* %0, %struct.plt_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.plt_entry*, align 8
  %5 = alloca %struct.plt_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.plt_entry* %0, %struct.plt_entry** %4, align 8
  store %struct.plt_entry* %1, %struct.plt_entry** %5, align 8
  %8 = load %struct.plt_entry*, %struct.plt_entry** %4, align 8
  %9 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %12 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.plt_entry*, %struct.plt_entry** %4, align 8
  %17 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %20 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %62

24:                                               ; preds = %15
  %25 = load %struct.plt_entry*, %struct.plt_entry** %4, align 8
  %26 = ptrtoint %struct.plt_entry* %25 to i64
  %27 = load i32, i32* @SZ_4K, align 4
  %28 = call i64 @ALIGN_DOWN(i64 %26, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %30 = ptrtoint %struct.plt_entry* %29 to i64
  %31 = load i32, i32* @SZ_4K, align 4
  %32 = call i64 @ALIGN_DOWN(i64 %30, i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.plt_entry*, %struct.plt_entry** %4, align 8
  %34 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %37 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %62

45:                                               ; preds = %40, %24
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.plt_entry*, %struct.plt_entry** %4, align 8
  %48 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @le32_to_cpu(i64 %49)
  %51 = call i64 @aarch64_insn_adrp_get_offset(i32 %50)
  %52 = add nsw i64 %46, %51
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.plt_entry*, %struct.plt_entry** %5, align 8
  %55 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @le32_to_cpu(i64 %56)
  %58 = call i64 @aarch64_insn_adrp_get_offset(i32 %57)
  %59 = add nsw i64 %53, %58
  %60 = icmp eq i64 %52, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %45, %44, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @ALIGN_DOWN(i64, i32) #1

declare dso_local i64 @aarch64_insn_adrp_get_offset(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
