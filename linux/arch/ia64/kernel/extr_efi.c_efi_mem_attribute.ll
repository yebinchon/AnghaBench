; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_efi.c_efi_mem_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_efi.c_efi_mem_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EFI_MEMORY_RUNTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_mem_attribute(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call %struct.TYPE_4__* @efi_memory_descriptor(i64 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EFI_MEMORY_RUNTIME, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %49, %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = call i64 @efi_md_end(%struct.TYPE_4__* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %25
  %34 = load i64, i64* %9, align 8
  %35 = call %struct.TYPE_4__* @efi_memory_descriptor(i64 %34)
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %7, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EFI_MEMORY_RUNTIME, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38, %33
  store i32 0, i32* %3, align 4
  br label %53

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %25, label %52

52:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47, %31, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_4__* @efi_memory_descriptor(i64) #1

declare dso_local i64 @efi_md_end(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
