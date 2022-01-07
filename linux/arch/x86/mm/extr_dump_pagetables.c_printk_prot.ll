; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_printk_prot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_printk_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@printk_prot.level_name = internal constant [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"cr3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pgd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"p4d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pud\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pmd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pte\00", align 1
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"                              \00", align 1
@_PAGE_USER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"USR \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@_PAGE_RW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"RW \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ro \00", align 1
@_PAGE_PWT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"PWT \00", align 1
@_PAGE_PCD = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"PCD \00", align 1
@_PAGE_PSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"PSE \00", align 1
@_PAGE_PAT = common dso_local global i32 0, align 4
@_PAGE_PAT_LARGE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"PAT \00", align 1
@_PAGE_GLOBAL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"GLB \00", align 1
@_PAGE_NX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"NX \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"x  \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, i32)* @printk_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printk_prot(%struct.seq_file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @pgprot_val(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @_PAGE_PRESENT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %17, i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %142

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @_PAGE_USER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %26, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %30, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @_PAGE_RW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %39, i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @_PAGE_PWT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %52, i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %59

55:                                               ; preds = %46
  %56 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %56, i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @_PAGE_PCD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %65, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %69, i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %7, align 4
  %74 = icmp sle i32 %73, 4
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @_PAGE_PSE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %81, i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %88

84:                                               ; preds = %75, %72
  %85 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %85, i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 5
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @_PAGE_PAT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91, %88
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %111

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @_PAGE_PAT_LARGE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102, %91
  %108 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %108, i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %115

111:                                              ; preds = %102, %99
  %112 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %112, i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @_PAGE_GLOBAL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %121, i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %128

124:                                              ; preds = %115
  %125 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %125, i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @_PAGE_NX, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %134, i32 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %141

137:                                              ; preds = %128
  %138 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %138, i32 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %133
  br label %142

142:                                              ; preds = %141, %16
  %143 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [6 x i8*], [6 x i8*]* @printk_prot.level_name, i64 0, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (%struct.seq_file*, i32, i8*, ...) @pt_dump_cont_printf(%struct.seq_file* %143, i32 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %148)
  ret void
}

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32 @pt_dump_cont_printf(%struct.seq_file*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
