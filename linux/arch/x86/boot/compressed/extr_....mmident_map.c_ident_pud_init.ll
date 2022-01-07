; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_....mmident_map.c_ident_pud_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_....mmident_map.c_ident_pud_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_mapping_info = type { i64, i64, i64, i32, i64 (i32)*, i64 }

@PUD_MASK = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_mapping_info*, i32*, i64, i64)* @ident_pud_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ident_pud_init(%struct.x86_mapping_info* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x86_mapping_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.x86_mapping_info* %0, %struct.x86_mapping_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  br label %14

14:                                               ; preds = %104, %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %106

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @pud_index(i64 %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32* %23, i32** %11, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @PUD_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* @PUD_SIZE, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %32, %18
  %35 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %36 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @pud_present(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %104

45:                                               ; preds = %39
  %46 = load i64, i64* @PUD_MASK, align 8
  %47 = load i64, i64* %8, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %51 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  %54 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %55 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %53, %56
  %58 = call i32 @__pud(i64 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @set_pud(i32* %59, i32 %60)
  br label %104

62:                                               ; preds = %34
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @pud_present(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i32*, i32** %11, align 8
  %69 = call i32* @pmd_offset(i32* %68, i32 0)
  store i32* %69, i32** %12, align 8
  %70 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @ident_pmd_init(%struct.x86_mapping_info* %70, i32* %71, i64 %72, i64 %73)
  br label %104

75:                                               ; preds = %62
  %76 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %77 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %76, i32 0, i32 4
  %78 = load i64 (i32)*, i64 (i32)** %77, align 8
  %79 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %80 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i64 %78(i32 %81)
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %75
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %107

89:                                               ; preds = %75
  %90 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @ident_pmd_init(%struct.x86_mapping_info* %90, i32* %91, i64 %92, i64 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i64 @__pa(i32* %96)
  %98 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %99 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %97, %100
  %102 = call i32 @__pud(i64 %101)
  %103 = call i32 @set_pud(i32* %95, i32 %102)
  br label %104

104:                                              ; preds = %89, %67, %45, %44
  %105 = load i64, i64* %10, align 8
  store i64 %105, i64* %8, align 8
  br label %14

106:                                              ; preds = %14
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %86
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @pud_index(i64) #1

declare dso_local i64 @pud_present(i32) #1

declare dso_local i32 @__pud(i64) #1

declare dso_local i32 @set_pud(i32*, i32) #1

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i32 @ident_pmd_init(%struct.x86_mapping_info*, i32*, i64, i64) #1

declare dso_local i64 @__pa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
