; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_gen.c_gen_end.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_gen.c_gen_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_state = type { i64*, i64, i64, %struct.jit_block* }
%struct.jit_block = type { i64**, i64*, i64*, i64, i64, i32, i32*, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_end(%struct.gen_state* %0) #0 {
  %2 = alloca %struct.gen_state*, align 8
  %3 = alloca %struct.jit_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gen_state* %0, %struct.gen_state** %2, align 8
  %6 = load %struct.gen_state*, %struct.gen_state** %2, align 8
  %7 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %6, i32 0, i32 3
  %8 = load %struct.jit_block*, %struct.jit_block** %7, align 8
  store %struct.jit_block* %8, %struct.jit_block** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %75, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %78

12:                                               ; preds = %9
  %13 = load %struct.gen_state*, %struct.gen_state** %2, align 8
  %14 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %12
  %22 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %23 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.gen_state*, %struct.gen_state** %2, align 8
  %26 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %24, i64 %31
  %33 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %34 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %33, i32 0, i32 0
  %35 = load i64**, i64*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64*, i64** %35, i64 %37
  store i64* %32, i64** %38, align 8
  %39 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %40 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %39, i32 0, i32 0
  %41 = load i64**, i64*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %48 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %46, i64* %52, align 8
  br label %60

53:                                               ; preds = %12
  %54 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %55 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %54, i32 0, i32 0
  %56 = load i64**, i64*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  store i64* null, i64** %59, align 8
  br label %60

60:                                               ; preds = %53, %21
  %61 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %62 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %61, i32 0, i32 9
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @list_init(i32* %66)
  %68 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %69 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @list_init(i32* %73)
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %9

78:                                               ; preds = %9
  %79 = load %struct.gen_state*, %struct.gen_state** %2, align 8
  %80 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %85 = ptrtoint %struct.jit_block* %84 to i64
  %86 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %87 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.gen_state*, %struct.gen_state** %2, align 8
  %90 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  store i64 %85, i64* %92, align 8
  br label %93

93:                                               ; preds = %83, %78
  %94 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %95 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.gen_state*, %struct.gen_state** %2, align 8
  %98 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.gen_state*, %struct.gen_state** %2, align 8
  %103 = getelementptr inbounds %struct.gen_state, %struct.gen_state* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 1
  %106 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %107 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  br label %114

108:                                              ; preds = %93
  %109 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %110 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %113 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %116 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %115, i32 0, i32 7
  %117 = call i32 @list_init(i32* %116)
  %118 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %119 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %118, i32 0, i32 5
  store i32 0, i32* %119, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %131, %114
  %121 = load i32, i32* %5, align 4
  %122 = icmp sle i32 %121, 1
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load %struct.jit_block*, %struct.jit_block** %3, align 8
  %125 = getelementptr inbounds %struct.jit_block, %struct.jit_block* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i32 @list_init(i32* %129)
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %120

134:                                              ; preds = %120
  ret void
}

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
