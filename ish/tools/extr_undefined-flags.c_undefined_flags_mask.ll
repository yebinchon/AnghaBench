; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_undefined-flags.c_undefined_flags_mask.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_undefined-flags.c_undefined_flags_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_state = type { i32, i32 }
%struct.tlb = type { i32 }

@O = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@Z = common dso_local global i32 0, align 4
@P = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @undefined_flags_mask(%struct.cpu_state* %0, %struct.tlb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_state*, align 8
  %5 = alloca %struct.tlb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpu_state* %0, %struct.cpu_state** %4, align 8
  store %struct.tlb* %1, %struct.tlb** %5, align 8
  %11 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %12 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %138, %2
  %15 = load %struct.tlb*, %struct.tlb** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = call i32 (%struct.tlb*, i32, i32*, i64, ...) bitcast (i32 (...)* @tlb_read to i32 (%struct.tlb*, i32, i32*, i64, ...)*)(%struct.tlb* %15, i32 %16, i32* %7, i64 4)
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %139 [
    i32 15, label %20
    i32 105, label %75
    i32 107, label %75
    i32 192, label %83
    i32 193, label %83
    i32 208, label %83
    i32 209, label %83
    i32 210, label %83
    i32 211, label %83
    i32 246, label %114
    i32 247, label %114
    i32 102, label %138
  ]

20:                                               ; preds = %14
  %21 = load %struct.tlb*, %struct.tlb** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = call i32 (%struct.tlb*, i32, i32*, i64, ...) bitcast (i32 (...)* @tlb_read to i32 (%struct.tlb*, i32, i32*, i64, ...)*)(%struct.tlb* %21, i32 %22, i32* %7, i64 4)
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %74 [
    i32 164, label %26
    i32 165, label %26
    i32 172, label %26
    i32 173, label %26
    i32 175, label %56
    i32 189, label %64
    i32 188, label %64
  ]

26:                                               ; preds = %20, %20, %20, %20
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 173
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %33 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %40

35:                                               ; preds = %26
  %36 = load %struct.tlb*, %struct.tlb** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = call i32 (%struct.tlb*, i32, i32*, i64, ...) bitcast (i32 (...)* @tlb_read to i32 (%struct.tlb*, i32, i32*, i64, ...)*)(%struct.tlb* %36, i32 %37, i32* %8, i64 4)
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @O, align 4
  %45 = load i32, i32* @A, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %3, align 4
  br label %140

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @O, align 4
  %52 = load i32, i32* @A, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %3, align 4
  br label %140

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  br label %74

56:                                               ; preds = %20
  %57 = load i32, i32* @S, align 4
  %58 = load i32, i32* @Z, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @A, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @P, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %140

64:                                               ; preds = %20, %20
  %65 = load i32, i32* @O, align 4
  %66 = load i32, i32* @S, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @A, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @P, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @C, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %3, align 4
  br label %140

74:                                               ; preds = %20, %55
  br label %139

75:                                               ; preds = %14, %14
  %76 = load i32, i32* @S, align 4
  %77 = load i32, i32* @Z, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @A, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @P, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %3, align 4
  br label %140

83:                                               ; preds = %14, %14, %14, %14, %14, %14
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 208
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 209
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %83
  store i32 1, i32* %9, align 4
  br label %108

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 210
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 211
  br i1 %97, label %98, label %102

98:                                               ; preds = %95, %92
  %99 = load %struct.cpu_state*, %struct.cpu_state** %4, align 8
  %100 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  br label %107

102:                                              ; preds = %95
  %103 = load %struct.tlb*, %struct.tlb** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = call i32 (%struct.tlb*, i32, i32*, i64, ...) bitcast (i32 (...)* @tlb_read to i32 (%struct.tlb*, i32, i32*, i64, ...)*)(%struct.tlb* %103, i32 %104, i32* %9, i64 4)
  br label %107

107:                                              ; preds = %102, %98
  br label %108

108:                                              ; preds = %107, %91
  %109 = load i32, i32* %9, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @O, align 4
  store i32 %112, i32* %3, align 4
  br label %140

113:                                              ; preds = %108
  br label %139

114:                                              ; preds = %14, %14
  %115 = load %struct.tlb*, %struct.tlb** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  %118 = call i32 (%struct.tlb*, i32, i32*, i64, ...) bitcast (i32 (...)* @tlb_read to i32 (%struct.tlb*, i32, i32*, i64, ...)*)(%struct.tlb* %115, i32 %116, i32* %10, i64 4)
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @REG(i32 %119)
  switch i32 %120, label %137 [
    i32 4, label %121
    i32 5, label %129
  ]

121:                                              ; preds = %114
  %122 = load i32, i32* @S, align 4
  %123 = load i32, i32* @Z, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @A, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @P, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %3, align 4
  br label %140

129:                                              ; preds = %114
  %130 = load i32, i32* @S, align 4
  %131 = load i32, i32* @Z, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @A, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @P, align 4
  %136 = or i32 %134, %135
  store i32 %136, i32* %3, align 4
  br label %140

137:                                              ; preds = %114
  br label %139

138:                                              ; preds = %14
  br label %14

139:                                              ; preds = %14, %137, %113, %74
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %129, %121, %111, %75, %64, %56, %50, %43
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @tlb_read(...) #1

declare dso_local i32 @REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
