; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_static_protections.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_static_protections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_PRESENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Text NX\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Text RO\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PCIBIOS NX\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Rodata RO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64, i32)* @static_protections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @static_protections(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @pgprot_val(i32 %17)
  %19 = load i32, i32* @_PAGE_PRESENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %7, align 4
  br label %106

24:                                               ; preds = %6
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = mul i64 %26, %27
  %29 = add i64 %25, %28
  %30 = sub i64 %29, 1
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %16, align 8
  %33 = call i32 @protect_kernel_text(i64 %31, i64 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @check_conflict(i32 %34, i32 %35, i32 %36, i64 %37, i64 %38, i64 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = mul i64 %43, %44
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %24
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %12, align 8
  %50 = sub i64 %49, 1
  %51 = and i64 %48, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %47, %24
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @protect_kernel_text_ro(i64 %54, i64 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @check_conflict(i32 %57, i32 %58, i32 %59, i64 %60, i64 %61, i64 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %53, %47
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %69, %70
  %72 = sub i64 %71, 1
  %73 = call i32 @protect_pci_bios(i64 %68, i64 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @check_conflict(i32 %74, i32 %75, i32 %76, i64 %77, i64 %78, i64 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %85, %86
  %88 = sub i64 %87, 1
  %89 = call i32 @protect_rodata(i64 %84, i64 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @check_conflict(i32 %90, i32 %91, i32 %92, i64 %93, i64 %94, i64 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %14, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @pgprot_val(i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = call i32 @__pgprot(i32 %104)
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %67, %22
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32 @protect_kernel_text(i64, i64) #1

declare dso_local i32 @check_conflict(i32, i32, i32, i64, i64, i64, i8*) #1

declare dso_local i32 @protect_kernel_text_ro(i64, i64) #1

declare dso_local i32 @protect_pci_bios(i64, i64) #1

declare dso_local i32 @protect_rodata(i64, i64) #1

declare dso_local i32 @__pgprot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
