; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_save_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_save_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.tpm_space }
%struct.tpm_space = type { i32*, i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @tpm2_save_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_save_space(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %9 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %8, i32 0, i32 0
  store %struct.tpm_space* %9, %struct.tpm_space** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %84, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %13 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %10
  %18 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %19 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %28 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26, %17
  br label %84

37:                                               ; preds = %26
  %38 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %39 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %40 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %47 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = call i32 @tpm2_save_context(%struct.tpm_chip* %38, i32 %45, i32 %48, i32 %49, i32* %5)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %37
  %56 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %57 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 0, i32* %61, align 4
  br label %84

62:                                               ; preds = %37
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %143

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %70 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %71 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @tpm2_flush_context(%struct.tpm_chip* %69, i32 %76)
  %78 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %79 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 -1, i32* %83, align 4
  br label %84

84:                                               ; preds = %68, %55, %36
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %10

87:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %139, %87
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %91 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @ARRAY_SIZE(i32* %92)
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %88
  %96 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %97 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  br label %139

105:                                              ; preds = %95
  %106 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %107 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %108 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %115 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = call i32 @tpm2_save_context(%struct.tpm_chip* %106, i32 %113, i32 %116, i32 %117, i32* %5)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @ENOENT, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %105
  %124 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %125 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 0, i32* %129, align 4
  br label %138

130:                                              ; preds = %105
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %135 = call i32 @tpm2_flush_space(%struct.tpm_chip* %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %2, align 4
  br label %143

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %123
  br label %139

139:                                              ; preds = %138, %104
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %88

142:                                              ; preds = %88
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %133, %65
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @tpm2_save_context(%struct.tpm_chip*, i32, i32, i32, i32*) #1

declare dso_local i32 @tpm2_flush_context(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm2_flush_space(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
