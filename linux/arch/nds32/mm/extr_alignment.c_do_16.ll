; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_alignment.c_do_16.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_alignment.c_do_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.pt_regs*)* @do_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_16(i64 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %4, align 8
  %18 = lshr i64 %17, 9
  %19 = and i64 %18, 63
  switch i64 %19, label %28 [
    i64 18, label %20
    i64 16, label %21
    i64 17, label %22
    i64 26, label %23
    i64 22, label %24
    i64 20, label %25
    i64 21, label %26
    i64 27, label %27
  ]

20:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %31

21:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %31

22:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %31

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 5, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %31

24:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %31

25:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %31

26:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %31

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 5, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %132

31:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @RA3(i64 %36)
  %38 = call i64* @idx_to_addr(%struct.pt_regs* %35, i64 %37)
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @RA3(i64 %40)
  store i64 %41, i64* %14, align 8
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @RA5(i64 %44)
  %46 = call i64* @idx_to_addr(%struct.pt_regs* %43, i64 %45)
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @RA5(i64 %48)
  store i64 %49, i64* %14, align 8
  br label %50

50:                                               ; preds = %42, %34
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @RT3(i64 %54)
  store i64 %55, i64* %15, align 8
  br label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @RT4(i64 %57)
  store i64 %58, i64* %15, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @IMM3U(i64 %63)
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %16, align 8
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load i64, i64* %12, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @access_ok(i8* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @EACCES, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %132

87:                                               ; preds = %78
  %88 = load i64, i64* %12, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @get_data(i64 %88, i64* %13, i32 %89)
  %91 = load i64, i64* %13, align 8
  %92 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %93 = load i64, i64* %15, align 8
  %94 = call i64* @idx_to_addr(%struct.pt_regs* %92, i64 %93)
  store i64 %91, i64* %94, align 8
  br label %114

95:                                               ; preds = %75
  %96 = load i64, i64* %12, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @access_ok(i8* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @EACCES, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %132

104:                                              ; preds = %95
  %105 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %106 = load i64, i64* %15, align 8
  %107 = call i64* @idx_to_addr(%struct.pt_regs* %105, i64 %106)
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* %12, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @set_data(i8* %110, i64 %111, i32 %112)
  br label %114

114:                                              ; preds = %104, %87
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %16, align 8
  %120 = add i64 %118, %119
  %121 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call i64* @idx_to_addr(%struct.pt_regs* %121, i64 %122)
  store i64 %120, i64* %123, align 8
  br label %124

124:                                              ; preds = %117, %114
  %125 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %126 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %126, align 4
  store i32 0, i32* %3, align 4
  br label %132

129:                                              ; No predecessors!
  %130 = load i32, i32* @EACCES, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %124, %101, %84, %28
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64* @idx_to_addr(%struct.pt_regs*, i64) #1

declare dso_local i64 @RA3(i64) #1

declare dso_local i64 @RA5(i64) #1

declare dso_local i64 @RT3(i64) #1

declare dso_local i64 @RT4(i64) #1

declare dso_local i32 @IMM3U(i64) #1

declare dso_local i32 @access_ok(i8*, i32) #1

declare dso_local i32 @get_data(i64, i64*, i32) #1

declare dso_local i32 @set_data(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
