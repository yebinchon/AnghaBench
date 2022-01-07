; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_alignment.c_do_32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_alignment.c_do_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.pt_regs*)* @do_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_32(i64 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @RA(i64 %15)
  %17 = call i64* @idx_to_addr(%struct.pt_regs* %14, i32 %16)
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %4, align 8
  %20 = lshr i64 %19, 25
  %21 = shl i64 %20, 1
  switch i64 %21, label %32 [
    i64 2, label %22
    i64 10, label %23
    i64 34, label %24
    i64 42, label %25
    i64 4, label %26
    i64 12, label %27
    i64 18, label %28
    i64 26, label %29
    i64 20, label %30
    i64 28, label %31
  ]

22:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

23:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

24:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %49

25:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %49

26:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

27:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

28:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

29:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

30:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

31:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, 255
  switch i64 %34, label %45 [
    i64 1, label %35
    i64 5, label %36
    i64 17, label %37
    i64 21, label %38
    i64 2, label %39
    i64 6, label %40
    i64 9, label %41
    i64 13, label %42
    i64 10, label %43
    i64 14, label %44
  ]

35:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

36:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

37:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %48

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %48

39:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

40:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

41:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

42:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

43:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

44:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %147

48:                                               ; preds = %44, %43, %42, %41, %40, %39, %38, %37, %36, %35
  br label %49

49:                                               ; preds = %48, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @IMM(i64 %53)
  %55 = call i32 @GET_IMMSVAL(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %13, align 8
  br label %68

59:                                               ; preds = %49
  %60 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @RB(i64 %61)
  %63 = call i64* @idx_to_addr(%struct.pt_regs* %60, i32 %62)
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @SV(i64 %65)
  %67 = shl i64 %64, %66
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %59, %52
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load i64, i64* %11, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @access_ok(i8* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @EACCES, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %147

87:                                               ; preds = %78
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @get_data(i64 %88, i64* %12, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @sign_extend(i64 %94, i32 %95)
  %97 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @RT(i64 %98)
  %100 = call i64* @idx_to_addr(%struct.pt_regs* %97, i32 %99)
  store i64 %96, i64* %100, align 8
  br label %107

101:                                              ; preds = %87
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %104 = load i64, i64* %4, align 8
  %105 = call i32 @RT(i64 %104)
  %106 = call i64* @idx_to_addr(%struct.pt_regs* %103, i32 %105)
  store i64 %102, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %93
  br label %128

108:                                              ; preds = %75
  %109 = load i64, i64* %11, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @access_ok(i8* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @EACCES, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %147

117:                                              ; preds = %108
  %118 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %119 = load i64, i64* %4, align 8
  %120 = call i32 @RT(i64 %119)
  %121 = call i64* @idx_to_addr(%struct.pt_regs* %118, i32 %120)
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %11, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = load i64, i64* %12, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @set_data(i8* %124, i64 %125, i32 %126)
  br label %128

128:                                              ; preds = %117, %107
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %13, align 8
  %134 = add i64 %132, %133
  %135 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %136 = load i64, i64* %4, align 8
  %137 = call i32 @RA(i64 %136)
  %138 = call i64* @idx_to_addr(%struct.pt_regs* %135, i32 %137)
  store i64 %134, i64* %138, align 8
  br label %139

139:                                              ; preds = %131, %128
  %140 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %141 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %141, align 4
  store i32 0, i32* %3, align 4
  br label %147

144:                                              ; No predecessors!
  %145 = load i32, i32* @EACCES, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %144, %139, %114, %84, %45
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64* @idx_to_addr(%struct.pt_regs*, i32) #1

declare dso_local i32 @RA(i64) #1

declare dso_local i32 @GET_IMMSVAL(i32) #1

declare dso_local i32 @IMM(i64) #1

declare dso_local i32 @RB(i64) #1

declare dso_local i64 @SV(i64) #1

declare dso_local i32 @access_ok(i8*, i32) #1

declare dso_local i32 @get_data(i64, i64*, i32) #1

declare dso_local i64 @sign_extend(i64, i32) #1

declare dso_local i32 @RT(i64) #1

declare dso_local i32 @set_data(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
