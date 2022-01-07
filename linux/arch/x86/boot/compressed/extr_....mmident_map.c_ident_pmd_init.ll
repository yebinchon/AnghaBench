; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_....mmident_map.c_ident_pmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_....mmident_map.c_ident_pmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_mapping_info = type { i64, i64 }

@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86_mapping_info*, i32*, i64, i64)* @ident_pmd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ident_pmd_init(%struct.x86_mapping_info* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.x86_mapping_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.x86_mapping_info* %0, %struct.x86_mapping_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* @PMD_MASK, align 8
  %11 = load i64, i64* %7, align 8
  %12 = and i64 %11, %10
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %41, %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @pmd_index(i64 %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @pmd_present(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %41

28:                                               ; preds = %17
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %5, align 8
  %32 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  %35 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %5, align 8
  %36 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %34, %37
  %39 = call i32 @__pmd(i64 %38)
  %40 = call i32 @set_pmd(i32* %29, i32 %39)
  br label %41

41:                                               ; preds = %28, %27
  %42 = load i64, i64* @PMD_SIZE, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %13

45:                                               ; preds = %13
  ret void
}

declare dso_local i32 @pmd_index(i64) #1

declare dso_local i64 @pmd_present(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @__pmd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
