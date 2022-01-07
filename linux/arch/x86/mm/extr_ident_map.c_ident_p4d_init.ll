; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_ident_map.c_ident_p4d_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_ident_map.c_ident_p4d_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_mapping_info = type { i32, i32, i64 (i32)* }

@P4D_MASK = common dso_local global i64 0, align 8
@P4D_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_mapping_info*, i32*, i64, i64)* @ident_p4d_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ident_p4d_init(%struct.x86_mapping_info* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x86_mapping_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.x86_mapping_info* %0, %struct.x86_mapping_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  br label %13

13:                                               ; preds = %75, %4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @p4d_index(i64 %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32* %22, i32** %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @P4D_MASK, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* @P4D_SIZE, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %31, %17
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @p4d_present(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @pud_offset(i32* %39, i32 0)
  store i32* %40, i32** %12, align 8
  %41 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @ident_pud_init(%struct.x86_mapping_info* %41, i32* %42, i64 %43, i64 %44)
  br label %75

46:                                               ; preds = %33
  %47 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %48 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %47, i32 0, i32 2
  %49 = load i64 (i32)*, i64 (i32)** %48, align 8
  %50 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %51 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 %49(i32 %52)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %78

60:                                               ; preds = %46
  %61 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @ident_pud_init(%struct.x86_mapping_info* %61, i32* %62, i64 %63, i64 %64)
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @__pa(i32* %67)
  %69 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %70 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %68, %71
  %73 = call i32 @__p4d(i32 %72)
  %74 = call i32 @set_p4d(i32* %66, i32 %73)
  br label %75

75:                                               ; preds = %60, %38
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %8, align 8
  br label %13

77:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @p4d_index(i64) #1

declare dso_local i64 @p4d_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i32) #1

declare dso_local i32 @ident_pud_init(%struct.x86_mapping_info*, i32*, i64, i64) #1

declare dso_local i32 @set_p4d(i32*, i32) #1

declare dso_local i32 @__p4d(i32) #1

declare dso_local i32 @__pa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
