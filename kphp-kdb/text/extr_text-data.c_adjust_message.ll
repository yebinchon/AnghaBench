; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_all_events = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adjust_message(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %31

19:                                               ; preds = %16, %5
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 65535
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 65535
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %19, %16
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @conv_uid(i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %31
  store i32 -1, i32* %6, align 4
  br label %104

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @adjust_message_intermediate(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %51
  %55 = load i64, i64* @write_all_events, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %102

57:                                               ; preds = %54, %47, %39
  %58 = load i32, i32* %7, align 4
  %59 = call i32* @get_user_f(i32 %58)
  store i32* %59, i32** %13, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @update_history_persistent(i32* %63, i32 %64, i32 0, i32 0)
  br label %101

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %67, %68
  %70 = icmp eq i32 %69, 65535
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @update_history_persistent(i32* %72, i32 %73, i32 %74, i32 1)
  br label %100

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @update_history_persistent(i32* %85, i32 %86, i32 %87, i32 3)
  br label %99

89:                                               ; preds = %76
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @update_history_persistent(i32* %95, i32 %96, i32 %97, i32 2)
  br label %99

99:                                               ; preds = %89, %79
  br label %100

100:                                              ; preds = %99, %71
  br label %101

101:                                              ; preds = %100, %62
  br label %102

102:                                              ; preds = %101, %54, %51
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %38
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @adjust_message_intermediate(i32, i32, i32, i32) #1

declare dso_local i32* @get_user_f(i32) #1

declare dso_local i32 @update_history_persistent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
