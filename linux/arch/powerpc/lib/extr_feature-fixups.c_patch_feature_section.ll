; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_feature-fixups.c_patch_feature_section.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_feature-fixups.c_patch_feature_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixup_entry = type { i64, i64, i32, i32, i32, i32 }

@PPC_INST_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.fixup_entry*)* @patch_feature_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_feature_section(i64 %0, %struct.fixup_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.fixup_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.fixup_entry* %1, %struct.fixup_entry** %5, align 8
  %12 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %13 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %14 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @calc_addr(%struct.fixup_entry* %12, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %18 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %19 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @calc_addr(%struct.fixup_entry* %17, i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %23 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %24 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @calc_addr(%struct.fixup_entry* %22, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %28 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %29 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @calc_addr(%struct.fixup_entry* %27, i32 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = icmp sgt i64 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %91

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %49 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %47, %50
  %52 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %53 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %91

57:                                               ; preds = %46
  %58 = load i32*, i32** %8, align 8
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %6, align 8
  store i32* %59, i32** %11, align 8
  br label %60

60:                                               ; preds = %73, %57
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ult i32* %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @patch_alt_instruction(i32* %65, i32* %66, i32* %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %91

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %11, align 8
  br label %60

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %87, %78
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ult i32* %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* @PPC_INST_NOP, align 4
  %86 = call i32 @raw_patch_instruction(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %83
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %11, align 8
  br label %79

90:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %71, %56, %45
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32* @calc_addr(%struct.fixup_entry*, i32) #1

declare dso_local i64 @patch_alt_instruction(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @raw_patch_instruction(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
