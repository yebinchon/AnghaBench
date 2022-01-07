; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_write_char_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_write_char_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_char_utf8(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %68

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = trunc i32 %10 to i8
  %12 = call i32 @write_buff_char(i8 signext %11)
  br label %68

13:                                               ; preds = %6
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 2048
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 6
  %19 = add nsw i32 192, %18
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 63
  %23 = add nsw i32 128, %22
  %24 = trunc i32 %23 to i8
  %25 = call i32 @write_buff_char_2(i8 signext %20, i8 signext %24)
  br label %68

26:                                               ; preds = %13
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 65536
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = ashr i32 %30, 12
  %32 = add nsw i32 224, %31
  %33 = load i32, i32* %2, align 4
  %34 = ashr i32 %33, 6
  %35 = and i32 %34, 63
  %36 = add nsw i32 128, %35
  %37 = load i32, i32* %2, align 4
  %38 = and i32 %37, 63
  %39 = add nsw i32 128, %38
  %40 = call i32 @write_buff_char_3(i32 %32, i32 %36, i32 %39)
  br label %68

41:                                               ; preds = %26
  %42 = load i32, i32* %2, align 4
  %43 = icmp sge i32 %42, 126976
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = icmp sle i32 %45, 128704
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = ashr i32 %48, 18
  %50 = add nsw i32 240, %49
  %51 = load i32, i32* %2, align 4
  %52 = ashr i32 %51, 12
  %53 = and i32 %52, 63
  %54 = add nsw i32 128, %53
  %55 = load i32, i32* %2, align 4
  %56 = ashr i32 %55, 6
  %57 = and i32 %56, 63
  %58 = add nsw i32 128, %57
  %59 = load i32, i32* %2, align 4
  %60 = and i32 %59, 63
  %61 = add nsw i32 128, %60
  %62 = call i32 @write_buff_char_4(i32 %50, i32 %54, i32 %58, i32 %61)
  br label %68

63:                                               ; preds = %44, %41
  %64 = call i32 @write_buff_char_2(i8 signext 36, i8 signext 35)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @write_buff_long(i32 %65)
  %67 = call i32 @write_buff_char(i8 signext 59)
  br label %68

68:                                               ; preds = %63, %47, %29, %16, %9, %5
  ret void
}

declare dso_local i32 @write_buff_char(i8 signext) #1

declare dso_local i32 @write_buff_char_2(i8 signext, i8 signext) #1

declare dso_local i32 @write_buff_char_3(i32, i32, i32) #1

declare dso_local i32 @write_buff_char_4(i32, i32, i32, i32) #1

declare dso_local i32 @write_buff_long(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
