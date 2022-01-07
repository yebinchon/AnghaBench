; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cevt-r4k.c_c0_compare_int_usable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cevt-r4k.c_c0_compare_int_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPARE_INT_SEEN_TICKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c0_compare_int_usable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 (...) @c0_compare_int_pending()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  %7 = call i32 (...) @read_c0_count()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @write_c0_compare(i32 %8)
  %10 = call i32 (...) @back_to_back_c0_hazard()
  br label %11

11:                                               ; preds = %21, %6
  %12 = call i32 (...) @read_c0_count()
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @COMPARE_INT_SEEN_TICKS, align 4
  %15 = add i32 %13, %14
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = call i64 (...) @c0_compare_int_pending()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  br label %11

22:                                               ; preds = %20, %11
  %23 = call i64 (...) @c0_compare_int_pending()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %92

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %0
  store i32 16, i32* %2, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %2, align 4
  %30 = icmp ule i32 %29, 4194304
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = call i32 (...) @read_c0_count()
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @write_c0_compare(i32 %36)
  %38 = call i32 (...) @back_to_back_c0_hazard()
  %39 = call i32 (...) @read_c0_count()
  %40 = load i32, i32* %3, align 4
  %41 = sub i32 %39, %40
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %48

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %2, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %28

48:                                               ; preds = %43, %28
  br label %49

49:                                               ; preds = %54, %48
  %50 = call i32 (...) @read_c0_count()
  %51 = load i32, i32* %3, align 4
  %52 = sub i32 %50, %51
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %49

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %66, %55
  %57 = call i32 (...) @read_c0_count()
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @COMPARE_INT_SEEN_TICKS, align 4
  %60 = add i32 %58, %59
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = call i64 (...) @c0_compare_int_pending()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  br label %56

67:                                               ; preds = %65, %56
  %68 = call i64 (...) @c0_compare_int_pending()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 0, i32* %1, align 4
  br label %92

71:                                               ; preds = %67
  %72 = call i32 (...) @read_c0_count()
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @write_c0_compare(i32 %73)
  %75 = call i32 (...) @back_to_back_c0_hazard()
  br label %76

76:                                               ; preds = %86, %71
  %77 = call i32 (...) @read_c0_count()
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @COMPARE_INT_SEEN_TICKS, align 4
  %80 = add i32 %78, %79
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = call i64 (...) @c0_compare_int_pending()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %87

86:                                               ; preds = %82
  br label %76

87:                                               ; preds = %85, %76
  %88 = call i64 (...) @c0_compare_int_pending()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %1, align 4
  br label %92

91:                                               ; preds = %87
  store i32 1, i32* %1, align 4
  br label %92

92:                                               ; preds = %91, %90, %70, %25
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i64 @c0_compare_int_pending(...) #1

declare dso_local i32 @read_c0_count(...) #1

declare dso_local i32 @write_c0_compare(i32) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
